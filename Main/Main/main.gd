extends Node


const PORT = 65124
var enet_peer = ENetMultiplayerPeer.new()
var httpserver = HttpServer.new()
#var server_pop = int(OS.get_environment("pop"));
#var server_ip = "";
#var isPVP = bool(int(OS.get_environment("pvp")));
#var server_name = str(OS.get_environment("name"));
#var server_description = str(OS.get_environment("desc"));

var server_pop = 50;
var server_ip = "";
var isPVP = false;
var server_name = "official";
var server_description = "fun";

var connected_peer_ids = []

var server_data = {}
var world = {}
var terrain = {}

var game_state: GameState

func _ready():
	randomize()
	server_ip = IP.resolve_hostname(str(OS.get_environment("HOSTNAME")),1)
	print(isPVP)
	print(server_pop)
	print(server_ip)
	print(server_name)
	print(server_description)
	if GameState.save_exists(): # Load world
		game_state = GameState.new()
		game_state.load_state()
		terrain = game_state.terrain
		world = game_state.world
		server_data = game_state.server_data
		start_server()
	else:
		GenerateNewWorld.build()
	enet_peer.peer_connected.connect(
		func(new_peer_id):
			if(connected_peer_ids.size() < server_pop):
				print("PLAYER  " + str(new_peer_id) + " CONNECTED")
				connected_peer_ids.append(new_peer_id)
				await get_tree().create_timer(2.0).timeout
				add_player_character(new_peer_id)
				await get_tree().create_timer(1.0).timeout
				rpc_id(new_peer_id,"send_server_data",{"server_data":server_data})
	)
	enet_peer.peer_disconnected.connect(
		func(peer_id):
			print("PLAYER  " + str(peer_id) + " DISCONNECTED")
			await get_tree().create_timer(1.0).timeout
			#var i = connected_peer_ids.find(peer_id)
			#connected_peer_ids.remove(i)
			remove_player_character(peer_id)
	)

@rpc("call_remote")
func send_server_data(data): pass

func start_server():
	enet_peer.create_server(PORT)
	multiplayer.multiplayer_peer = enet_peer
	httpserver.register_router("/getData", HttpManager.new(terrain))
	add_child(httpserver)
	httpserver.start()
	$Time/Timer.start()
#	await get_tree().create_timer(1.0).timeout
	set_navigation_tiles()


func add_player_character(peer_id):
	var player_character = load("res://Main/Player/player_character.tscn").instantiate()
	player_character.set_multiplayer_authority(peer_id)
	$Players.add_child(player_character,true)
	Constants.player = player_character

func remove_player_character(peer_id):
	$Players.get_node(str(peer_id)).queue_free()

func add_mobs():
	print("ADDING MOBS")
	var locations = terrain.plains + terrain.forest + terrain.snow + terrain.dirt + terrain.desert
	var NUM_DUCKS = int(locations.size() / 600)
	print("NUM DUCKS " + str(NUM_DUCKS))
	for _i in range(NUM_DUCKS*2):
		var index = randi_range(0, locations.size() - 1)
		var location = locations[index]
		var duck = load("res://Main/Mobs/duck.tscn").instantiate()
		duck.health = Stats.BUNNY_HEALTH
		duck.global_position = Vector2(location)*Vector2(16,16)
		$Mobs.add_child(duck,true)
	for _i in range(NUM_DUCKS*2):
		var index = randi_range(0, locations.size() - 1)
		var location = locations[index]
		var bunny = load("res://Main/Mobs/bunny.tscn").instantiate()
		bunny.health = Stats.BUNNY_HEALTH
		bunny.global_position = Vector2(location)*Vector2(16,16)
		$Mobs.add_child(bunny,true)


func set_navigation_tiles():
	print("start nav")
	for x in range(100):
		for y in range(100):
		#	if x % 25 != 0 and y % 25 != 0:
#			dif not terrain.deep_ocean.has(Vector2i(x,y)):
			$NavigationTiles.set_cell(0,Vector2(x,y),0,Vector2i(0,0))
	print("NAV TILES " + str($NavigationTiles.get_used_cells(0).size()))
	print("here")
	for loc in terrain.deep_ocean:
		$NavigationTiles.erase_cell(0,loc)
	print("NAV TILES " + str($NavigationTiles.get_used_cells(0).size()))
	print("here2")
	for chunk in world:
		var map = world[chunk]
		for id in map["tree"]:
			var loc = map["tree"][id]["l"]
			PlaceObject.place_tree_stump_node(id,loc)
			remove_nav_tiles(Vector2i(loc)+Vector2i(-1,0), Vector2i(2,2))
		for id in map["stump"]:
			var loc = map["stump"][id]["l"]
			PlaceObject.place_tree_stump_node(id,loc)
			remove_nav_tiles(Vector2i(loc)+Vector2i(-1,0), Vector2i(2,2))
		for id in map["log"]:
			var loc = map["log"][id]["l"]
			remove_nav_tiles(Vector2i(loc))
			PlaceObject.place_log_node(id,loc)
		for id in map["ore_large"]:
			var loc = map["ore_large"][id]["l"]
			remove_nav_tiles(Vector2i(loc)+Vector2i(-1,0), Vector2i(2,2))
			PlaceObject.place_large_ore_node(id,loc)
		for id in map["ore"]:
			var loc = map["ore"][id]["l"]
			remove_nav_tiles(Vector2i(loc))
			PlaceObject.place_small_ore_node(id,loc)
	print("NAV TILES " + str($NavigationTiles.get_used_cells(0).size()))
	print("here3")
	add_mobs()

func remove_nav_tiles(location, dimensions = Vector2i(1,1)):
	location = Vector2i(location.x,location.y)
	for x in range(dimensions.x):
		for y in range(dimensions.y):
			$NavigationTiles.erase_cell(0,location+Vector2i(x,-y))



@rpc ("call_local", "any_peer", "unreliable")
func send_message(data): 
	rpc("receive_message",data)
	
@rpc
func receive_message(data): pass

