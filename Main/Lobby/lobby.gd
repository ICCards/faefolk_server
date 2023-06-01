extends Node


const PORT = 65124
var enet_peer = ENetMultiplayerPeer.new()
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
#		terrain = game_state.terrain
#		world = game_state.world
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
	$Time/Timer.start()


func add_player_character(peer_id):
	var player_character = load("res://Main/Player/player_character.tscn").instantiate()
	player_character.set_multiplayer_authority(peer_id)
	$Players.add_child(player_character,true)
	Constants.player = player_character

func remove_player_character(peer_id):
	$Players.get_node(str(peer_id)).queue_free()








