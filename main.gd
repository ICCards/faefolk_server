extends Node


const PORT = 9999
var enet_peer = ENetMultiplayerPeer.new()

var connected_peer_ids = []

var server_data = {}
var world = {}

var game_state: GameState


func _ready():
	if GameState.save_exists(): # Load world
		game_state = GameState.new()
		game_state.load_state()
		world = game_state.world
		server_data = game_state.server_data
		start_server()
	else:
		GenerateNewWorld.build()
	enet_peer.peer_connected.connect(
		func(new_peer_id):
			print("PLAYER  " + str(new_peer_id) + " CONNECTED")
			await get_tree().create_timer(2.0).timeout
			add_player_character(new_peer_id)
			await get_tree().create_timer(1.0).timeout
			rpc_id(new_peer_id,"send_world_data",{"world":world,"server_data":server_data})
	)
	enet_peer.peer_disconnected.connect(
		func(peer_id):
			print("PLAYER  " + str(peer_id) + " DISCONNECTED")
			await get_tree().create_timer(1.0).timeout
			remove_player_character(peer_id)
	)
	await get_tree().create_timer(2.0).timeout
#	set_navigation_tiles()

func start_server():
	enet_peer.create_server(PORT)
	multiplayer.multiplayer_peer = enet_peer
	$Time/Timer.start()


@rpc("call_remote")
func send_world_data(world):pass

func add_player_character(peer_id):
	connected_peer_ids.append(peer_id)
	var player_character = load("res://player_character.tscn").instantiate()
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

