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
	)
	enet_peer.peer_disconnected.connect(
		func(peer_id):
			print("PLAYER  " + str(peer_id) + " DISCONNECTED")
			await get_tree().create_timer(1.0).timeout
			#var i = connected_peer_ids.find(peer_id)
			#connected_peer_ids.remove(i)
			remove_player_character(peer_id)
	)
	await get_tree().create_timer(2.0).timeout
#	set_navigation_tiles()

func start_server():
	enet_peer.create_server(PORT)
	multiplayer.multiplayer_peer = enet_peer
	httpserver.register_router("/getData", HttpManager.new(world,terrain,server_data))
	add_child(httpserver)
	httpserver.start()
	$Time/Timer.start()

func add_player_character(peer_id):
	var player_character = load("res://Main/Player/player_character.tscn").instantiate()
	player_character.set_multiplayer_authority(peer_id)
	$Players.add_child(player_character)
	Constants.player = player_character
	
func remove_player_character(peer_id):
	$Players.get_node(str(peer_id)).queue_free()

func add_mob():
	var mob = load("res://World/Mobs/bear.tscn").instantiate()
	$Mobs.add_child(mob)


func set_navigation_tiles():
	for x in range(250):
		for y in range(250):
			$NavigationTiles.set_cell(0,Vector2i(x,y),0,Vector2i(0,0),0)
	await get_tree().create_timer(1.0).timeout
	for x in range(250):
		for y in range(250):
			$NavigationTiles.set_cell(0,Vector2i(x,y)+Vector2i(250,0),0,Vector2i(0,0),0)
	await get_tree().create_timer(1.0).timeout
	for x in range(250):
		for y in range(250):
			$NavigationTiles.set_cell(0,Vector2i(x,y)+Vector2i(250,250),0,Vector2i(0,0),0)
	await get_tree().create_timer(1.0).timeout
	for x in range(250):
		for y in range(250):
			$NavigationTiles.set_cell(0,Vector2i(x,y)+Vector2i(0,250),0,Vector2i(0,0),0)
	print("FINSIHED")
			#await get_tree().process_frame


@rpc ("call_local", "any_peer", "unreliable")
func send_message(data): 
	rpc("receive_message",data)
	
@rpc
func receive_message(data): pass

