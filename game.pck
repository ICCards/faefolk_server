GDPC                 �                                                                      *   \   res://.godot/exported/133200997/export-12fdf63175bc1965fd4d12be864862d4-nature_object.scn   0�
     �      ��%č��Q��#�S�%    P   res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn�~
     �      �Q��x��L+���዇    \   res://.godot/exported/133200997/export-563b40137a906541d6c03fbc25671f96-player_character.scn��
     N      �_X�T֕�z�E��1    T   res://.godot/exported/133200997/export-5715ff5fe974e0aca9746844d399f9cd-example.res ��      8     ��@�$
q�$����    T   res://.godot/exported/133200997/export-cab95416bda32297f5ea672fee8f6504-ItemDrop.scn��	           ؼ����V m�O�v    ,   res://.godot/global_script_class_cache.cfg          Y      ���gx��3�������C    D   res://.godot/imported/icon.jpg-f24f9f6365d64b74addf61cd4ea83444.ctex �           ��w�8Gp'�%����2    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctexh
     \      6(4�d=EQ�ǮVj,    D   res://.godot/imported/info.jpg-37cfdb61b8ae82e4ff486d549162185c.ctexЕ     �     <����Mo����a�       res://.godot/uid_cache.bin  p�
     @      ]�ש�{�F�:y�G���       res://FarmingTiles.gd   ]
     �      ��斥5$.S����       res://ForageObjects.gd  �_
     _      ��U�?�^T&'j�    (   res://GenerateWorld/GenerateNewWorld.gd `      �W      ���������&Z�9�        res://Global/Data/GameState.gd  `Y      �      {�EE;�b��#,Ğ�       res://Global/Data/Stats.gd  `\      �'      �
������tI{��n    P   res://Global/Functions/maujoe.custom_gradient_texture/custom_gradient_texture.gdP�      h      �������d�I�[@p�    H   res://Global/Functions/maujoe.custom_gradient_texture/example.tres.remap�
     d       7������˪��_׳�    H   res://Global/Functions/maujoe.custom_gradient_texture/icon.jpg.import   �     �       ��������M    H   res://Global/Functions/maujoe.custom_gradient_texture/info.jpg.import   Н	     �       :�H'���&�'��       res://GrassObjects.gd   @a
     �      ��m:��#S���        res://ItemDrop/ItemDrop.gd  0�	     �      ���.�m���0�    $   res://ItemDrop/ItemDrop.tscn.remap  `�
     e       ��'}�e�~dY�[�<       res://ItemDrops.gd  @v
     �      rU��9��$L�        res://MultiplayerSynchronizer.gd��
     �       ���``�e���4��a       res://NatureObjects.gd  p�
     �      �8�X�[��c3ώR       res://Networking.gd ��
           ��o���V��ݐeQ�       res://PlaceableObjects.gd   ��
     b      \l�M�p`�}na�����       res://Time.gd   Т
           ��5����ԗ�S/pC       res://Util/Constants.gd �
     �;      ������b
|���3�5       res://Util/Util.gd  �G
     1      x�V���k�6�u       res://helpers/IC.gd ��	     |      az�0�^>^*Z}�L^�       res://helpers/Tiles.gd   �	     kF      >�Fn�Y�p� όE^       res://helpers/UUID.gd   ��	     �      ��W_��bw-Tscf       res://icon.svg   �
     N      ]��s�9^w/�����       res://icon.svg.import   pu
     �       �[Nn�V�Fn�	tVsg6       res://main.gd    y
     �      l�0џ"��X�`AC       res://main.tscn.remap   а
     a       �J�Sw� ������       res://nature_object.gd  p�
     �       S��]��s3c4MGM        res://nature_object.tscn.remap  @�
     j       [3b[XRm6lY�˸
�j       res://player_character.gd   `�
           �l�X*���|���U�    $   res://player_character.tscn.remap   ��
     m       �
ƢE~Ϲ���_���       res://project.binary��
     �      TN(e�c�h��Ia���    ���:	���Qw�Hlist=Array[Dictionary]([{
"base": &"ImageTexture",
"class": &"CustomGradientTexture",
"icon": "",
"language": &"GDScript",
"path": "res://Global/Functions/maujoe.custom_gradient_texture/custom_gradient_texture.gd"
}, {
"base": &"Resource",
"class": &"GameState",
"icon": "",
"language": &"GDScript",
"path": "res://Global/Data/GameState.gd"
}])
<:3�A�,extends Node

var game_state: GameState

var world = {}

var server_data = {
	"season": "spring",
	"day_week": "Mon.",
	"day_number": 1,
	"time_minutes": 0,
	"time_hours": 6,
	"ui_slots": {},
}


var plains: Array = []
var deep_ocean: Array = []
var forest: Array = []
var beach: Array = []
var snow: Array = []
var dirt: Array = []
var ocean: Array = []
var desert: Array = []
var wet_sand: Array = []
var tile_array_names: Array = ["plains","forest","snow","dirt"] #"wet_sand","deep_ocean1","deep_ocean2","deep_ocean3","deep_ocean4","ocean"]
var tile_arrays_to_fix: Array = [plains, forest, snow, dirt] #deep_ocean1, deep_ocean2, deep_ocean3, deep_ocean4]
#var tile_arrays: Array = [plains, forest, snow, dirt, deep_ocean]

var decoration_locations = []
var occupied_terrain_tiles = []

const width := 1000
const height := 1000
const MAX_GRASS_BUNCH_SIZE = 150
var oreTypes = ["stone1", "stone2", "stone1", "stone2", "stone1", "stone2", "stone1", "stone2", "bronze ore", "iron ore", "bronze ore", "iron ore", "gold ore"]
var treeTypes = ['oak','spruce','birch','evergreen','pine','apple','plum','cherry','pear']
var weedTypes = ["A1","A2","A3","A4","B1","B2","B3","B4","C1","C2","C3","C4","D1","D2","D3","D4"]
var flowerTypes = ["poppy flower","sunflower","tulip","lily of the nile","dandelion"]
var clamTypes = ["blue clam","pink clam","red clam"]
var starfishTypes = ["starfish", "baby starfish"]
var randomAdjacentTiles = [Vector2i(0, 1), Vector2i(1, 1), Vector2i(-1, 1), Vector2i(0, -1), Vector2i(-1, -1), Vector2i(1, -1), Vector2i(1, 0), Vector2i(-1, 0)]

var fastNoiseLite := FastNoiseLite.new()
var rng = RandomNumberGenerator.new()
var _uuid = load("res://helpers/UUID.gd")
var uuid

var mutex = Mutex.new()
var semaphore = Semaphore.new()
var thread_counter = 1
var thread_tile_counter = 1

var thread_world = Thread.new()
var thread_world_update = Thread.new()
var thread_temperature = Thread.new()
var thread_moisture = Thread.new()
var thread_altittude = Thread.new()

var threads = [thread_world,thread_temperature,thread_moisture,thread_altittude,thread_world_update]

var altittude = {}
var temperature = {}
var moisture = {}

var file_name = "res://JSONData/world.json"

func build():
	for column in range(12):
		for row in ["A","B","C","D","E","F","G","H","I","J","K","L"]:
			world[row+str(column+1)] = {
				"ocean": [],
				"deep_ocean": [],
				"plains": [],
				"forest": [],
				"desert": [],
				"dirt": [],
				"snow": [],
				"beach":[],
				"wet_sand":[],
				"tree": {},
				"stump": {},
				"log": {},
				"ore_large": {},
				"ore": {},
				"tall_grass": {},
				"forage": {},
				"animal": {},
				"crop": {},
				"tile": {},
				"placeable": {} }
	rng.randomize()
	randomize()
	#await get_tree().create_timer(1.0).timeout
	build_temperature(5,0.06)
	#await get_tree().create_timer(1.0).timeoutg
	build_moisture(5,0.006)
	#await get_tree().create_timer(2.0).timeout
	build_altittude(5,0.003)

func end_altittude():
	altittude = thread_altittude.wait_to_finish()
	print("finish building altittude")
	mutex.lock()
	if thread_counter == 3:
		#call_deferred("build_world")
		thread_world.start(Callable(self,"build_world"))
	else:	
		thread_counter += 1
	mutex.unlock()


func end_temperature():
	temperature = thread_temperature.wait_to_finish()
	print("finish building temperature")
	mutex.lock()
	if thread_counter == 3:
		#call_deferred("build_world")
		thread_world.start(Callable(self,"build_world"))
	else:	
		thread_counter += 1
	mutex.unlock()

func end_moisture():
	moisture = thread_moisture.wait_to_finish()
	print("finish building moisture")
	mutex.lock()
	if thread_counter == 3:
		#call_deferred("build_world")
		thread_world.start(Callable(self,"build_world"))
	else:	
		thread_counter += 1
	mutex.unlock()
	
func build_altittude(octaves,frequency):
	print("building altittude")
	var data = {
		"octaves":octaves,
		"frequency":frequency,
		"ending_function":"end_altittude"
	};
	thread_altittude.start(Callable(self,"generate_map").bind(data))	
	
func build_temperature(octaves,frequency):
	print("building temperature")
	var data = {
		"octaves":octaves,
		"frequency":frequency,
		"ending_function":"end_temperature"
	};
	thread_temperature.start(Callable(self,"generate_map").bind(data))
	
func build_moisture(octaves,frequency):
	print("building moisture")
	var data = {
		"octaves":octaves,
		"frequency":frequency,
		"ending_function":"end_moisture"
	};
	thread_moisture.start(Callable(self,"generate_map").bind(data))

func build_world():
	print("building world")
	uuid = _uuid.new()
	build_terrian()
	#await get_tree().create_timer(1.0).timeout
	#set_cave_entrance()
	#await get_tree().create_timer(1.0).timeout
	generate_trees(snow,"snow")
	generate_trees(forest,"forest")
	generate_trees(desert,"desert")
	generate_grass_bunches(plains,"plains")
	generate_grass_bunches(snow,"snow")
	generate_ores(snow,"snow")
	generate_ores(desert,"desert")
	generate_ores(dirt,"dirt")
	generate_flowers(forest,"forest")
	generate_flowers(plains,"plains")
	generate_weeds(forest,"forest")
	generate_weeds(plains,"plains")
	generate_beach_forage(beach)
#	generate_animals()
#	await get_tree().create_timer(1.0).timeout
	#await get_tree().create_timer(1.0).timeout
	#await get_tree().create_timer(1.0).timeout
	## make faster
	fix_tiles()
	##################

func build_map():
	pass
#	Server.world.create_or_load_world()
	

#func set_cave_entrance():
#	var loc = Vector2i(rng.randi_range(490, 510), rng.randi_range(490, 510))
#	MapData.world["cave_entrance_location"] = loc
#	decoration_locations.append(loc)
#	decoration_locations.append(loc+Vector2i(1,0))

func build_terrian():
	print("BUILDING")
	for x in width:
		for y in height:
			var pos = Vector2i(x,y)
			var alt = altittude[pos]
			var temp = temperature[pos]
			var moist = moisture[pos]
			#var id ="id " + str(randf_range(0,10000))  #uuid.v4()
			#Ocean
#			var loc = Vector2(x,y)
			#var chunk = Util.return_chunk_from_location(loc)
			#print(chunk)
			if alt > 0.975:
				deep_ocean.append(Vector2i(x,y))
				#terrain[chunk]["deep_ocean"].append(pos)
			elif alt > 0.8:
				#terrain[chunk]["ocean"].append(pos)
				ocean.append(Vector2i(x,y))
			#Beach	
			elif between(alt,0.75,0.8):
				#MapData.world["beach"][id] = Vector2i(x,y)
				#terrain[chunk]["beach"].append(pos)
				beach.append(Vector2i(x,y))
			#Biomes	
			elif between(alt,-1.4,0.8):
				#plains
				if between(moist,0,0.4) and between(temp,0.2,0.6):
					#MapData.world["plains"][id] = Vector2i(x,y)
					plains.append(Vector2i(x,y))
					#terrain[chunk]["plains"].append(pos)
				#forest
				elif between(moist,0.5,0.85) and temp > 0.6:
					#MapData.world["forest"][id] = Vector2i(x,y)
					#terrain[chunk]["forest"].append(pos)
					forest.append(Vector2i(x,y))
				#desert	
				elif temp > 0.6 and moist < 0.5:
					#terrain[chunk]["desert"].append(pos)
					desert.append(Vector2i(x,y))
				#snow	
				elif temp < 0.2:
					#MapData.world["snow"][id] = Vector2i(x,y)
					#terrain[chunk]["snow"].append(pos)
					snow.append(Vector2i(x,y))
				else:
					#dirt
					#MapData.world["dirt"][id] = Vector2i(x,y)
					#terrain[chunk]["dirt"].append(pos)
					dirt.append(Vector2i(x,y))
			else:
				#MapData.world["dirt"][id] = Vector2i(x,y)
				#terrain[chunk]["dirt"].append(pos)
				dirt.append(Vector2i(x,y))
	#save_world_data()

	
func add_ocean_tiles():
	var border_tiles = []
	for i in range(2):
		border_tiles = []
		print("EXTENDING BEACH")
		for loc in beach:
			if Util.is_border_tile(loc, beach) and not forest.has(loc) and not plains.has(loc) and not dirt.has(loc):
				border_tiles.append(loc)
		for loc in border_tiles: # extend beach
			if not beach.has(loc+Vector2i(1,0)):
				beach.append(loc+Vector2i(1,0))
			if not beach.has(loc+Vector2i(-1,0)):
				beach.append(loc+Vector2i(-1,0))
			if not beach.has(loc+Vector2i(0,1)):
				beach.append(loc+Vector2i(0,1))
			if not beach.has(loc+Vector2i(0,-1)):
				beach.append(loc+Vector2i(0,-1))
			if not beach.has(loc+Vector2i(1,1)):
				beach.append(loc+Vector2i(1,1))
			if not beach.has(loc+Vector2i(-1,1)):
				beach.append(loc+Vector2i(-1,1))
			if not beach.has(loc+Vector2i(1,-1)):
				beach.append(loc+Vector2i(1,-1))
			if not beach.has(loc+Vector2i(-1,-1)):
				beach.append(loc+Vector2i(-1,-1))
	print("ADD WET SAND LAYER")
	border_tiles = []
	for loc in beach:
		if Util.is_border_tile(loc, beach) and not forest.has(loc) and not plains.has(loc) and not dirt.has(loc):
			border_tiles.append(loc)
	for loc in border_tiles: # set wet sand layer
		if not beach.has(loc+Vector2i(1,0)):
			wet_sand.append(loc+Vector2i(1,0))
		if not beach.has(loc+Vector2i(-1,0)):
			wet_sand.append(loc+Vector2i(-1,0))
		if not beach.has(loc+Vector2i(0,1)):
			wet_sand.append(loc+Vector2i(0,1))
		if not beach.has(loc+Vector2i(0,-1)):
			wet_sand.append(loc+Vector2i(0,-1))
		if not beach.has(loc+Vector2i(1,1)):
			wet_sand.append(loc+Vector2i(1,1))
		if not beach.has(loc+Vector2i(-1,1)):
			wet_sand.append(loc+Vector2i(-1,1))
		if not beach.has(loc+Vector2i(1,-1)):
			wet_sand.append(loc+Vector2i(1,-1))
		if not beach.has(loc+Vector2i(-1,-1)):
			wet_sand.append(loc+Vector2i(-1,-1))
	print("REMOVE OCEAN TILES")
	for loc in wet_sand: # remove ocean tiles
		if ocean.has(loc):
			ocean.erase(loc)
	for loc in beach:
		if ocean.has(loc):
			ocean.erase(loc)
	for loc in ocean:
		wet_sand.append(loc)
	assign_autotiles()


func assign_autotiles():
	print("ASSIGN AUTOTILES")
	for tile_array_name in tile_array_names: 
		var tileThread = Thread.new()
		threads.append(tileThread)
		tileThread.start(Callable(self,"assign_autotile_id").bind(tile_array_name))


func assign_autotile_id(tile_array_name):
	print("assigning autotiles")
#	var locations = return_tile_array(tile_array_name)
#	var locations = tiles
#	for loc in locations:
#		world[tile_array_name].append([loc,Util.return_autotile_id(loc,locations)])
#		tiles[tiles.find(loc)] = [loc,return_tile_id(loc,locations)]
	if thread_tile_counter == tile_array_names.size():
		print("assigned all")
		#call_deferred("build_world")
		thread_tile_counter = 1
		save_tiles_to_chunks()
	else:	
		thread_tile_counter += 1
		print("assigned: "+str(thread_tile_counter) + tile_array_name)


func return_tile_array(tile_array_name):
	match tile_array_name:
		"plains":
			return plains
		"forest":
			return forest 
		"snow":
			return snow
		"desert":
			return desert 
		"beach":
			return beach 
		"dirt":
			return dirt 
		"ocean":
			return ocean 
		"wet_sand":
			return wet_sand  
		"deep_ocean":
			return deep_ocean

func save_tiles_to_chunks():
	for loc in beach:
		var chunk = Util.return_chunk_from_location(loc)
		world[chunk]["beach"].append(loc)
	for loc in deep_ocean:
		var chunk = Util.return_chunk_from_location(loc)
		world[chunk]["deep_ocean"].append(loc)
	for loc in ocean:
		var chunk = Util.return_chunk_from_location(loc)
		world[chunk]["ocean"].append(loc)
	for loc in forest:
		var chunk = Util.return_chunk_from_location(loc)
		world[chunk]["forest"].append(loc)
	for loc in plains:
		var chunk = Util.return_chunk_from_location(loc)
		world[chunk]["plains"].append(loc)
	for loc in desert:
		var chunk = Util.return_chunk_from_location(loc)
		world[chunk]["desert"].append(loc)
	for loc in snow:
		var chunk = Util.return_chunk_from_location(loc)
		world[chunk]["snow"].append(loc)
	for loc in wet_sand:
		var chunk = Util.return_chunk_from_location(loc)
		world[chunk]["wet_sand"].append(loc)
	for loc in dirt:
		var chunk = Util.return_chunk_from_location(loc)
		world[chunk]["dirt"].append(loc)
	print("NEW TERRAIN")
	save_starting_world_data()


func fix_tiles():
	print("FIXING")
	for tile_array in tile_arrays_to_fix: 
		var tileThread = Thread.new()
		threads.append(tileThread)
		tileThread.start(Callable(self,"_fix_tiles").bind(tile_array))
		
func _fix_tiles(value):
	print("start fixing")
	var border_tiles = []
#	for i in range(2):
	border_tiles = []
	for loc in value:
		if Util.is_border_tile(loc, value):
			border_tiles.append(loc)
	for loc in border_tiles:
		if not value.has(loc+Vector2i(1,0)):
			value.append(loc+Vector2i(1,0))
		if not value.has(loc+Vector2i(-1,0)):
			value.append(loc+Vector2i(-1,0))
		if not value.has(loc+Vector2i(0,1)):
			value.append(loc+Vector2i(0,1))
		if not value.has(loc+Vector2i(0,-1)):
			value.append(loc+Vector2i(0,-1))
		if not value.has(loc+Vector2i(1,1)):
			value.append(loc+Vector2i(1,1))
		if not value.has(loc+Vector2i(-1,1)):
			value.append(loc+Vector2i(-1,1))
		if not value.has(loc+Vector2i(1,-1)):
			value.append(loc+Vector2i(1,-1))
		if not value.has(loc+Vector2i(-1,-1)):
			value.append(loc+Vector2i(-1,-1))
	if thread_tile_counter == tile_arrays_to_fix.size():
		print("fixed")
		#call_deferred("build_world")
		thread_tile_counter = 1
		thread_world_update.start(Callable(self,"add_ocean_tiles"))
	else:
		thread_tile_counter += 1
		print("fixing: "+str(thread_tile_counter))


func save_starting_world_data():
	print("SAVING")
	game_state = GameState.new()
	game_state.world = world
	game_state.server_data = server_data
	game_state.save_state()
	get_node("/root/Main").world = world
	get_node("/root/Main").server_data = server_data
	get_node("/root/Main").start_server()

#func generate_animals():
#	print("Building animals")
#	var locations = plains + forest + snow + dirt + desert
#	var NUM_BUNNY = int(locations.size() / 1200)
#	print("NUM BUNNIES " + str(NUM_BUNNY))
#	for _i in range(NUM_BUNNY):
#		var index = rng.randi_range(0, locations.size() - 1)
#		var location = locations[index]
#		if isValidPosition(location):
#			var id = uuid.v4()
#			MapData.world["animal"][id] = {"l":location,"n":"bunny","v":rng.randi_range(1,3),"h":Stats.BUNNY_HEALTH}
#			decoration_locations.append(location)
#	for _i in range(NUM_BUNNY):
#		var index = rng.randi_range(0, locations.size() - 1)
#		var location = locations[index]
#		if isValidPosition(location):
#			var id = uuid.v4()
#			MapData.world["animal"][id] = {"l":location,"n":"duck","v":rng.randi_range(1,3),"h":Stats.DUCK_HEALTH}
#			decoration_locations.append(location)
#	var NUM_BEAR = (locations.size() / 4000)
#	print("NUM BEARS " + str(NUM_BEAR))
#	for _i in range(NUM_BEAR):
#		var index = rng.randi_range(0, locations.size() - 1)
#		var location = locations[index]
#		if isValidPosition(location):
#			var id = uuid.v4()
#			MapData.world["animal"][id] = {"l":location,"n":"bear","h":Stats.BEAR_HEALTH}
#			decoration_locations.append(location)
#	var NUM_BOAR = (locations.size() / 4000)
#	print("NUM BEARS " + str(NUM_BOAR))
#	for _i in range(NUM_BOAR):
#		var index = rng.randi_range(0, locations.size() - 1)
#		var location = locations[index]
#		if isValidPosition(location):
#			var id = uuid.v4()
#			MapData.world["animal"][id] = {"l":location,"n":"boar","h":Stats.BOAR_HEALTH}
#			decoration_locations.append(location)
#	var NUM_DEER = (locations.size() / 3000)
#	print("NUM DEER " + str(NUM_DEER))
#	for _i in range(NUM_DEER):
#		var index = rng.randi_range(0, locations.size() - 1)
#		var location = locations[index]
#		if isValidPosition(location):
#			var id = uuid.v4()
#			MapData.world["animal"][id] = {"l":location,"n":"deer","h":Stats.DEER_HEALTH}
#			decoration_locations.append(location)
#	var NUM_WOLF = (locations.size() / 4000)
#	print("NUM WOLF " + str(NUM_WOLF))
#	for _i in range(NUM_WOLF):
#		var index = rng.randi_range(0, locations.size() - 1)
#		var location = locations[index]
#		if isValidPosition(location):
#			var id = uuid.v4()
#			MapData.world["animal"][id] = {"l":location,"n":"wolf","h":Stats.WOLF_HEALTH}
#			decoration_locations.append(location)
#

func generate_beach_forage(locations):
	print("Building beach forage")
	var NUM_FORAGE = int(locations.size()/150)
	for _i in range(NUM_FORAGE):
		var index = rng.randi_range(0, locations.size() - 1)
		var location = locations[index]
		if isValidPosition(location):
			var id = uuid.v4()
			var chunk = Util.return_chunk_from_location(location)
			if Util.chance(50):
				clamTypes.shuffle()
				world[chunk]["forage"][id] = {"l":location,"n":clamTypes.front(),"f":true}
			else:
				starfishTypes.shuffle()
				world[chunk]["forage"][id] = {"l":location,"n":starfishTypes.front(),"f":true}

func generate_weeds(locations,biome):
	print("Building "+biome+" weeds")
	var NUM_FLOWER = int(locations.size()/200)
	for _i in range(NUM_FLOWER):
		var index = rng.randi_range(0, locations.size() - 1)
		var location = locations[index]
		create_weed(location,biome)
		
func create_weed(loc,biome):
	var id = uuid.v4()
	var chunk = Util.return_chunk_from_location(loc)
	if isValidPosition(loc):
		weedTypes.shuffle()
		world[chunk]["tall_grass"][id] = {"l":loc,"n":"weed","v":weedTypes.front()}
		decoration_locations.append(loc)

func generate_flowers(locations,biome):
	print("Building "+biome+" Flowers")
	var NUM_FLOWER = int(locations.size()/200)
	for _i in range(NUM_FLOWER):
		var index = rng.randi_range(0, locations.size() - 1)
		var location = locations[index]
		create_flower(location,biome)

func create_flower(loc,biome):
	var id = uuid.v4()
	var chunk = Util.return_chunk_from_location(loc)
	if isValidPosition(loc):
		flowerTypes.shuffle()
		world[chunk]["forage"][id] = {"l":loc,"n":flowerTypes.front(),"f":true}
		decoration_locations.append(loc)

func generate_ores(locations,biome):
	var NUM_ORE_LARGE = int(locations.size()/100)
	var NUM_ORE = int(locations.size()/120)
	for _i in range(NUM_ORE_LARGE):
		var index = rng.randi_range(0, locations.size() - 1)
		var location = locations[index]
		create_ore_large(location,biome)
			
	for _i in range(NUM_ORE):
		var index = rng.randi_range(0, locations.size() - 1)
		var location = locations[index]
		create_ore(location,biome)

func create_ore_large(loc,biome):
	var id = uuid.v4()
	if check_64x64(loc) and isValidPosition(loc):
		oreTypes.shuffle()
		world[Util.return_chunk_from_location(loc+Vector2i(1,0))]["ore_large"][id] = {"l":loc+Vector2i(1,0),"h":Stats.LARGE_ORE_HEALTH,"b":biome,"v":oreTypes.front()}
		decoration_locations.append(loc)
		decoration_locations.append(loc + Vector2i(1,0))
		decoration_locations.append(loc + Vector2i(0,-1))
		decoration_locations.append(loc + Vector2i(1,-1))

func create_ore(loc,biome):
	var id = uuid.v4()
	if isValidPosition(loc):
		oreTypes.shuffle()
		world[Util.return_chunk_from_location(loc)]["ore"][id] = {"l":loc,"h":Stats.SMALL_ORE_HEALTH,"b":biome,"v":oreTypes.front()}
		decoration_locations.append(loc)

func generate_grass_bunches(locations,biome):
	var NUM_GRASS_BUNCHES = int(locations.size()/150)
	for _i in range(NUM_GRASS_BUNCHES):
		var index = rng.randi_range(0, locations.size() - 1)
		var location = locations[index]
		create_grass_bunch(location,biome)
	print("FISNIHED GRASS BUNCH " + biome)

func create_grass_bunch(loc,biome):
	rng.randomize()
	var randomNum = rng.randi_range(10, MAX_GRASS_BUNCH_SIZE)
	for _i in range(randomNum):
		randomAdjacentTiles.shuffle()
		loc += randomAdjacentTiles[0]
		if isValidPosition(loc) and not beach.has(loc):
			var id = uuid.v4()
			world[Util.return_chunk_from_location(loc)]["tall_grass"][id] = {"l":loc,"b":biome,"n":"grass", "fh":rng.randi_range(1,3), "bh":rng.randi_range(1,3)}
			decoration_locations.append(loc)
		else:
			loc -= randomAdjacentTiles[0]

func generate_map(data):
	print("GENERATE MAP " + str(data))
	var grid = {}
	fastNoiseLite.noise_type = FastNoiseLite.TYPE_SIMPLEX
	fastNoiseLite.fractal_type = FastNoiseLite.FRACTAL_FBM
	fastNoiseLite.seed = randi()
	fastNoiseLite.fractal_octaves = data.octaves
	fastNoiseLite.frequency = data.frequency
	var custom_gradient = CustomGradientTexture.new()
	custom_gradient.gradient = Gradient.new()
	custom_gradient.type = CustomGradientTexture.GradientType.RADIAL
	custom_gradient.size = Vector2i(width,height)
	var gradient_data = custom_gradient.get_image()
	for x in width:
		for y in height:
			var gradient_value = gradient_data.get_pixel(x,y).r * 1.5
			var value = fastNoiseLite.get_noise_2d(x,y)
			value += gradient_value
			grid[Vector2i(x,y)] = value
	call_deferred(data.ending_function)
	return grid

func check_64x64(loc):
	if not decoration_locations.has(loc) and not decoration_locations.has(loc+Vector2i(1,0)) and \
	not decoration_locations.has(loc+Vector2i(1,-1)) and not decoration_locations.has(loc+Vector2i(0,-1)):
		return true
	return false
 

func generate_trees(locations,biome):
	print("Building "+biome+" Trees")
	var NUM_TREES = int(locations.size()/100)
	var NUM_STUMPS = int(locations.size()/120)
	var NUM_LOGS = int(locations.size()/140)
	print(NUM_TREES)
	print(NUM_STUMPS)
	print(NUM_LOGS)
	for _i in range(NUM_TREES):
		var index = rng.randi_range(0, locations.size() - 1)
		var location = locations[index]
		create_tree(location,biome)
	for _i in range(NUM_STUMPS):
		var index = rng.randi_range(0, locations.size() - 1)
		var location = locations[index]
		create_stump(location,biome)
	for _i in range(NUM_LOGS):
		var index = rng.randi_range(0, locations.size() - 1)
		var location = locations[index]
		create_log(location,biome)

func create_tree(loc,biome):
	var id = uuid.v4()
	if check_64x64(loc) and isValidPosition(loc):
		treeTypes.shuffle()
		var variety = treeTypes.front()
		var chunk = Util.return_chunk_from_location(loc+Vector2i(1,0))
		if Util.isNonFruitTree(variety):
			world[chunk]["tree"][id] = {"l":loc+Vector2i(1,0),"h":Stats.TREE_HEALTH,"b":biome,"v":variety,"p":"5"}
		else:
			world[chunk]["tree"][id] = {"l":loc+Vector2i(1,0),"h":Stats.TREE_HEALTH,"b":biome,"v":variety,"p":"empty"}
		decoration_locations.append(loc)
		decoration_locations.append(loc + Vector2i(1,0))
		decoration_locations.append(loc + Vector2i(0,-1))
		decoration_locations.append(loc + Vector2i(1,-1))

func create_stump(loc,biome):
	var id = uuid.v4()
	if check_64x64(loc) and isValidPosition(loc):
		treeTypes.shuffle()
		world[Util.return_chunk_from_location(loc+Vector2i(1,0))]["stump"][id] = {"l":loc+Vector2i(1,0),"h":Stats.STUMP_HEALTH,"b":biome,"v":treeTypes.front()}
		decoration_locations.append(loc)
		decoration_locations.append(loc + Vector2i(1,0))
		decoration_locations.append(loc + Vector2i(0,-1))
		decoration_locations.append(loc + Vector2i(1,-1))

func create_log(loc,biome):
	var id = uuid.v4()
	if isValidPosition(loc):
		world[Util.return_chunk_from_location(loc)]["log"][id] = {"l":loc,"h":1,"b":biome,"v":rng.randi_range(1,12)}
		decoration_locations.append(loc)

func isValidPosition(loc):
	if decoration_locations.has(loc):
		return false
	return true

func between(val, start, end):
	if start <= val and val < end:
		return true

#func _exit_tree():
#	for thread in threads:
#		thread.wait_to_finish()
;�extends Resource

class_name GameState

@export var world = {}
@export var server_data = {}
## any other object here  and the the save and load methods that needs to be save

const GAME_STATE_PATH = "user://gamestate.tres"

var game_state: GameState

static func save_exists():
	return ResourceLoader.exists(GAME_STATE_PATH)

func save_state():
	var result = ResourceSaver.save(self, GAME_STATE_PATH, ResourceSaver.FLAG_NONE)
	if(result == OK):
		print("saved player data")

func load_state():
	if ResourceLoader.exists(GAME_STATE_PATH):
		var game_State = ResourceLoader.load(GAME_STATE_PATH)
		if game_State: #is GameState: # Check that the data is valid
			server_data = game_State.server_data
			world = game_State.world

#		MapData.world = world_state
{o�D����Ϗextends Node

signal tool_health_change_hotbar
signal tool_health_change_combat_hotbar

var skill_descriptions = {
	"sword": {1:{"n":"Sword swing","c":"1 energy","d":"A fast sword swipe."}, 2: {"n":"Sword defense","c":"1 energy","d":"Protects against incoming enemy projectiles."}, 3: {"n":"Enchantment","c":"TBD","d":"TBD"}, 4: {"n":"TBD","c":"TBD","d":"TBD"}},
	#"sword": {1:{"n":"Sword swing","c":"1 energy","d":"A fast sword swipe."}, 2: {"n":"Coming soon...","c":"Coming soon...","d":"Coming soon..."}, 3: {"n":"Coming soon...","c":"Coming soon...","d":"Coming soon..."}, 4: {"n":"Coming soon...","c":"Coming soon...","d":"Coming soon..."}},
	"bow": {1:{"n":"Single-shot","c":"1 energy, 1 arrow","d":"Shoots a single arrow projectile."}, 2: {"n":"Multi-shot","c":"1 energy, 3 arrows","d":"Shoots three arrow projectiles."}, 3: {"n":"Enchantment","c":"1 energy, 1 mana, 1 arrow","d":"Shoots a random poison, ice or fire arrow."}, 4: {"n":"Ricochet shot","c":"1 energy, 2 mana, 2 arrows","d":"Makes arrows bounce between close targets"}},
	"dark": {1:{"n":"Demon warrior","c":"1 mana","d":"..."}, 2: {"n":"Invisibility","c":"2 mana","d":"..."}, 3: {"n":"Demon mage","c":"5 mana","d":"..."}, 4: {"n":"Node3D","c":"10 mana","d":"..."}},
	"electric": {1:{"n":"Electric chain","c":"1 mana","d":"..."}, 2: {"n":"Flash-step","c":"2 mana","d":"..."}, 3: {"n":"Stunned electric chain","c":"5 mana","d":"..."}, 4: {"n":"Lightning strike","c":"10 mana","d":"..."}},
	"earth": {1:{"n":"Earth strike","c":"1 mana","d":"..."}, 2: {"n":"Earth golem","c":"2 mana","d":"..."}, 3: {"n":"Lingering earth strike","c":"5 mana","d":"..."}, 4: {"n":"Earthquake","c":"10 mana","d":"..."}},
	"fire":  {1:{"n":"Fireball","c":"1 mana","d":"Shoots three flaming fireballs"}, 2: {"n":"Strength buff","c":"2 mana","d":"All non-magic weapons do extra damage."}, 3: {"n":"Exploding fireballs","c":"5 mana","d":"Shoots three exploding fireballs."}, 4: {"n":"Flamethrower","c":"10 mana","d":"A powerful stream of destruction."}},
	"wind": {1:{"n":"Tornado","c":"1 mana","d":"A piercing, single shot projectile."}, 2: {"n":"Dash","c":"2 mana","d":"Increased movement speed for short duration."}, 3: {"n":"Lingering tornado","c":"5 mana","d":"Traps and damages enemies within radius."}, 4: {"n":"Whirlwind","c":"10 mana","d":"A powerful spiral attached to the player."}},
	"ice": {1:{"n":"Ice projectile","c":"1 mana","d":"..."}, 2: {"n":"Ice shield","c":"2 mana","d":"..."}, 3: {"n":"Lingering ice projectile","c":"5 mana","d":"..."}, 4: {"n":"Blizzard","c":"10 mana","d":"..."}},
}

const MAX_WOOD_DOOR = 50
const MAX_METAL_DOOR = 10000
const MAX_ARMORED_DOOR = 20000


const MAX_TWIG_BUILDING = 50
const MAX_WOOD_BUILDING = 1000
const MAX_STONE_BUILDING = 5000
const MAX_METAL_BUILDING = 10000
const MAX_ARMORED_BUILDING = 20000

const BOW_HEALTH = 50
const WOOD_TOOL_HEALTH = 25
const STONE_TOOL_HEALTH = 50
const BRONZE_TOOL_HEALTH = 100
const IRON_TOOL_HEALTH = 200
const GOLD_TOOL_HEALTH = 400

const PUNCH_DAMAGE = 10 
const WOOD_TOOL_DAMAGE = 14
const STONE_TOOL_DAMAGE = 16
const BRONZE_TOOL_DAMAGE = 18
const IRON_TOOL_DAMAGE = 25 
const GOLD_TOOL_DAMAGE = 40 

const STUMP_HEALTH = 40
const TREE_HEALTH = 100
const SMALL_ORE_HEALTH = 40
const LARGE_ORE_HEALTH = 100

const WOOD_SWORD_DAMAGE = 20
const STONE_SWORD_DAMAGE = 30
const BRONZE_SWORD_DAMAGE = 40
const IRON_SWORD_DAMAGE = 50
const GOLD_SWORD_DAMAGE = 60

const ARROW_DAMAGE = 25

const DESTRUCTION_POTION_I = 10
const DESTRUCTION_POTION_II = 25
const DESTRUCTION_POTION_III = 50

const FIRE_DEBUFF_DAMAGE = 20

const LIGHTNING_SPELL_DAMAGE = 20
const LIGHTNING_SPELL_DEBUFF_DAMAGE = 30
const LIGHTNING_STRIKE_DAMAGE = 50

const WHIRLWIND_SPELL_DAMAGE = 33
const TORNADO_SPELL_DAMAGE = 20
const ICE_SPELL_DAMAGE = 20
const EARTH_STRIKE_DAMAGE = 60
const FIRE_PROJECTILE_DAMAGE = 20
const FLAMETHROWER_DAMAGE = 20
const EARTHQUAKE_DAMAGE = 15
const LINGERING_TORNADO_DAMAGE = 20

const MAX_STONE_WATERING_CAN = 25
const MAX_BRONZE_WATERING_CAN = 50
const MAX_GOLD_WATERING_CAN = 100

const DUCK_HEALTH = 70
const BUNNY_HEALTH = 70
const BEAR_HEALTH = 150
const BOAR_HEALTH = 100
const DEER_HEALTH = 120
const WOLF_HEALTH = 100


const SLIME_HEALTH = 90
const SPIDER_HEALTH = 100
const SKELETON_HEALTH = 100
const BAT_HEALTH = 90
const WIND_BOSS = 1200

func return_starting_door_health(item_name):
	match item_name:
		"wood door":
			return MAX_WOOD_DOOR
		"metal door":
			return MAX_METAL_DOOR
		"armored door":
			return MAX_ARMORED_DOOR

func return_tool_damage(tool_name):
	match tool_name:
		"destruction potion I":
			return DESTRUCTION_POTION_I
		"destruction potion II":
			return DESTRUCTION_POTION_II
		"destruction potion III":
			return DESTRUCTION_POTION_III
		"earthquake":
			return EARTHQUAKE_DAMAGE
		"flamethrower":
			return FLAMETHROWER_DAMAGE
		"fire projectile":
			return FIRE_PROJECTILE_DAMAGE
		"earth strike":
			return EARTH_STRIKE_DAMAGE
		"ice projectile":
			return ICE_SPELL_DAMAGE
		"tornado spell":
			return TORNADO_SPELL_DAMAGE
		"lingering tornado":
			return LINGERING_TORNADO_DAMAGE
		"whirlwind spell":
			return LIGHTNING_SPELL_DAMAGE
		"lightning spell":
			return LIGHTNING_SPELL_DAMAGE
		"lightning spell debuff":
			return LIGHTNING_SPELL_DEBUFF_DAMAGE
		"lightning strike":
			return LIGHTNING_STRIKE_DAMAGE
		"wood sword":
			return WOOD_SWORD_DAMAGE
		"stone sword":
			return STONE_SWORD_DAMAGE
		"bronze sword":
			return BRONZE_SWORD_DAMAGE
		"iron sword":
			return IRON_SWORD_DAMAGE
		"gold sword":
			return GOLD_SWORD_DAMAGE
		"arrow":
			return ARROW_DAMAGE
		"punch":
			return PUNCH_DAMAGE
		"wood axe":
			return WOOD_TOOL_DAMAGE
		"stone axe":
			return STONE_TOOL_DAMAGE
		"bronze axe":
			return BRONZE_TOOL_DAMAGE
		"iron axe":
			return IRON_TOOL_DAMAGE
		"gold axe":
			return GOLD_TOOL_DAMAGE
		"wood pickaxe":
			return WOOD_TOOL_DAMAGE
		"stone pickaxe":
			return STONE_TOOL_DAMAGE
		"bronze pickaxe":
			return BRONZE_TOOL_DAMAGE
		"iron pickaxe":
			return IRON_TOOL_DAMAGE
		"gold pickaxe":
			return GOLD_TOOL_DAMAGE


func return_item_drop_quantity(tool_name, object_name):
	match object_name:
		"tree":
			match tool_name:
				"wood axe":
					return 6
				"stone axe":
					return 9
				"bronze axe":
					return 12
				"iron axe":
					return 15
				"gold axe":
					return 18
				_:
					return 3
		"stump":
			match tool_name:
				"wood axe":
					return 4
				"stone axe":
					return 6
				"bronze axe":
					return 8
				"iron axe":
					return 10
				"gold axe":
					return 12
				_:
					return 2
		"branch":
			match tool_name:
				"wood axe":
					return 2
				"stone axe":
					return 3
				"bronze axe":
					return 4
				"iron axe":
					return 5
				"gold axe":
					return 6
				_:
					return 1
		"large ore":
			match tool_name:
				"stone pickaxe":
					return 6
				"bronze pickaxe":
					return 9
				"iron pickaxe":
					return 12
				"gold pickaxe":
					return 15
				_:
					return 3
		"small ore":
			match tool_name:
				"stone pickaxe":
					return 4
				"bronze pickaxe":
					return 6
				"iron pickaxe":
					return 8
				"gold pickaxe":
					return 10
				_:
					return 2


func return_max_tool_health(item_name):
	match item_name:
		"wood axe":
			return WOOD_TOOL_HEALTH
		"wood pickaxe":
			return WOOD_TOOL_HEALTH
		"wood sword":
			return WOOD_TOOL_HEALTH
		"wood hoe":
			return WOOD_TOOL_HEALTH
		"stone axe":
			return STONE_TOOL_HEALTH
		"stone pickaxe":
			return STONE_TOOL_HEALTH
		"stone sword":
			return STONE_TOOL_HEALTH
		"stone hoe":
			return STONE_TOOL_HEALTH
		"bronze axe":
			return BRONZE_TOOL_HEALTH
		"bronze pickaxe":
			return BRONZE_TOOL_HEALTH
		"bronze sword":
			return BRONZE_TOOL_HEALTH
		"bronze hoe":
			return BRONZE_TOOL_HEALTH
		"iron axe":
			return IRON_TOOL_HEALTH
		"iron pickaxe":
			return IRON_TOOL_HEALTH
		"iron sword":
			return IRON_TOOL_HEALTH
		"iron hoe":
			return IRON_TOOL_HEALTH
		"gold axe":
			return GOLD_TOOL_HEALTH
		"gold pickaxe":
			return GOLD_TOOL_HEALTH
		"gold sword":
			return GOLD_TOOL_HEALTH
		"gold hoe":
			return GOLD_TOOL_HEALTH
		"stone watering can":
			return MAX_STONE_WATERING_CAN
		"bronze watering can":
			return MAX_BRONZE_WATERING_CAN
		"gold watering can":
			return MAX_GOLD_WATERING_CAN
		"bow":
			return BOW_HEALTH
		_:
			return null

#func decrease_tool_health():
#	if PlayerData.normal_hotbar_mode:
#		if PlayerData.player_data["hotbar"].has(str(PlayerData.active_item_slot)):
#			if PlayerData.player_data["hotbar"][str(PlayerData.active_item_slot)][2]:
#				PlayerData.player_data["hotbar"][str(PlayerData.active_item_slot)][2] -= 1
#				emit_signal("tool_health_change_hotbar")
#	else:
#		if PlayerData.player_data["combat_hotbar"].has(str(PlayerData.active_item_slot_combat_hotbar)):
#			if PlayerData.player_data["combat_hotbar"][str(PlayerData.active_item_slot_combat_hotbar)][2]:
#				PlayerData.player_data["combat_hotbar"][str(PlayerData.active_item_slot_combat_hotbar)][2] -= 1
#				emit_signal("tool_health_change_combat_hotbar")
#
#
#func refill_watering_can(type):
#	match type:
#		"stone watering can":
#			if PlayerData.normal_hotbar_mode:
#				PlayerData.player_data["hotbar"][str(PlayerData.active_item_slot)][2] = MAX_STONE_WATERING_CAN
#				emit_signal("tool_health_change_hotbar")
#			else:
#				PlayerData.player_data["combat_hotbar"][str(PlayerData.active_item_slot_combat_hotbar)][2] = MAX_STONE_WATERING_CAN
#				emit_signal("tool_health_change_combat_hotbar")
#		"bronze watering can":
#			if PlayerData.normal_hotbar_mode:
#				PlayerData.player_data["hotbar"][str(PlayerData.active_item_slot)][2] = MAX_BRONZE_WATERING_CAN
#				emit_signal("tool_health_change_hotbar")
#			else:
#				PlayerData.player_data["combat_hotbar"][str(PlayerData.active_item_slot_combat_hotbar)][2] = MAX_BRONZE_WATERING_CAN
#				emit_signal("tool_health_change_combat_hotbar")
#		"gold watering can":
#			if PlayerData.normal_hotbar_mode:
#				PlayerData.player_data["hotbar"][str(PlayerData.active_item_slot)][2] = MAX_GOLD_WATERING_CAN
#				emit_signal("tool_health_change_hotbar")
#			else:
#				PlayerData.player_data["combat_hotbar"][str(PlayerData.active_item_slot_combat_hotbar)][2] = MAX_GOLD_WATERING_CAN
#				emit_signal("tool_health_change_combat_hotbar")

K�k��J�@tool
extends ImageTexture
class_name CustomGradientTexture

enum GradientType {LINEAR, RADIAL, RECTANGULAR}

# Workaround for manual texture update
# because updating it while editing the gradient doesn't work well
enum Btn {ClickToUpdateTexture}
@export var click_to_update_texture: bool = false : set = _update_texture

@export var type: GradientType = GradientType.LINEAR : set = set_type
@export var size = Vector2(1000, 1000) : set = set_size
@export var gradient: Gradient : set = set_gradient

var data: Image

func _init():
	#data = Image.new()
	data = Image.create(size.x, size.y, false, Image.FORMAT_RGBA8)
	#print(size.x)
	#data.create(size.x, size.y, false, Image.FORMAT_RGBA8)
	#print(str(data.get_width()))

func _update():
	if not gradient:
		return
	var radius = (size - Vector2(1.0, 1.0)) / 2
	var ratio = size.x / size.y
	if type == GradientType.LINEAR:
		for x in range(size.x):
			var offset = float(x) / (size.x - 1)
			var color = gradient.sample(offset)

			for y in range(size.y):
				data.set_pixel(x, y, color)

	elif type == GradientType.RADIAL:
		for x in range(size.x):
			for y in range(size.y):
				var dist = Vector2(x / ratio, y).distance_to(Vector2(radius.x / ratio, radius.y))
				var offset = dist / radius.y
				var color = gradient.sample(offset)
				data.set_pixel(x, y, color)

	# Rectangular
	else:
		for x in range(size.x):
			for y in range(size.y):
				var dist_x = Vector2(x, 0).distance_to(Vector2(radius.x, 0))
				var dist_y = Vector2(0, y).distance_to(Vector2(0, radius.y))
				var offset

				if dist_x > dist_y * ratio:
					offset = dist_x / radius.x
				else:
					offset = dist_y / radius.y

				var color = gradient.sample(offset)
				data.set_pixel(x, y, color)
	#var texture = ImageTexture.new()
	set_image(data)


# Workaournd that allow to manual update the texture
#warning-ignore:unused_argument
func _update_texture(value):
	_update();

func set_type(value):
	type = value
	_update()

func set_size(value):
	size = value

	if size.x > 4096:
		size.x = 4096
	if size.y > 4096:
		size.y = 4096
	#data.resize(size.x, size.y)
	_update()

func set_gradient(value):
	gradient = value
	_update()
]P��)KRSRC                     ImageTexture            ��������                                                  resource_local_to_scene    resource_name    data    script    image       Script G   res://assets/maujoe.custom_gradient_texture/custom_gradient_texture.gd ��������      local://Image_icbc2 f         local://ImageTexture_7xsso �        Image                   width             height             format       RGBA8       mipmaps              data          ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   ���������			�


����������������������   �!!!�"""�###�$$$�%%%�&&&�'''�(((�)))�***�+++�,,,�---�...�///�000�111�222�333�444�555�666�777�888�999�:::�;;;�<<<�===�>>>�???�@@@�AAA�BBB�CCC�DDD�EEE�FFF�GGG�HHH�III�JJJ�KKK�LLL�MMM�NNN�OOO�PPP�QQQ�RRR�SSS�TTT�UUU�VVV�WWW�XXX�YYY�ZZZ�[[[�\\\�]]]�^^^�___�```�aaa�bbb�ccc�ddd�eee�fff�ggg�hhh�iii�jjj�kkk�lll�mmm�nnn�ooo�ppp�qqq�rrr�sss�ttt�uuu�vvv�www�xxx�yyy�zzz�{{{�|||�}}}�~~~����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������         ImageTexture                              RSRCrR�U%	(GST2   @   @      ����               @ @        �  RIFF�  WEBPVP8L�  /?� ͔!���	�@�G��X��6�$I��;���`22�s�@�6��k~�m�޿�/ J���!FI����1� � =؏ȑƘ��H@q�1#0+)L`	�	�F@#� �!`h�&@Xfp�(�6~�1�d��!�M$.���K�o]h�(
!�L��1 �4�|����@���=o���@�E������$���'�� �10���>Ń(B���F@�xin�Mx|�hs!̚3`�H�'�I�@�E`ĢB�	y"JE�x(�_|�H����P����V��E#�	��T�+���جb�H��3y�)�/�1[̩� �-L�'�]nD 
�D\ 0�ܡ9'b������&֡;E��p#a~3!8��y1G\)ULbl1���i hf]5�K2̒��)��,MMH0����4�|��'��`�._$ŋ00$/�h�FDR��X�� �A��D2#j�b��1bݽE�j!�������I)V�N�92G��u/W�R#�B	�WF�	�1P��	tWh�,�Ȍ��@�)��9a�~Lpg"P4Ca���t�D
��(��f��03`�Q�<4�0�fa�)D*/����E@S�y�
��j�)��a a ��F�g
��
A��$�� �t�<�\�Kl�7� K"Dfl͙�IJ\���� �#�^s��>cf�0b��%J\^�i�>��S�p��8��-ă0�iB�bJ���Ȍ�M�g_�Ɇ��8 � z�_ fi4�!��@#�!�n�����������#D.�zs$�0&IL*���4 ��'L�@\J�9�q�Gݑ&���Ԯ�@�$���oD����;q���C� ��f3H$��m��C[�@�03gDԮ����}h�(-�1W���C�!DcbV��"�`�h��h^v��``�a�ۜ"E !@����oZ �$�Ad���6�f SbL	c����xq#ĠexP �( 6e������E�IR V�d~�W⨋^"�5�X�2 fg̊�D�� ��Dq�̨1'���AiF@�� ��׈��/�����of cN4_$������aVj}) �ڵD�� B��bL�,6�� 	!L�����*D��l�M�¬F�����%S��$. c�h�`|ծ���b!��y"r
B�	��'EX4���$h���Z0	ZD !��Cq^i�,^M�������. �0`�%k���1!�&q�y19�d�R�b�1aL���U�QB��_��Yc ��Bcƈg
!�~�o cL3�L ̔
3JFQ����'R����vQ��D��+��$����6�����_ k�0�P[�0��0ML��V"����d�	�b}BL;�@��z��!*J�csOS�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://0jii2liaxlt4"
path="res://.godot/imported/icon.jpg-f24f9f6365d64b74addf61cd4ea83444.ctex"
metadata={
"vram_texture": false
}
 GST2   �  8     ����               �8       � RIFF� WEBPVP8L� /��P�$I�$�E��f�	gT�� �������@�5��a��E�C�gc����R)�2j�]E[Q7�6���ȴ���o��*v_Y��lD|�����U�!�ٳ�C�~A�\ �����nv���Wu��,��χ�t��	�x�M��*��m���Un��l�w�+���z(gr*%�'ff��fJ*3uFP�f�r����Q��!��-/��� Ehj�'��g��q��o|���u.����(���7����La�O�b<��T0�O�3�%�,���l��bTw3m�d�tDD�
�B7��L'�O%�A�����8��9�S=�7nv<7���֖w�]��\���Z�n�F��H�>���<�++{n$�*I�#Y8��i��@���/y
j}"�n0@I#IR��ǿ�1p@�'�p�g �Z$r�	��� �rB�W$(�� Hr8� Ӵ� �0�AW4�f  ����0 ��!��Q�4   6op�i�	;2  �
 Df��b	�9�   8�X��"�Ν 6j����ʦ$��+B�V�Hg#D# `���@H�!��'�DQ�fB�(�R(�rD\��wT�{?��6Ȅ,�1B�BH `�XX=! @������ h�'�,�1(	(�
�@�"�  !p(PP�t����N�@d0��DI��Wl6a�V�ę� ��� 8�D�B�'$(14�4�ed�<@�H����i
a�XY�	3� �0,��  �#D�LC �?Y�p�&��F ��(8@����ʌD�4 oA�� !�3WA&��@�h� )�8�3f�F��0�rc�  �,d�,İ��$C
#
 �6��X!p)	� (
 X@�!L>Ep13| �+J`@ ��J� wt$9�( @�aH ��	"!���P3p&ea\��$M`�'���$�mt�s@�9� ��	D�@�cʱ�d >ř��U�{QAM����\��<V�I�� ��ݺt 0����=�V�W�o�ke��>8�=I�Zk<�1x��9��;{�� /ڿ�������A�����[�`�޷Ts޺;�;����V ��D��}��_�^̣�P�ʵ �aA�X�h���E��${��Z.���J�}���ި�Чy�S�̔���ݽ���3VP楨�����"�\�`�s�5���-���c�^�D�L��d(���� 3����~�`*=g�=�������?f�̜ރݽc���<�;_�Hw������Bz�%~M��ݙ�A�`~,8fW��Lw7��ߓJB�8�냕�_����a۶�mc��nx�e�%3$�:�Ҕ1eff��t��3efH���d�+c�F3˖�z���i�؉��I�6��-I�%I�m!�ZD������x]�*�M�}K�dI�d[(�j��U]������u��e����p3eh�m�T��s��Q��g��a���N�mc��\�{d��Ip���ݵh)R�P�Hqw��w�v��e��q<��..��?<I��ȶm[��s���y�ү�N�����N�2��>p�^sd��m۞M�$�|����܃dV���K\�
 A�
�A*��g��Tgd�����O��m�f3O����A�9`��Hrc���GDf4􌤑dI�-���ef�������w���9�s�,��qAf[̚�@cQBD��ϝ�l����=�o۶m�ml+��`*D]���tC0��[�-I�%I�m���{dU�f������~���p3��۶�h]4:������m��4�v������e��{ ����B�*��ݝ�;--�Z
��KBܓ����r�i�[2H���wYx۶��v$��1���\�d2g�df��e��,�����&7��5I��k�1<۶�j�$g}�}���9������L5�*t*����@Efff��g:���}�����k,H��D9��ݨ�K������r�m��of8�$���";�4N�8�Ԑf,�Mo�۴7�-C�fr���L�,��=����^/��]Y~�9k�?�m)M_5����[�Ǉ��!ɵ�?�����̬��ض�k۶m�f�}�����&k��]���svj&;�����Y�&Ւd�3s���ƈ�Ȋ����8;�F�4�+�=�4cf�f.��̬��ܴ���tkۤH�$}"�f����Y�03���t�{�װW�W0����\��Օ�UI��hf�"�m$Erc���1�}K�dI�d[L�U=���ϾW�)����GX���E-ڶ���!��U��e�m^�	��f|ǟa�@�����������M�狺��q���N��0Ky��O<�u~6�1��,�E�����Jr�0c �8A?��Èȡ[������f�0���d�s��^#�>�F?�"�x�	R�|Fj��A�ev	���s/�`�������^g��ӿ�����v�B�q��F3�5B�3�����)C @ �܁�H���Β�!�;N 	  =�������l����1w��셳�#�z�	B�]x�6��a���l�o"P1���;B��S�V9���@�y�cC��P�:�F���Th.��~�{9z׺���g�y����ߋ��8�9��} "��x7���PF9��c����a]4".:
yș 
��m�"�/�`���;'�`� �a(�C�U��U���ώGBE��K`rc���<����;����c%4_-���@9G�����A!@C����,9BD@�,�(�@hr ���J�H����8#@�g,]C"�D�B���X��� %� L��AQ@ ��%>Z1>>*4>
>4	�N��PB ��V�>e 4i�B�z���xL�C�"'/ 8!"���B�`~0*� ��M@BN����[}%X�$�� �W ��MY$tr�����A�x��(�cP�	�τ	��Y��=� �(=F�� ���x�"e��H�^�"T$8�����0ݐ�Y?�1��A1�z("!C�S >�C>AX�� �� P�a*�I
iXX��@!�q���T�p�� "�.A�ȉX:��c	GN �;_���]9FW�N��b3ݸ�ӈ��QQ)�	!1s�N"�g	|'���$���D�Aۇ�#�9O���0��t!J
�9r�J�3�6nR")	�w� 9�� J����Y�8u��O �ǂ#������j�SA�f�N'A4�H�d�y�l'�D�="DPz�w���Di^v1X,�2?XJ&��K�c,�ü󅂆��h�h]-G#D��T҉� �L�Y�J���2�N#'�T3�e5
*E_q����ڍ�4?�-����Gx���"������"�!2"�0��1�t9���������%��o����-��3I�,ʩ��w�z(,`��b,~Wl���9l��*�X���v�L�QNA��e'��N�b�s�T�w�O=?7�h�?�������w?������?�_�����������?O�>ߟϛ;"��a��S@�O�2�:��eml��<r�s�pA.��n.3�+���~W��
�8���{��=8�����ģH�v60		���jh#�Ay79�r�%:�����T�7%����=�
�ҥ83?&,@!����}Fd8�;_P`0��ᾼ�-aL~��4�#�
��W�:
��b99��>�&�X�!X<��TS�
�g��ɲ
� �mo���o�e���Z�Mo���mώo�����ނHQf�4��b����"�"�/<h(�/`�VH�]�lz��0�0L�$�:���a&�Y&{�!��XI?Aw+'��^j��J~�I�o��3�Y�2o�*��� ��c�� ��D�k���T�X"o�-��	y'�l AC��s�%wܔG��.�ݥ�`>�I�n����R"�DV��n �|"	� ����J���[ھk;����l����b�����
�;�*�>���5e�	,�8,�w�`����<l�53��{̜TUI��a%��'ut���g��8[�C�d؏o��*�&^��.D�������|_N'%���@�r��T9�2W�rR�:#�+e�\MPRzl�2��x< �2�/h0 Ae�,�A���Ҟ�L��1�ܯ�t�	��P��4.e*�C� 4��a#/����
�8��[ۿ���=���-s��V���)�����w�v�7�W@Q��P``<]��k�[�g�I��/l,�Y&�Ga�R�^Ss�+��Z%t� Q$K	��DQ�@t�%��	�
@��T�[p;�3&˻+#�����)%��],�&�E�%y[�$�1G�C� ����S���#'��;_���]��W�������Cߑ��S�;�5;�s9I�	a����K��{�l��r>7f^��h�I8��
�Z2 �  ��JE�U?�"_�K�d  �09�� �aE��|��oӿ7��}^�{�/�Z^�]պ֓���ҫ�	b��a�
ДIҷ�4�E�u�_����i%imd$`Q*��H�w�����΀�..<��?���E���5��n�i�>"���CD �#g�"D$r��������3"�Ñ���0�>5�t@M�#�`�: �v��& ��X" �J�p��ǦA Tt�5�L��(�%0^����,O����'D$��~B8�P��g�A	����H	 � 5ha�:���6��]�!<��<�Pa91@�00p�JjU�1�	����1��T́��X)�@}�+�~�P"�@@N���䨈@�����U�hm& C��1XA @ Np��F@��˥���EP������
aq$D��/I���!I*�� �0�Oa�@��O�MB�1PCr2� (D{� ��� �DK�' ��OQ<��ZW"���E�	t��Ja!�1DeFa��
�JpN����C-����L]�v{mnЁ��!'� �qrlx .��0ѱՆ��<�z��b�@�|��@�T  s�7� @P ,���"�J�TNd�v	���M�ñ�C\ ��b�D"qbx\ "�9P�!�*2���b鲊S0�1�R�j�����p?�
�XL��!�@c �����Z�"Rb��d�2B1�rb4 �C�H4xob!ړ�X����j/G�5��^T��,q~�iQZC�\#J[7��4���V?7�<�� B��� �F�������y�R�V�w����0�����y���@%�w-,FDG��{�f4��ꩌ������ϖ���p��t����t�XF���A-�ϟ��v�����ܻC.�x&������ W�ӷy�����AD� �D�⡢�A�S(
��p"4  ��hm��䬴���P\��C�$AI�vN��46@ ��^��9If��.��S�?KD���h@ A��I�2%��f
�u�~�ղK��HT9���Ia1��L��a#R���{T*��I����
����������z����\\��������"0�� ���:�j�H�˪��Ү���1�����������p0qi��� tJ@�X��Ht>� (ch{1!r�	/r��|�k\��`(!N���0���۵h���}!hM�T~W	�O�I.���;lh8x0:d����iVd���ɆR��jF1��D)����q��}O-]�p�褂x�e �5L��ܟ���"��ﾔ�U����� u�h�{'ʕ����\���9�y�.�X�0`B�8����,�q �9l"����E��%��>l�0_�&�<�U�)��	'�66È�J��n�E�bE�T�a�q�ȧ�	#�{َ9�0A��2��������i�d�����XtV�7v�>��9�磾e	"�3����$ �������~*�d\���\�Y��I�5�t��Zq3���|�h����(������y")���I�a/B;
��&$�d�Re�

 ��� =}�Tt��� p���ݐ�z�"�U�v��4:��D&>D
젒���g/�������D��ˆo&3�=5v�u���.��j^aSv��� �y�����yȱ4��3)���\H�wic<m���5�ov���޿�ω��y�=��n����п�����L�����~�x�u�1���sw��J�V��G�0lv#�I�{�,҇&iB�`(0"�O�%���2��١K���Rq⌠&�tC��,Z�.��I�t��v���hD(�`ԴX�Ä���E�ăfN���<�,*Z�9�4�".:q*0�D�i�0<��=Ќ���\� ��y�S(�g���~^�*�7+W�~^��g�[?��T�*���e^m.˸���su�8Ԉ5@�|�A�c����)R Ii�@8�av�3��<��v�(K����O�c�B`�E�0�@L�8��XM�M@hS�c��{��tN0$U�y�,���5�Ls�˨��;B���H�0 �ڴR��v�a�O��n�g�y�Vޢ/�q �py~�M�;aF�F�y����6�Nz3���Gl?���-9��N��������������i�bd���\������ǃ]J�.op��+y��y�
��b!/�a"Y�jT�`�$�d(��1Tlƴ>C*� �#���aN��эX��� �E�m�&�E����E�4��9�s�L/�a��A0�! P2�6FK�,Sӑ"����"�:��Ð}�6�S�������U $t�Ϸ~�'�ʍ_JB�~ޱ�g����&���~޹��
u\���v�1�2Wb�\+��v*9��`  :�?�"�:�� ��Q��,��E���'�l�A�� �C�Х�� �\'����+��"pl��ʜ��&�Ps�B��{�t�9����K���d��<&st�>)1Mrӕ�\W%˰�}u� H]�	�Pa B|H �MPt�z5" 
� ����a��nw۝{~֚guN��$�j���=n��d�Io��|�� ���|?j�ٓo-�K>���+t��'�N'i�x���E^�6��K,g��?�r7��M�2`n��,%���\O
�7�:��)rcx�$�ׯ���$�������*Cg���X����.F\�x�J
RBq,���\^�b!VS�lv��	�"!0\@듶w���M�P�'��b��1A��ؐ(��*̥�Uy���P�%�����V'=��	��0�(� x�2��C
�c��uX8$�c�b֫���9Z�m���,\<
�tI7w�J����O�2,ߑ%B���p��S���!��4y��=�Jq��L���$e4�C�Ѽ���T�&el���t��L���a6�x�)��aLOV��5�p	� �c6Qt3� ��O�KFl��A��I��f�YE�$ 58:F��G�U�@!�0&Ё����߇���^�l���􁌒�f%��n��FKI>4UfiQc�����E0F;�I��z=�=rB�#G��!�C6���'��HJ4k���V�F�n���D���T��9��*��[1��J���Z�����7��v�F��ʈ���;�!� J�OYL�AN`2���4���B(^d=3��u|MB� ��D%�#< �. ���h�x�*�ش�R�9j(d�`R���K�4�Qb�ch}��$<�{H�2�)qx���GW��B�N\�4��=5�糾��0�h5��dVwd%�z��[&=�s)	��S��S�zFX�E��Q�z0d7{�8�[IQ䢺��K���9�f����(	��YB)��j,w��y��v�H(���=�(�j�)���v2�hg��a/\f5�f_l뚅��j�m1�� ��(C0�b� 
 tXDLI\>1��?�Jz�r�t�>�p%���I`�	���O��b(cQD��� (B ZC��KF�>��l�X�!]��i�<�\8���5��cm+1�bsyBCuI�>��W���1���=�B,���*z���U��N��z����ؼ��"�	�HuA��m���	�H\<�̪���ݲmA�ٽ,�!a����٫Y{�*�ڭ� �%�@CŊ�r�޶��Dl��7A´�A�RC���)�`&����7e�� H�:��&�8 �a���	Ax  �"P�p481J (�L���"؆���C}��MxA���+��t��c��؛�:����c'��/c�����t�K�r72vdq��v '��z��G�q.�v����������b��������}���;T$&�)���V�Y�����3�"}�a� #ͦ�kÉ�j�Y�7">DDX\�D�1�� ��b3Q `4t q�X,�t QK]ʑPa!B@��B`tT�i@�PqBt*�p�X �D i"�	c����"B�b���*�� �һo�������Q�K2��2��x*�K�F3�,e+�.|�+pxx���*
�3��:
��+�/sl'š�� *�X���#H]��;P�Uݪ�a��b��� @ >
���b3>c���`2،�"C;wj�e�tm�p�����G���`���0� 
T%� ��a ��`�ßa*ˑ>nd�p �h����PT�4AP�p"L8�A@  S���ۖ�8*^�yJ�AR<�H %rl@�tX�����$p�����4|�>'@F3�|�b�ʹqX�!z��^$�FZY�їm<�ô���8��(g�H�*�Nc;d�`əB����h�*�i�؍�q�_ܩV�Ƚl�������FO�1Z_�V�b
�L�6&R��L��v��~�T.�ߑ����b�)�@K�jr��t\X �\�ȹ�r�s8�!�F�YJ��N6�  ����C� �H ��g��0k��bȩ�a���?�	\�(l��J���wN���P^�Vl�}��F��g	ݟ�\q~��wUŽ��S���/%Վj��%�ݛ�ĩ Hh]�B���8�Y������sP�csȦzg�~���2罾�^����|��v�O�&����I�ײ�P� t >���'�`0@<\$<��SI魒��Q�t)uz�빗CD�I. ��}�fLzg{��g��̟d��N�q��$DȘ���;L0�(�~[���I`�
��h\<h �4k9p�Y���s�t)_��Ț�:������T���`�Y��)���ʪ4;x����E�M}p�\�@�8�l$�5ifhT�JHi��dˉ<�2_�s˽""
aD�s1S��C���
�0肶ݼUEQ����}46y����L[��=f���GI5�o��K׻�F��Э��� �8ws!	 O�����XM�{�|�_�Vx��8	��A���r�֧I��$�`�\�~�ȯfo�=p��4?��.���/�(�(�K�D�L��`���ti/Er�>�s��. JƱa ��0�3Μ�L��]c6�Q��S@�v�:�])�z����9T�pB��I !��&@ ��M�4# ٤$�	�k�I����� q�}����=�e_1G$��62�|�"6JH�eZrA	��Q��c�P|�k˻�_TS�!�Q���t����HM�R�/�Yj PA(0< ���*�FT@�EE1�9d��Dl7˨�n�#�QB'�����A�e`X�!ɉ$�v�P��@Ta�W�#B- ��֒c#   �k�^��PH�	��ٴ��]ө��'C4%6�� ���"$
"5\<$652A�"�!�Da��<����t�r;���1��ܢ-���H_�Eu��~�� %��o��HWUj#����c�  �a����p��7�8��Sԇ�&�h.NF�Jܕ��(� ��C��d.����L
� E�MfȮ�m������?G�T����9H&�˿��$B�{�V
P���I�&h#���L�{��#aޒۘؔ��SP~U�� ���P�@BR�Cg-GE� ������E���aq�'�U��q$2��9K������{X�[4�p/��"���e�"D(T�Rl�֧l5c��DUQ�c�  �  �� ��� 0��Cy|�Aa�H�u��x����>@`�	��7���;|����~��C�i�   �[��Ptj�e&7���ΛK� %d���Ca��aBA���:a���uJJR@E��(SC�n܁���XA	�A(1�4���AD����%W���S�����R���9�:�L�@  ���z, @�O�� '�,�a�OL�:h��f����`�A��%	 aLA�@��� h[1�O�	C4t��`N��rc��O#&P(qӋ�^o��j�
 ܋� ,�|�@�a��<c���`���<@I� �(� "�uYg��
���f+�!N�����Q,B X,Z/Zxo�, bҧe(�9����@�0<Ŀ]� &�(�%�.J��`��E���
h~o;�p�@��;F[, X,�E���� � ��D�+ D<���x�C@�@�a��˱,��� ��P��u�N�))�<�D��9u�v���o�I��K/Z�� ��i�[�� Ȳ��.҇@�"ƽbhx( �;�#''DRX
*����M8�d\�S�g"�v�Ax"(aN��[Xo�A  Ԣ�dZ 
b1 �i��@ �e����oc!�H���X��
�H@0�~�.���Y�:=X+�&@��%J�.�*�F�S�b�?M
 �t�Ij�'^[��f�Ϡ�g1�,y8 W�M�D�����?�Gx���Y�S09q��[lbX��u1�Cx~�۬s��b	�� p��S�E� <���x�d	 � �>�5�( ��  "�@�� ʨ(p ��Q� ��C6�2I2� �������ބR.���*�n� �~�Quk�k2���v$eR6Me����i�ti�:��ѣ�_�Փ�J^�b���3g��ޚ6�o�c>g�pS��S{�f:9�=�T�C��sR	�qZ�?���37W���w4ú��?�?���|_Þn���$Dٜ��}_C����?+ǟ���jo�y��.ۥ��*B ӻ��w�k���7��A6 ��cC�����0@�JXq���#��az?����v���f~<�?�v�{Ρ�����B�g�1�  % XR� H���
$�!pt,*T�$@���H8 $"D�F�'����"P��D#��'P�n4�(eX0Ɲ����{#�\^^� � �������O�}Y���m7S�m��5��~�ٛ����׋�_r�sN'�z`�#���"�^��-��cJ"W�&�����isiQ�;F\�]�g<�ޏa|�+ŷRZN�-��z�nf���Zj`����!��h�0ze���`����8��8�HQ ��g�(
�(� zp�
�X�D0�{�a�bH8	�@� A� @ -�	�@&*%0!BBAç� �!9d�8l��͖Ѻ>Y�99a�d_�@0��R6��լ�L��v�١��5��f�kȱ?�S͸�8��V�`#���g�tt��J��w`=���n��`�꒼��.iM�R�)<;���S�{�����q�����l�)�?B@H6L����-fAp��Tu��D�;��'�|]�s�2���9b��r�|�<Ujc�0�� ���`���A	��@�°��X�HT8* I�1�  ��h���p���*94U :� �������:d��H� ���@ki�a��څ A ����ξ7�YS������<�=)������Q�;���7g��]�ܭ��!��`F�Nk���'G�ѣ��e���,%Bk��7��P��o��������������7�:WV #��z�*[iw���êw�ӎ4�!�$}" �g~��v����׼�ޫ�K� [�P��DAE�BR����πMvX,���������J a<)D!� l����h ������ C�( ���a!�q��i����)�2��>/����+@(�>"o[6���w��p��Y[w���nmk32rp���yG�mN��J~w�ؾ��O���[��ƈ�ǘ��v.S(�nx��4R-�518T����G>c��ͷ�[a[u �&��	1]�Ѯ��>������x*����2�����R3�}��t���Bݖs󪓁|��t=!)��� �}Fx"JE��K�}$@Ah��� �H�`"8�V�w �C��%N3F
�8i0e T*U��A\X >4�����mu�kk���}湷�������?�lR>�w[���^����v|c��q�4��3���[�ws��s;#��y�\�i��Ìr�խ2���4	�	\)�,ۙzu�|��@+̩ZL�n����a�5`�C�TF�T�b��S��1��ɫ���&w|��ύ�6m&��B�E�owuY���.�e!BY8
�(���/H��eֹ�:���Jݤ(k�z'G�3����2}���w`eF)���H��A#!�bQG!�z$]tqb+I�  Bq55��!�����>�_1M�  �����������R}��O�Q�Ak�v��y�;wg�ӹ���3����~n�E������6��D�GV�$n�S��2ю�&��	nv4Ü�g���%�$���rJO�1�L��h%� �Oy #���\5�O���^�S����,��oσr81s���X4QW
orA	!��x)�c������h!';4�as*[�SE��!�9�fv挡R�����RG!M�I���t!��1�	G� ć�A���K��Ÿ����5��0P��Dh�����X�x�NK�/��&֤���ҵ�w&�Y���]��f�L��<*}Z�oNk���Mn3�Q.bXF��Jړ����3�'_h>t��Yɭ��F|����6���HjB�i��*��H���z��8�W5�[ֶ�[x�xC��rH�� ���+� � !gB�o�w�u���x���(������� ;�|������I ���$��as�Q" �ЀTi&MS�H���M������yJ4���q�!F�"D�8'����e�@!��bx&����J�ճ�?~��#�n[��I��{�<�#W��W�ٯj���
�񋓿����Ǥ�b�&��kx������9�_GzK��s�}�y�{C���3s���t*?�KF���l�o�?�#��gl{g�i'��D?�|o����=�~G׫������ϤNڕ�_��LtU��dB�Y�o]�{	�pb�p�4��PQ�O����.Ǿ�>���w�}c��V?I��?��>���O߿�_��̯���\��{�xR��A��[����\㓤<Ƈ��������B���'d'g��&��ଆB�,!�SBIq2�⃑��� (�3qL3�E�^^���f�����X$�0L��w�Oو�AL�S*��ь
��D��cB3
�@d�F4?�������������'��߽�o���A~r�&2��%f�N�얘1C����w�- &��8=Z����]�5DIM�� ZU �>�~���t}ӧݻ�N'��K*�
#�'  �2"<\\�y?O�M]4�k|?����;���A<2�`		c��t�vn�᛼E]4<<4�c�\�d+����Q(���]�����r��[B��[�  ��A����D���<V���|��<�C� �Þ���T 0@�l����W?���k�$o����h�Pl�B���KZ�W�g�#���fP묙��y�E�&3�ώ�m&�����O�wn���8�b�GW" j��.GI��f�0�R� &4wk] a�d�?Tm���1�W���}��e+(�CÃ��7�p�  l�������'"����Kٟ^�߼��:���"Ǜ�2��B`�e�yY�bH�0d�!LL���ld��"6�j\$���QZ��:�<�x@��`@ D$� h�9 ��"�\�l0�fj� ف �x :�|Lg"�dYC=�[{�E�ܞ&R�"��W#�\ໆ����[����?|벷���w������{�� k�d�Q -�˞1��;f�V��Ξ�=hG�No[z�B�,�N����M^���nY��&�`�����9���-9�G�d�y�+�ST�������0!00@ �� ��hh�-&\�6ۮfC�/t��r��{c��!���+G����	��3<�O�ȳ�2,�nay9������٭h ꔉ��3��tn��hjhD�ISM*H ����L�ٴRc5ۘᐍ��a�q��)c���id?=�?�_��,F&�:��C ]�f��s�н�	��?���W��;Ҷ�`���ѾW9�s�Tk������n��8�;+ r��$�;�Gܡ1�����଀N����q�ZI���tjw��A!-a^�os\gb�+�r�]f�X��Y�"$� �=,4З٣�Pm�s��<���vB���]���f,�s�KEN�� np��2�-�&�p؉A#�`��
BY!/&!4��u
 2l��R��P�p�ӈF@�.J4a�F���c�!�P��C6
����!�pa��y��|D���IrЇ���Z����O�D �t���J7~��;޵�u������A��;ѣk��=F�c���Q�`?�G����43д9�/�+"�
�����k%Iێ�lm�ֶ&L,���.\KL>��K�8c���S<.�Ȑp
���!  �p! ,�[Ncw�}���*��t����R�8z�(%`!l�2�x�>��Դ # P&�Ǒd���7���H�@��
�$���	��Qf��F�)P�CŢ�a�����s�F@@���`��xX�fޟʅ+Hķ�[���u�q�:@ �3j���g�u3_d��d�9}v]�5mzg���1s8�F�=��y�͞&�&}��iu�.� e"w�I��$�.�ݞmM�����y>��(����	&ɩ&�(�ч�&A F�`@`8< Wê��� �˔����
o$x�����zRz���
#"�x����FP0��b�G�$�+2G"Б8�H��@4B,<T8e�`(UATPH�R�EEǇP��C�u/}D\XX0T>4 
�R���%�A�<��HjP^�5$��:����q��W�/�O��v�n���e�|��n�i�������{�1Cu�i��n�I�j����Z!�D�Yt#����OkbQ0�VL����s{w��L?����O��
 @����i8L8L�:jt�X�%�r�����z��]� **�L`"��@���� 4�Q@D�H��DE���j�D�s�� ��	��a�s�9�ܿh�Iۭ���ᱬ��{��|��^�o6  �������s �������s�C� �/�L&��x�}:��Jޭ��h��^~/ ��v����e&@) Ah  |�ћ@  #�@��f'�	��9  ��W�?�i8#:C�с��Q� 
�0�m�'� � �|	�y�C$ ����ε� (�|����u0���!�;a�9�P���w�Θ	�q��L A���[h�
 �������T,�Cw��������ͺ���&��[ICЪ�j��~�^�e�c��f.<��li�GG4 MP[B�:��v X �$ǓS���2M����rR����$��0@!m�h)��ꑯ4,
���k"�T9}��'��酓� � ����2�]��Ͷ)�
��������SK���{�n�l�e�!X
���"���2�$$�B9�u*�!9=.p���hW����#
�Ƈ��W-�xb%"���):T)�,�{? ��+�3�J��*�f����c��jyG���1�WI�r,q�@J���K&9� %1�@S�1XNkB�a��'@J0���*�bڋ���1lX ۅ��E�#�,�@�p߱����h3�\�,�/�(�����w�A�6�4Y�^`0����1�� �����N���P�GHB�>��b��x�aI�0����� � C@xx�."��&�	E�w��
�k�]�,�q{mB!�?V~#q�WU`匯J\���3���"��7-������I C����`�Pz �h�B(���
|N��3"'��#�HD�L8O��������q0��נ0�ijZ-l��h�'z�H2	�Y��B�����mL��t�T����ђj�˴�t��+"̲{�]/���;Z���'�V�nw
'�ޝ`a��r�>38��p/鳂���MHI` Ah�!1�f�_=� @ ���'�C�j�3Ŭ�Qyn��V�a�Zf�BY8B�6��w�~��y4�NȲ7�"��g[<.d��u���a�lK���� ����p�n��DHN19Ò��	��Ӻ�.���(�(99JF�z�){�)W��P�h|d���9��?�|��)�[s�<��~ab3}$�������}ȂO?����N�'ڰ`4�ɚ�c9f�+�2���ﮞMS^_��S{�`����F�X.�|�9G3K�6���Y|���6鲊����)�2�-��Y�"4��1�]�W� 4:�����\|��n]��r��1�K`��,�v�Z
À�Y�2���C�(~���+���?Vԛ���I�	�Y�M�"D P`(Dh���`0Q-AR&E�8�7��GG'GN��c!	@ˡ���G�ï��M���������>�{���}s�?��g?���g�O������?����A����O}�Ϩ�ٷ׏f�ˇ�N�>m�t�3G�̮$)�%s�dǦ91�]���9GS�P�/�$�b9<���L�I��(+�:��	�wy��B�������?����9�i|�F���}K��7�����k�=-�� ��$,3��ǘ��;�H�=����h�Z_����{t���V�?��s��?����( x���S���!g�}�ghػH00�&Ъ 
�ѰA�@88tl$�:&���!�TQIU��ЂF�	��H0���E�@���>���{_�*y�o��MF���׍_���r��r����y�X��H$��)��@���P�?
c��]q�XH>����S�<A]_.�wZ�'y������q-�;!��H��t��X��	�/-qIò�2'�Y��i*�����|�I�?�}��@����~�O��:){�pIZ�\<�
�\w[��q�99���#��>�7X�T�r� ����JE���m,s���˭�y�wH0��P���Ƃ&��8Ã�C#P  j$q��p`�|�����Y�9bpƇ��Ѡ�@Th�ϧ��>7�E�Yu����鷿�?^�R_o��>����O���y����$��a ������g_��d���M~|/s�Tw�:zy�f-g�e�������/%\�&9����t!�{�iΞʂ�w��J���C�ie���@�[8���q�S�\�g������ӽ�c��a����g�VJ?,깔F6uϷ�����|��U�L^,�B}r�
8��P`0��R=;�������jѠ��"3,kh���h[�� �0px$I�x�)b��D�D�ytp�3ė�&>ʜ%tH�����������俽�{7Q}M���?��|��o��ܿ�����wm?���~Pd������C /��I�%b���=��SWg�����e��r9�ӊ����f�ͤ4��f"���TvrN�߱/�J��
��8�	�J����g�"b��J0��I��\KfŮv��?׆�Ca�@	���̉�\{�3�f͈���{p;���yZCt���_w��W��>����G
 
c�櫇�R����~-��y9����A�Bܰ��o�U�9ږ̄�����yF���,�~lV�J�2/��s���s�J#o�9��e�vs$s��"*������41���>U�ݺ����������o���������;��#}���/���8/���7�C  P���2�<s�gy�2O��gM8t�b�0M��i� ���*'�4O��[6�f=m2��KѠx����X�\�d�iå���ܨ,�ۿ��Wտ�x)��H�C�I&?0#N���{�yl��s�s@�<������遼S	���*'��>E�bH��S�Ħ��n䱨S�f�Օg��ޥF���
a�  L�����\Ff�SF�V���YK��[Y£,�X�P�_{5r,J�5��T����,��u��'+O�6��7�����q/�on]�~��i�������7���K�@���J��O��y���	)��̪�#5�G���̤2r�� �AQ�
g�xN6����A\W,3P�"A�h��I�����R�&�vP�6��$��ηy��>�A�տu� &LP��>��d�i>.�|�Yow���;��ש�rq����W�M*�tL�	�:(  Cʌ�9Y�I�I��6���wfGǞ��%�ӺI��{��z�Q�t���p�������n\>�F6p	۸�g��u,�*��cE�k~��;�(!Z{+&/P�tb����r%ez���}��'����ϫ����{�ڕ��/�������՟�h��<��_�^o��~˾�	@@4 �Q�����
���5Kb��ՙ�g���F���C!�t(&�$���j��@#�[�H���9��մ�r�a�D�_�/��r1)�+����߭n���azt <��>��c�驁�L���ß����Ψhb�~k��%�ǈ�� @c��3:)�O�M�D߉Pޛ;���9,����Sh�9Y��!'�{0�����*�y��燴�a>��	�˵���|�Z����$��6W#�ݟ#ND�4|��8�~6���$����'��Q�T�������]@^'��>a��o�/���z񯿙s��<��^� �O�N�̯�ʈ���1<����ب��Ô�s��Q�9��i��Fr:�h�NX2h���u��m*g��m��͌�nť�{x�(�W3@����y��sC��tw=�y�O���O@��>N&'�9P�$�5*�.��tUH�6nW)����
���wJn�����zryO��b���g�\c���*ŧf��>�ͲI�޳�g�y��L�����"�x���sD�,�J��.�(��q`7��Rt�O�$�*;Pi��sy�{���ϧҟ��=���{����j�Km�w�?{�����Q��/���{������/b��M���D$����9~��"���*tm��Է�7�w�{l�46&��L����z�/y��\+f�c��֛�g_������%-YԼ��=���_y{6���/�W��g>���w�����sא�]Ne._�6�����l�L"�ʏ��6��U�7�n~��|�|�H��@���_�/syd���U��:�}o�9�_?��������;����߻���%Ƥ=��Q`�$���7�5zf��@T_]̄A�FDĥ��Z�F� T�@��:y���ç���9���5)>�w%��y��|����8W ��=��(b��$�{�
�*}�ϧ���?�����������7�V�'~6:'x��_����ny�X��M���?��)���Hⱚor*����H�9,��������'�Rc>y�'`����ɓa�X�`w)���S��|���؍� ���w!A2�K��T�[顂�DB���������,��%`xb��tE��x�9���s�`�n��'�8���H�X7�Y��İ�4�q+���&u�'>	#�=o�����y�b���;�� ��y^೬c5�����*X ���Hs:�t�ϧ�7_7<%��+�V���@����	�>��f)>?y_�mz�4�'?�/?� \TtB�$@L,0uj` *�O�LV�v
��t��ca��]�ݮc%x<����0`���c��:,k�#LƧ�8JD{�'��cP�� C���/���<��������qp��O��G��\s�;^��O.�w�ڸ
E.�A��8P0<��������d 	�A�������C�.�M�cy?��n��Z�|���%>G��vn�I��b8��M,�l~&���}��_��-�"��Fh��:����d?>y�{��,��� 6�E!�z�ţ	ID�a�Y�DH���D� F��1��~ZȺDX,��P0n�I�(Y
�L� 
�b��'BX�ZL�Di�@�:�H��;���x�� �3�X�	�����q��7ꙡ�m�s�g&�x����:]�"\xv�������@\W�hd6OS�8�G��!D��E71�������TP�$)�D��F;�+����/�
@��?�o����1�y�����Ṻ��+��T" ��@ACA@��0�bax���p��� (�y�R��pa���?! (8(,�n*&�G%��� $D ��P,HX ��H[$�&��V�#9ݞ�9 ���	N׃�;�yS9����pw\g�CA).��� q$(X�2S)�d-�(U&qBBT0>q|�,C� B���N������~�3l8�4�7�����{{�N��o��=����������	��,, .�B!D�F`"0 I@PQp���Ĥ M��(�����xx(�X� 0>>���š*0��1�B�Ct����1K53�x��h�&�x�$	8yE�;Kf�wF��)ʹi��ejP��u�.L :.Uk'4沆*�0���P��:1\0I
��HrX(P(�
It �8:�q :U�(-��)��)��-�D���z~(o����>��o���5&N��DEÄ��` �x`0)4jX�0LLT��0�`��E������h� Y��p8 �p���ƅ�E����LH  ]�ئ���ЉfEGФ���1��8y
.�M݁���ښ���,��c�
�"��D! $�4�� �Hy8I�`J�5��(�d�D�p��?���?�QF�(��������c�����O�9�*S��^��V��D`�Cq�$��	���fb� �D� !�)L� ��6>M�p�ȪR "Bp���O	H5 �O��H��D2�0@a@EN���hġO�;T�[�Kcd(a୓��Eap����6֎�;�O�����R�U�T�1�x9�w���0!��PG��`�����ܷC"�   p}    ��= |���Ƨ�x 4��D`T0�p�� 
6c �&D��Pb8p0�D|h )��a�0P�X xtB�XH��@(7� �u�  no �J������l[�X���򽭄��vj<�Š1"��� `v�'0�����	��   	�.�T/AP0S̓ �@t�3@� >1v�LF&0a���o���CS>�!0ݳE�D2ֹD��9�A�].-�0��]�l�ܷÀ!@@ D8{ʇ1�T; 	]�`@! �A#�\�C0�%�YZ���:��Ap �)����� @L���J�(�� ����]��HF<&��ܷ�>�AQ@p$�PO�drJA!�� ��� � �`|v�x %�@��v�D(`�8S>��s � E���LB��?�G ( �kw��+F�0ྜྷp$�D1��HH�+�B~CRz��#�v�vJ��߇��F`AA�恦^8���0����P��"2ޗ�
�CF�ݖIHD
��Fh4B�8(DDm���a���X�N��� h���`��E=M�U�P��M�q�n#S�i�T�w�-���^`�Y7�v���A�������NJ@#UBlR�� �p8 " F@@D B�H �!N��>�D� | �! h$��E��c�Z��C���(���0BZ�Ƣ�@`ZcfC�x�!�5�IָRͻ�\���4��#|^��|���@Ij]�v��~���Xɓ8�q�0��	�����nj�QOB��mӈ� �c��a�$��pփh~�u�M�i���m���ɼ�����]� m��g�?�����2�A$0�B#G@�@0"b����� (P ���I�L  ���P 1|�PX�H�x8x �"@」���p0�`px C�`�h}� %oh��ڝ���4-$iB�@�j`"�R�خ�U-1����.C�Q�� �!@��p��P�;R/�!d򸰄O-t8 :^�J���<�8���m��mmd��m� ��=�r,\l8k��"�� T\,�h:	G��8� "\tB � 	@H|  
E! 
�C D���@�Ɂ�aP�$�X h .\!�P, c�>IJ����|/#M�Tu@��y Tx�����Փ�έa�@A�>��|1w��`0�
�h`%���u0xԓ���Ug��B	8�ù��Hqyn�F�&�P �@m-l�mc<���l	#ֵ��dԑ��w#�:� �:Ϭ�:k�  U8�&:�P����D(��L$�.!

#�`d�	H�4�����N��G
�C�"td|��B'6>���P(
�@XEi�g	ٸ#au�u<�}�W.;s�VߞnS���[9 C�%"o1��WI�|��4�@�H���{.
o'/߬|��p;�0iv�S�4�pi|�r>�w�b�V����)�A ���E��� ���o]@@C�'ݣ����32��8��%$���{�d�	�����dnd/�C���A$(É�␢ G`�QA�H�!�HQP0�G�RBSF@������<���1��aP(���%#%0�cH !�<9��ՆA��Xh���G�@��zج�;���V��ܞ��T��,�,;z�'��a5%�����Bu(۶
�K�� �lb���O��ÅlǦ������P8����|z����t�0�&��Gԧ�Z����8���s�w�~$�L�Uh�t&��  g��8J���s��6�4���g(H ���B��!�a�baS� ��Q(B�
�"�%D��� ��QH@@�1�!���5�šD�L<*(�@�C$p(&!R���X�F,^�yHo��范L�0�*�65����c�)2ާ۬j�ɴ r'�K ���s�l0�M�-��ɩO7Y�؛��m��� )(��C�� ��&�����a�Y��*�9x���Q��� k�a{9խ(C�}����L�i7�*&$��9k'�܇ QG�*,���F�!� $<�4�� ��SG��"���^,f�G�Q*:�: �I( �0�BQ��F�"�B���$���U �x�09BF���.0zp�x���M�M� ��3���l�TpǄ=��}�/�5����3H�8),��s�e��[z/�&��TR���`ɱ�1y������Dp)��d��B�J	�Z;h��K(Ӽn�"O�;���#ؑ�L{��-F�\�Y�t�4 ଝ F�I�s��or3#33��ϼc���Kl��0f�1�B��f�f4z� ����4`���X$��.:i�2tюI�]�c2�Z
D�ȲF��& �S��4���$��*g�E? *,�
]^�nr�G�(�!/�*C"����|Bh�&7ې�\��fL�&���E,B��͗��2{��2�y��/ �  @ &R��P_`���;tB����by����1x}��`��!���e����.nC��@t(��5�t��S"���(�m�����<[�we@S��F�%$���(�(���{w���M�~��ӛ�>><�<�����t��������P�T0	��[�|��9(\x,�4]E��'���9�v�!le'�q3�<V��*���q�����^���3�~�~��?�o��f8��S�Æ�cw󗯹�zʾ��O�n�=7nyν����/�^����=k;��9��� b!��+��X&��`(�d1��π� ]�7�g ��d���*��\��{�s��r��s������&�������@��'D	�Z6p,�0�]������p?;��_r����-��I40�AG`B�x$g!	�e�J$a��S��)0 � A�������4��J��� (`,JD`��G�=PT7`1D>q $Ki��t��^�_��]�*�S.��p�}�Wv<�;��G�=�9��3�i^�����Mߘ��o�p�������]q�`�sޓ�����»X@c6>�4Q&��i��B3y&}خ?ń�����0o�{mV��SsZ��2{�}�1��(��@X9�!�A@ ���jY� Ȑ��kdO�5��7�e��x���q�(b�<ǉt�c(p ����f��v/0�" n��Q"C�17��(f�6����( �Q��H�X�aq�p�Ղ� �!" 8 ,�4�R��CJ�$M Rl#�
V�D�=����B�z��RVg��_���$�7|�3��G�w۫��'���-�_}p���3��p7n~���"y�	d��F?�;��-��� - &}�`���LΘ�D9n���c�9��^�?��c��䬑0��M��&` ���)��`%��rn���xPX��>  ���D�H��s��SB#D@@�{���CR��͜�����H��#���� ��������"�ï��b����(����D��� �i ��(��p�M����1Z7>�S:k-��|�H&_���x��|g�>$Y�>����E�?僧>�k�jS՝|�6M�g?&a�e�����H a,�����.���q@h8L�@(%@�d�,�k=�Y�����)Oo�t+˲�@	�t3@!@I�HIJ�'�AA!�]"Q��Ȇ`�������p�9
�9Z������I����tA
0X^BP���@ 0O�o( (���0("PA�8%�_-eJ�],�ʉX@�?�����H�B�B��S�@����6?�S�����O�я����e�������c�~n��_�3x�֯���7���7����φk^��&�p�ͼ�PIc���)#Qј������M�%�լ粜��*s9��9ߐk,i�>�2W:�����p���  ��������K|\L�d�ᛲ��F�00@�`
$ �4  �:�r� ƒ�Ga@Hr&oE�F 0���@��1�!a��}�r��*z
�,�I.lh�AE� �6nc��^��"��g�s���f������G�|w�eܟW�ȯ�������^}�����?��\ �t�)/xW�=��s����+)��K��NFI�S�Pa�w<�CL�/���%��l���]�N���?�ғ2/��u�S	ơ��׈޾8��M1r(䉡:>!|thh(( �"�NӀ����]�@h/A��s��!�o13�����V%(�x�Y�RX~���X���G�(@P�ş�� ����C'��(�Ǜ9������b?��ԋ��K���o|�n�q��q�QW�^��־=7���_�e�si�>{?����Q�9J�܇ﾅ���r��~��a	3)����4�I�h��#I��}IH@��K��}�Ň������*	\�ؼzr*V�(P� C   ��a��� �И��X ¸`�DC �S$�8>&��4p���w
����xM(��ތ"P,�E��f�(N
H�$� ~�`%ba&�AJD
80�zc�
�X@����b�h�D/;�%I���+�ERo{�;���7*��:;:YU�"�ӯ��b���p��{&}����ӉN��Hj��N,����Ti���؎��2�>|K���9>�rR�K�j��}��b�Gz�s��12r1	��  $2�EX�gD"��v�����5�b6�h5�Z��>%]"u����NF!>1��J	N�	Fi}������f�8�s�   ޔa�F-Ý0�x�0X8�n
�Fr� >��w' �2!���=N	 �P�� ˫������KwM���'q�\���� EQ��Y^͋�����7��߯ku"݂�&��@�أ�/���8�zj2]��!Y�k�Ɋ4�"=QJ��M�[�XF�����}S��ov.�É�\k�nټ�8�P���������~�=��������CR,os�u��o3+����;	 "���*0:1v1�TT$�
Mԁp!�8!K�c���U�X6�r�3ߛ�ơ���/@C%G Ge:�Q��� 
f��}  p  �<  '��;���/!�X|כ]�r�V��L�xS!,�3�����B���?ǡ(� b�F9	�	�)�K�F	c�X@�-��X�Q?#w]1��) �i"CIk(K��dNX>> ��� �����@A�����G'9�� ,,"8������M�27BS&�Xle.���"x"xOJGo\:�Qu���Kz]�L�s��B���@4��N+ � Q�H�=�}Ok��Q��Y?��*XC�J0[���V��(51�Ur��Xƀ>�u��[d, �"���`������ayg?�����z�(A���j�)���٤��?��  ��A�N�0G��)�z ��@%�TsCW��>->T��k�����I�7���!P��� } d�:|8hL_|(X|<��0p_ �E��+�a�p1�@�PB(�I��d�#L��ԓLR�g&s����C��AL�'���C�M�K��3�.��r0��Wbw���XĨd����\��n�e�_����hi�$j{�em�T�I���MqD7h�g}��Asvy<F���%
��ŝ¾^�u�O��g}�v�����^q��U;A!�`@ �0���@F�GP@   ���� A,����ȘH������3$��Sԥa2��R�(#����X<%7����"p�)�r�!��ф����p�rQ`4�� �` Ѩ��h��Ht]�b�H0��ADL~�O��δ�jۖ��BL<Z���SA'�˟�,�r�^����?�uIP!q9ǈ���\��|��� =�`�f��d�����-3Ogww�H�j�f���4���﹍;��p�t�#�7�А�d׷�H�L��0W��oR���aq��	D��o��p<���Z}V�� e��``b��%���Dȃ�@ 0��=�
��P�c	0���gH]򼋛��L��C��{v:Z�Ajq��ت�5��C���xxx�N(?���IV4rHˆ���@����A`��q P�@`���@x�'!p7�� ���H�O���p&�8Q�P������D�ޯ��L�}��P�����*����j��s��.+�2�`*��_���:.��q�.�7���jp��:In��6%RV*�����2���}��=MЬ0'�V#�<	B�p�*n�n>�)%bY� ���F����8�0f���� A�B��@QA���� ��	Ԏ�����*x�Rzs���ݼ�WxM��ckT'�U�R��j1�M< ���� � 0�:���R�Hrb�'����2 	���T.�2��|}��t6$Db `�PGK '$d�;�Q���p��r���c.�(��F�'��M6�ޗ����3�j@{���B�x��4sa�V����.Y������� S�?�Oh)�>;��>����)òL} <�PT�i�H@ՙJ����o+��	�(��ŝ�z�jE%���M�q?�(@Q�`S��'!X�A����?��00����U6 ��& g��ؔ]��R��
�1���zO�cШ踈���� ��`�f����`e��`��$C�X�P�`q�%G�2i����"{f*��\�1��4vJ GEÃÁ��Pr���Dd@����[�8L#��5��%vޗ�����W/�${$���0��k�<ȅ�-�ڸ���{R2�|�&����-�e�O/f��	d {����01LOw|��mAW26w�u�'�d0�܂��KtY����� ^��B�f]%qy���Λ2�����p��� x( ��$ E�����t&�!��Q�����m�+�i+F�&'��+��iU]�*�vzN�~z��Fb>*"�L���2k�f��0}������0��\;��M5��s���JE�:Wg�ܰ2'+d;/᳐�t1��P�A @&�i����Ѐ�@B:�hT�@��W
{����J9���ěOG=썜��M�5�.�'U@¢�'J�7�r:�ڋ�7��tE�3JS�����f����ڔ�w�1�ۛq;Ց�]�%��XFy��P"�Q���X�5�_��q5�э��UGFR����Y�? 
���Qm#�4/"0� �*�m���"��`�d���g�|ʽ�O��M�>�F�ͺ'��-P�W'�(�I�StJR'��M��U��5 &4-��efE�il�Ӹ��M���9yD@�0`�UA����j��k�o$�.y#C��������W���y�D�w���gi^��V��Ƽ2;��a��_��ߟ=��y��}�����?^Z����v�\z�@.�n�$˟���^�&�߸�w.��v�;�J&��ʫ/��Y&��"�$� ���;]��u2����\���3���o3:�d_Ɩgib.>��&6�*s�s঒�S�Q������4�^�I�̆��ȿ_��+o	�!�������(��L#�N8f��M��bf�&�?obXMD�L��|�9�
.��k���_�.�׺\KI;�Tx����D
w~s�g�����{B��Y�?�_�vy�Q"`%˯b9�����λf�\�ju BF�`&%<�$)�L�a �A���jׁOx� �4S=�� j {&h�������f�{%��#�Wx(��#K Mm�0L�ȥ����T\�x���o���NH�	�g�%Ca���vW�{��%M3O;�+��Q
�𼕐���@��	=Y�����J�ETыB�`��Bj�ť;��5Gm��s]���n���q�|��LT>��$�A�it?��SF��)���U��[�G��=c���I�����zv��=SE�0Zp)�B�I/�.��A�A$��E� ���>��@4���$	$Y6˲L�a��dN���0A2�=i>7�j����2�Y��E�0����0O���jf������j���8�`�g�
�)O��<��"�`
���sQ  B"�r�{  � �]����(ӽ #�L������ǁ�������ȧ���#t��u�.�b��)c���F�PG�"��ax�	�a&�W�>F�0O*%	*�85"¤˻�i?�<�;r�F�/�.��*)����E@���V
"A���癮,��#H'AT��A@JJ1[X����.��3��j�W�F�&��;RFH�t�;�ߣ�|���ѹz�~��Oe�/��xD����l�I��xq*l� "�E3� O7_1� �,:x�=и�9�pC����F��%��`d<B�������=q$�𔳵x0���d�3�l� �(w�e��R�I�Ӏ�G��$�Rb�'E�Y��y��2�C$B��]rv�@B 80�\�> A <�F((	 ���l@ EPXXb�b'����@   �6_�Η�Gq��)�v�E����YĎ�;)pg��(��T�T��	�A^��xO̊;��?�5�^Wfz��m�Qs���ȩ����a���EV�[|M+^�;�� 0�0$��CCa�! QE�13&�փ����CaR!��i�p�#��]�c����({���>}zX��B�!9Fo�3��<�rj��q+�f��/��ŝ�eN��A/W�#I�(
�xp&�0,:Zp��T��"`c�CD���BÁqA��A�����}nb�pXoN
�0&��0 �{b���
āB�!�Bi���]��`�H � ��,��
�` 3�^ ����	�P�H��W�@3��}D"�hr7vǳ5v1��@( j$:�<�����i��	�nĘ
��v����6*���q!>���i��|�(���,�N��?�w�U��i0�S�Q�x��}�G(�^�_�
�����2���`4t\l(�	�2�L��AN��#�6\�)�PL�V���J|-;d��ֲ_rE�6�.}9����w�RZ�I$�:�y���y����D��d���B{Y�� �$�^62>24&YD�$N�.q��"��X8а�>���1�=�פ������@8L��� F%*,!���
 �ѐq�Q���G��]�Inp�%�5r"�. gqg�P0�@Ȕ���  �q8  O ��ӓ��x9)�T����q��Ax8�9f��#(v1�'!�v����!v����Z۸�o���R�]�x���B����"dG�uW���Z����8� ���S�}���%P.��ז}�m^�r���:� �_���9�VD�Lh��4�������h;�2Y�G�� [�J5i��Y���v1�]���w'3�sv7�]N�}�T��#�y&�I�U���fٗ>ّld��V��dc�����K� ��^<.%|\xx�p�2	��@ݗ�� ���|�1U�V�+��-�z�%�=,B�.
:C$ D���%Ha�7}�(�	o�6%���b�(�;B ��@�)��C		�	P����A�C(�`<	�`�x` 4,4
4�Z9���&��p[AXyN�
NZb-�d>'!	��s�Rl"^�)>��<�H.�*�|Y�<�<��}+�8�%��x��]���2]=:�������#�[fC;�a��x7/��2��B��!�K�����@I���}�.����A�m-dZ2ض�W�ks�K��VT��?���]S��q�
-�s������d��6���˄�%�d'[��g'�A�
I⬦��p���rac�a)"K�1|�,6PK�N � !�UR�M��}T�H!à�	/4�;9dtt�  <� Oƥ� 	Q�C�@�B`A��}VP6٤�, bQ*�;���0�d�E��! C�&��۞곧�S!�"��Qm#>]��b� xP���2�7(r(i""�8^��G��c��g1�I�Y>
3� �_r2��7d�t���؇O�J�E�p�}ާ�s0����x���~�y��S�+����ߦKJ��y�]>"�G%�������	��l#��h`a(a1��)��l��ȭ���ߩKܮ�����Au���5���bt��ˉ��D��2Hb"'��YK	@�Ø�C�p�MG�L@#�^>�<"�26-le4[ib ����M��}��r][] *E�@DLx�.
,ArP��q���D��L���R�PLHY�C�GP��e���S.������ .s�&�)r�@�Q 1� B�0\��c��������V��林{�� ΋7��D��u6���9�	�f!�����U��6"0'��u$���;i��1l�)RX�f!�J��a�����F��u���sKV��-��M�!72}��Äe�H �<�2��.䎸3������폐{ ߒy��N0p��m�{�7}y��w�G����7:����D9B0� A:�&�ʳ��^��ړ^H q
�H`�J�=��B�c�P$�C�J� X|�m A!0�]��!���Q�<0�Α��������l�<���:>)Iqq���t�G��~+�(񞊑�C���W��Q(c�s����58/������ |���J���D�B  �D% QdC�t� �5 &u *���F��!�  �	B"�������,3��G�1��Tf"�A|Xh0|�xd�� �����e������A���/ӏH�p��9R^�޹'�����&�^�x}	�+G�+�0xI6Y���e��9�9���8���x�[ig9��@����,.a���c��Ν�s�P/��u^��"����3��<Dҫ�]R�h�ݞ�z�n7'�}�5t���Y����Ϻ�c�+��A��c���R�ȡ�H��a�c�H�< D�:*BH��M�5̤�S�Y8u��h",�
� HQ"!�10�!`PJ� �8_#��C)�mb���B�@0 �Ll_����["K�\��
���%��ҟ��}�k��8`|"�I$e��p(� �����¢G��i�Q!A��u���y�E�����k��R�X�`7����d/��Ӛ�kw��#1��#���N�h�|�K2��w�f&������ppH��
Q�Ҍ�I�NJ���"��A�HP��A���@(U"48*� �@QP2�1%G���-.3b�
 ����I�����Ax=Y��^�܎�}�y���R�kĜ |_�����!���� �aШa���B�f B�RDA���ν���G�/�����$jأKo�sO`�
����>�Q�W��������'�*���%� ���?��ǻD��Zeh�"M��ov;M�N��"��2�2KL�H
���Qt��	"x Jt2�	C� I/)�pb��T!�A`(�&
�$���Z�[<F��Q� ��D���' *��9�ԋ�E���[|������a�HD1i' �O�	l\U",48$I��H\$>MP��$��{y�� @�-0�����N�=)Sc��`�U���Vٍ�}���G*$�]��CC}1k����I���ȳ�8�$���DR&���\Ҍ��&������N��8>�� ���X8P�����]"c<%��v��|�Kt١�7
� �`�& �!  �}���=$����C���A[C8x� �	A�hJ!A�� EA�a/&�D���B$��G 8�Mm̱���	U�'W�q�IUqąJ�U�&=',�򟥿;�n�"�� �k��F�ԇ��9�9��u�t7�{����Y��h��t ���/��P�ӂ� �$!��ݼ�k���N-�3B�<����J�N$��i	����g)�2�0�O'>��:�c��!� �	�+�!  (`~ a ��~j"P{ V	j}<�'
U J0���&@��I�FH  �1�AC!#��@��q��5��y6p���c:v���]3瞨'N@A0�,�p��J��_���x3ӸS��0����b/>�MO��V1
�"6�%"��T~�O'0�`�����4�0�2�%ZN��6��DH���Pb 4>��������
��*]FIWyI7x��,S0"��
�!B��=������h��9*���A� �-�P���P�`�aS ��I�8I�����b���1Ap��Ts�HT/�@D`�=� 7TːX�0��1�ӫ����Q������D���Jz�k���ge�����^dmy���	Jt�� �D,�DҬ�z Gs<w1�Mf>;x�ߐ��Ĺ2��,�*���;x�#��W�xݨ��p/!*M|��Q��N����.��f�g�[�<�ϓR���N�����DII���?7a04 K�9�6�p�sH�����+�q�������-��#b� �����``��%���@��|��J�!��A �0���D�~�`0.<y2	�Bq�Z�H�Q�u�QN_�UH A��A"@2X �(0�P&��.�m�[�U%�Q�`�N;���^�����)���������<:��[���>��i���}��?H|�So�m�e�M!>�s��f}⇾�=g��4���  ����\\��ɛ���bs�B�d.��0�$�P, .>�v��"�*9��������ܿ�
�F Ȱ�vj�px3k������,�h�C-�a>W�T*    �D�8�!�0��-��ЀVR�?ءF��! 6#��m( 6���� B`x�P@p����`@`�� "J@a,�"   �9u4"X`*T�H" !7  ���i�=���A(nYr!p��kɍ���~�¶��?9����=_�#��[��(1�兢#��e"0! �B�G%N7q3���|M�{1�k��F$�������$�#��F�J��X��Ǡ��f��#�ᲂ������2|�{y�Fh�}��� $	���w�h NK#Q|�1��Ӛ����ߠ�B�PP |044#�P���A�A�� �J+�4���"1� �x�a��(����>�D    I�AI�!rOg� �1jr�S���K��_��Z��u[�:؟]{�����s镗.�6�U�$��� h0:a��̥���@'�ى�*�����$�d��ie/Ug������N��Q��l`7��� ��CO7�,��#��5b\÷ 0"f�Q~L�#y9&����V
W}��p��4��)�ޏ� ( ����e$�M�4QJ��|������	��x LX< 4D�  ���`��(�1%r�p ��;����P��s��>��  �r�C`)���%����-�Ao	�_E=Sw�S��U�.�9q�ݜ�N�|�_��E�T�T��T	�U��c��f��
&��,f6a"al6��M�3�����68i4T��t����H�lArE�p3���������(���(�|����шI�w�u|��D @@  ΄��qZ��\�M�A��p�],6V��A�x�@>>
�x�X��`�����
��� 8��V^6<,80	��Rq� 0�H}��>����H$	|B"q ,'mR��B
9')"��%س$���^�m��p��}�_Y_;z�۟��Z�lG�XJ��GZ�:����2uF�A���X�hPT�I� 2��v�XO�icM\�5���4��A�q	p8�'0��hf=]l�R���r8�1��g�~�d��h��;( i���O�1e�ҀG'�盔 �A $�	�F8GhK�(���Z����`�H�:,� @P <4,����8&?��.~0>ҚJ�I(7��p���X�#p���(�0B���k_!E ��%K3EbĨ�rȠNn�8;�,�ѬW'�]A�q%N.��'f|��Dg�y�*�<�R�:rxe�Y�ϼ�
w�xB�C��%�z�T�c�����C�~&P��u�N7�f)	��od0��Ba,%r�e>����C�F��2v�@�>>O�a�b;k��.zP)�̗��#����B�u�Ñ\�K#�H�I�A�C��`�� A�*/UZSA*�g�^ّW��r"���A,L|(( ���2�� �v��g���Y�\� �)�g�.����., �x�"tY��{,�"0���ܭ@ FC��0�hH�8�R�uJ5���g��e��G�΋����;ڍ,���+����t�T�W�b�U������[A���iO0H`$���Y��a<��D�����,ay���U��UD�ċ<�G��E��?������,&O;Os4;h�d����h�D�}����w��&n�z�P��I�|�6T��E/g��.�։� �d¥��-c�N������Č�=�V�O:���E #P�e3�Y�2F���#@�(^c���	�qb�C�x��:���ϖ�W�2>6�0���g�!<	8�B�w�������ǹ��h M@�pȀ��K� :���OU��p_aK<��yw�l�9{�Yr����&�[~߿z*�ע)=��⽡�Y��䅢;(�V��I+�N!b!��
�$�@�Y�F�C��Y O��0��`f��?�N����4�ΦL�z�B��N���L����u�)��Ӥ�@(1,����1�T�R ݉��(`&�����#��2硞{��s6o�����=8Og>�M����v�=�[��K��p[eP�����r�<�,�ԋ��]��\�ѓ�{�8��N�0 �CE���ק�3�Ƚ?�%쫜��a��c+�|3ڐ����	��	s>yr���D(|g� �b+#�����r�9�,m�@��p&��]��1Q`@�ނP]Y}@����_�
����T�,|�ϟ��x^�����'<����aa�K���C��P��r��y��C^�.�ғ���� {�C]�ެ��3�J��Q$��A��(� ���]���l��ɕN������M	������ �) 0��p�`�ĕ���7��줞һJtQ�!I]%9�VՀ(P�����,�| �P��QZ�R���]z+����3�66rz��]�C�EĂ�cG�x���/��X�]�df�Y��g9h�[
�2B�)U�'�Q�ي:�]�l�*O����8?�#�sW��OpLH0R�Xf��C+��V�Ui��O{k��{���֎t�u������ֻ�:[�ɐf/��o�v���ؔ�7E�����I.�7z+B������DѰ�0@�t3�Dd|,1�4-b[�6�
�Ĕr��P�b� 04�x�^7o2��	r�qs>G9��Hs�,�)���᡻��cH���C�$�|ނ���W-���0sX�m��<^���&6�3���D?3�dNN�������O��Րk�(��8d�����,�*ai�qOz1S����Z44��o�f�tC!������	���>,C�Ͳ[��A��� e0HJ�V��J�ĩAD!�Y���B#��j��w���T�}%��4�>����z��%�Rr�OI3����|/��g��u���3�2���PX�$O��b7��(*�phd#aB�92��=4l(<x0>a<u�դ��y.�
6��Ͱ,��a1J';hb0�LD#����"���3��d�$6}��h���2"&S��0M�H��0%D7�(�k�er6�X�5��(�0�d ���H?3����ξS��t��]q�T�,�Z���I�ytu��n�D�g%�N��9ȝ	���0���b�N,d����_�rмn������K\;�2( 
 ��t�0��#n�G�SG 8A��E���@^ �Q���&�Y�&�T����L�l�07�D�G6=lⓜI�L���l���~9��Ɛ����D���W��*���W{y3�2��H�m�,s$E��mYC�S�/`�O̬�O�S�ט2���w��m\ɽ��ms���b�����ȇ�f<��ըH5ee�K������+o�n��w �B�   ��:K<J�M<]�����^>��������LAɾ�۝8���PZ���p!��p�R�S�F�0�?p���L�ڿQ�����3xl��kBx\�mp��b(��Uڝp�<�9�ũ<Ηr�r+��X�I�k)3��x+{��MPZ��&��J��N� ����O�{�̕@�Qdf��ǩ�wTуl��r&4G��9��"�>G2%^��3�ʜ�@��A�Fz�~��r� ��L���K��Z�]iSX��5`��  `�!3�E�'�r��X�L��Y,�ԑ3�T=�(�@"������=h'�d��^����=Gm������y�����u��SX��P�$G�-!a�0�ʗ�O%S��L�����g%yl��9c7�������V�͉��,1��I�o���6�$Zx��p6�o����v�^>{+Ǵj��0M�A`��ܳ:v�����سsm����!�/��*��P�����D��\����X.D��EW��N�&�F���+G�!�ɪ2e�z�޺{f�t�y%�����"� 0Ԟ�
��OP�E�QV�&�o�o��4�J�����9I.�m&p:4!$<��..-���s�B���1�9�SE�W!���ݜ�o��	����K)�c)�����}���j�"΄���1c7�W��4��W>A���N�IR�J��wR�߰���I�����+������RfO~`���﹇u̥�Y�ķ��x]�w�t�g|Ar�\�s���hg�8=�&-��Tw�O'lg>K��%���b��ec�< C �0fQ�k00�,�>�c�^Q`-Cn�xF�A��/�2���˩`���[�d�C	��ZJC����D�?�I,��8�NN� �" ��| 	3���\d���\��c� f�&q��G���|$ep�L\y�L��@A[�;D%��(�S����q��
����<Ʊ�5�q����)��i� �����N�M�茣����N$N�s3%�l�XwH#���2d��aIT����S��'}K�6%?�fMYs��M�s�"}�.	���D �|^^#�I:ܡ�v�Xg����a��3H&%��Z]+���J�ohD�:�aa72�(�1����	�L���;$M�r��v�Sd,7r5ă�V����׻�N��D�%�-���4���)�XJL���Fg���NQ#�}�G����?x�2��K;��`�0`��&<�8=�Y�DZؽ=�d���/f��H�s�S��iZ��Ss�b:�_%�?�k���(��݋?(D�#���dahY�`��D�a�)�Q%0Q%0�'���]?�2��F:{��~�Og�]6J*G_ʡnu�x��\�U>�o����نqXp���t�;�!������v���a� q2���4�q^?���\/C�s*��r��e�̹�B;[�B�b���K��j���I��5����_��3L�8%�c��+O߲L�� �q�H���ڿդ��L�#���DA��f	Z��I}��6�*�,H6��Is���2E����#��e�r���@  (��~qB�����5��\�/��k�sQ�g7(�t�ti"�v}�0?�����|�,*��AƑC �a���߁Q��	�!����Y���AL��C�KP��Į0T�gN ��2�a�8�e �h3�F7�i�M?_`����,�J��Z�B�ç��lE@��,6
 ��i�C��E9{��;����?��{hc:=�Y���	4ef��𭒩�S$��Bd���c�J�`���b�)��P�1o���5�����3*n�:s���/�p�������y��Y����a�]
 �����2wx�G��=����+��E	A���WK��
��B�����-Ԑ��Z�h#�D d�����rC��t��d�~������uzb�}{q^_R�܍��9�'�8(������z �l'M#M�ɑ$$+l�,��Q�v�Qp��� ��g<vv�8(����@ک�n�g��/锼m���E�M\��)+-�ѹ2�|n����}&�r!  �a��G(x���x�·e0�e�N*�[���fx�!kk�.�f��b6ElD���P �`Ђ���$���K��^d�p.���{>�ţ|�S�� SYd}�s��碩�6���{8���Ef�)n���e&� �"I���ң�e������KG��؆ק�-�G����&�4��&�2�p8h�T�	����3�	�3dm�!=�G��?�� =����*�#��`O�]JF�� �o��A}�\#�?�`�H@ 	3ON�#O!��mԔX��D���(C5j'a��-�����2�������������~��9,�Bpڠ�P^:>����x�k��}�:� ��<sͦJ�����t2���NNg;�2�̷(\̷�8��֜'�V,�4%9���k|�3]��vO�s@�'��4v�r\�l����-�9�OoO��H���ZLd|0�$^|L��x�P=�6
�2Q�=Me����F>Ƨ��&e�� `��AČ�y=*��i�Ȕ���bބ\��P��~�����Z{�討�Os{�y��s��H�
���.�2@P+jh�*U��&��y������<4<5<���؋��%I�!v�BM^�r!D�5\y�����R���5�G��������Ρ�8���d/g�,����a�Nv���P��AIQDІ�f��^F�K-�IRAEfCя��JD� �BI��B����J����{I ���~3��	���.��o%y#���Q�-�j_�^�E�@(���<��B4ePw�H�Q����,�Ca������/c4��o��J��+�17'�C��;EV!Ji�xE!�u?����+�G>�:� �p���O��~?�{esu:�{h����2G��W��딟�������|2�<2�%�|�N�sv�1�|��̧��,�{1.�A�(��O�6v�A��<z�
Vs���x�#{�WG�Y�S�{/K&:Ӓ})�_x�Z�7�<�~�bw�N�m{&�k�۬����S�����KH������܉C���i<�4s�vPs�j�E�豰��G)o��/p������sޟ�ޟo��O|8H@��'	� �޻߷�L�<��5���4�ݐ���Vk��u�K�g;����:x��׺��o0YU��R;1�r}��D�Z��;�{+64"EdtF���l�D���	J�?@as<.&
�0:P���q�\aj�9�T�l�A�D�Ţ#y� ʌ�m�"���C�ѹ�[X3/;YJ���J+W�2FN�de_�>F�#sn^��w�0kNl�$��0��~�S����.��13X�\�X���P��y�ßOs�I�l��8el��Qve�G����rk��(qL�3&!`e�A���XC& VkVI�hW�<��2�:h��y���CM�㾂�A��~�;ZE+ X�B�G0C�	��p :n���\��*P4�`��y\7v�|�U�3�Ư�A���в��CP�5�`4�G�&0w�d�P�)��+��lV@���bn��L� c`����4���=�J&��Ƅ�rzI�@���Fb.*�i!�� �@��ư1||�4�����((q�ȐK�� ��B9�)0� #"��	���,���p�(6# RćåC��x�\ M�V[f]W1D
R���Hy��b��M^���Ld+�1��,N��Y^��i�!�>��(hx�s-��D ����p��wr�H���"E��8��� �����O3��:_�t��\e�\�s��&�|��Y�\1沆'���4�qY*F�B�e-M�B/�4�lņ���G�sr��}�VSf��^v�g-�Lf)�j�����.���<Ds(4�%�J��6ȳK�s�-�ӳQ{h��K0���3  ��
 �B( �2 �j���ȹ"�
���CM�����������3��Þ3��@H3����Gă��ЈA���M ���y�"��@&A�@��,�s6��g�Y=�h`�=�p���e2*��� 5�4��Qa]u��i"E��LL�� �Z*JA��%��ta㈜��W�g�����!<L�(6<"E�x&"tXad^31�t�F�RҐx���#���5��D-SiD�n:�if3��_�3 �`��42�A:����HPP ���@�s*7�`���86i�5,Ӹ>9
[*P�uu��Y��d?�Z�	���Q�Hz��f>���<�������b�8O2�>+x�Zf��Pfy�
f�4�"P���3�8+	3r| ��f�&=8���
4�ҹm�Q�����3Ha�{/PC QA9Bˮ�I��0�9�S���;l'��Ӭ]�Ȳ{$&�N�3aT�ѥ�������P <0.JkA�)Cá�и h,  	��H�0�t2��A`,��P�䑰@ 2Ԑ���Ń"N'A*L e2�0$�
@C#��!�`�_�[���	�1�\zY�6���pwVݼ�Kz�t �'�E)y-W_�t���d0���v��SD&0��Q� xp�T�GB"E� ��e&�	xu����(<\ �,��r>u<F�����!@s5E(�}�'�s����I������0��l4F��L�(#̅�1!`*�`6ӁEۉbC�0�aݘ�bP�!��1�AOF���*M��d���g�Z��!����/ڒ�Nܛ	b��B��N!�����P�;��8\,c"7��\��v�gU��7OIS	��ć�@=.  �C�������I	 ��0�PB����ؑ��0����� D	
L
�:�͌@ M��$ P����(�j�<#
 :��,lh� �H�mp[����L�C�]:9���(s���R�e9�wgzD�X
���@��1�	��GQO�8Y
�`&��I%�2� &*��q�	�8H��i��&��O�y�r�	I�nƀ2�E�li$��DE/C��D��a�Ш2	�����2�L�Z0���B0P�@�I1b|��	���Q����l;9���IJI�wdg�~l�-$�<�����(
E �)���ճ��f�bĬб0ZAB9�3U�[w�;,�s��   -���>��p�B�-A��&��P&I	��D	����0aAC�� PF ����Ãq����0D#� ��@ LI   � HB�_���C�e�]�>E�����C`��(�=oQXTx �"0��!�ҡ$���
Q+=��1Lp�Y��8.*,d6*4��š�0���vU0�LN/�@ ��x�w�����@������+��9i��Z�Vj�D���H���G`��F;E|f�����XL�>��g���A� C�r���D��~��g���l�YF�o&U��`�)��>�	�$z��K�	#�tu��J��oz>��X#I(�{+l��� �P�ac
A � @�'``�YJ��Nh�L	�N���ZBJ��B�P��E��c"�~^<6�0&��1�@0  ���&L	����������@�Y� 
.!\l "�"!0 ��ÛD �   P��'�j��O�.�1/��6�t�x�X�-��<K01� ��QD	� b(:���i&Xp&����C�.6<
���"�#F�AMt�#�"����ω��`QAԻ�8<<dʈ�8$�ɐ|�	��P�GJ¬��$�<f4��41 
Q��� ��C;��hFǁ"�G<.������F�	� ��b����ЀJ�*�F���"��h�;z44K�g���6��{^���=��HD0(� 0��DJ}�103��& �2�
|���`�^�2p{��@ �����E��Ņb~?���¡#`�@���a��A#Caa0�¡�"��M�Elx\( >�1` T�h%�@ �@A  �ƫ��>H���x�7eac����na�us!1p�����@,J�Rb鳙dp���JN��9�����< B����(d2X�P`LS�vB�8T�Q�a�ph� (`.�j��"�N�J63�<���xR�@���F�0YT\�H0*&e:>&C4��1��@0&�� U �-�EG&N�8dt06�`LF�o���ɡ�'�iz(�iu��;�R��M�����I�i;»��A���V�A��D�R�0 ���O�}���`��?�A[��/�`�r�3��PA�.�!c!�!B���, �{�cA!�`�B��%@�4e8 �K�<���AX  ���]@ � 8��}���W�gE�7���?�W?.��Y����׭���������꾗�Ϲ�N�y4��3�����-�$��ջ�>���i�t��7rSD?:�B �5��Y �������K���a�R�����8�X�(�If�m��U��R�g� &�(��P�0�!�@|B�#������H�Â�aᑦ"B�^��P,b�]�8>
&.q���`j4P��SB��'O�KE��%G�*2p $	B3b|��II���q��G�0Hz�uU�����n�{F���n3�s���VH5��r�"�N�M4�K���{,�* ԰�+"(DCA@P(�
 �C0@!��!�����z���S0����W~��J������x"�#e�?λ��3�[���.O��|��`�o�����9Σx,e�	c�2�����  @��9_��}%�C�e� '���u^�~ @�������  ��Oq+�P  D-3� �f+�f&��Zx��88PС< ������bPG��|Y?�Q�K�2҂!��O�7�*Y ���V�����:�Q��3e��N -�2�� @'37�  X�܇N��!����Pk��=�3hL+ ��gG��� Č�������@4�[oP�:`��xV�@SB�����B %B0��v�M�d9Ȩ��W�N��������z��A�`u8)jLY` ��?:��e���27Q  A�I���! �H  @(�P��@- ��-����J�&b���p��a6TQ�b鬇������E�� �����RQ�ȇ�-������U����*�(0
�V��P�1�LY E �����DQ(�0gO�a �a�!�p��EP(  �6�4� ��U)4:�(��`�,����.X�/k��EP � �H���`�� b�F�ACŘ�9�`���Z�I%���X���5�l�Y�Q'�C�f"-� P`p,B
S�E |<0
��/3�R{u*.37iNb���k�`�{#sȢ���"��j���� �B(� `hi�>�B�B�{���qv�`h�[����������P���F04�g�cpƼ��~�%c�7x�%�x7+|���)����0yV3�ĂQ"�3eA ��ظ (L���? P����X �������������T��� �=8�_��[��g��O3��s�g���Us�
t�
ui���/���l���Џ)!�$o�3���q)����|B�ԗ1D�|wr.�`��� d�)A�! �>�2�  Jҙ�
,@ �q��@�3P�� @L��W��n�~>��@��* ̦	1D1Z#�ɾ~t���i\z}�~l�M�{+�����<~v�ԏ�ߟ��oZ�<�6�W<6_�b�≇
$$"E�LF+}4��r]���*�f���q��2�
 �NH���!+�WQ�O�N�X}��\UM�A5Q����~}ʟ  `�.|�?��m^��}!��D�~%��E)B�U��1=U���Š( ���Q"��RqAh0$��d�/&�@A�Ĩ�a2J
�H���U��UJh�4�ؕ�ju�Vh�Ϸ�/���Y��!�������JhZ#��Ԡ�8rY@l+SܐzjR���%�6�$B ��?WaE
h^N�zh�s�_�9�8�l?��vʣD��n=��'�R>e��/=z���~λ��U��]r�=]��:Vo�g���a�htr�dug'G��6^`�9O�V>��<�)Me�2���i�eۘ�9�a)E
<�F��|����-T�� 4 K�9]�,�1F����� �$��i&	(8�W��J@���CG!�"��ڃ�B`�[=ǅ���&ת�*�r�k^�0!nԃ��G�p���U�T�-Z��iI$!mLB}S�4Zq��r I͸�q�f*d{]e=�������w���������s����nzgg}���|�g7��`&�nN�`5!9���6V�0��<f1k�� �X�d7�A�4+���<�,�D\F9�'�o��:}@4
!cv�N����'�¥` �t *
�P�H��B H 
1�1	 H"�bҊJDL�	��ACDh��bn@dx9�=g��� #����`��]n��Q�%t`�OE2�d
 CQj�Yo����,�@Ơ��qv��"�O�m�ԗ:�O{���ե��^>-�c��z՞�M��8BAQ��,�>y�	�ͭ@.fPL^����t��l��q�,�B,$/R���	���QY@��堑����U������at�ң�� �$�^~�Q�O�0@0 ��8��
�| �h�`JLX<&��J�!���/n�r6��9Y�0�C�dJs�^%l&��B�Y	��#�q����B��9�
 �R�	�<;�Cu N"�~�>�K�V�Ɖ���R�t�+��y-�*%u��5X��t�W�wW�[��pLL8�[ɢ�h �ô��f� !:����|�q��O��$�,g�6Or/Ҍ�È8���V�#)9`�R����=��D  �(�a8� C����U% F� �.����G]�n-�G�Q6�W�V���_s�q��8t��8GT����"[���D���$c�C�t#hhտ� �Z#�Ԇ�"��G1��t;u��(f���\V>��u����~N�׆C���P�f����P�8B�HV	'DE��e�:�� AP�0|l"�F�P�4�BG���0��9l*�1� �#� #��g��>=`����c��\%�sė�`�4��������D�I�x�QT2�LX�����t�A�$Ş\��8��ax�́���hy�Y@5�\Oy9(W��mE�T����H.R�ԨUj�͙L��B�e�\�n�+�1D1V0��F���R�_��ܹ�����Þ߾A�F���/�zU��_��� B�1��H��CC��Y<��r
X("��tZf+����\MTi��K� A��R���A�Pp��d�RDr 	�@A�Gy��&|�]��ʫHL"� *� �I" ��lg�1��I"�D�p0ħ��t�6�>p��rꢹ�j?�_s:�J��Rk�kM��Ռ��O
<[e.�>��Vs��t*�Q�.6��  sjWU �L��x}U	��BwtGCP�����-��y��h����v������7���WZ�����L�y�10:k襅���;���y!M<�n�%�He�
���Kp6Y���<���A?�<�g��ƨa08�圛���a-�Q�pq0�y�1��GI0(�ѾN�@T>�p<%�N#��c�$�2�B�P0`&,e�#�uG��B��]G�}�#��v��=�=�����0�w���� O���;h������8eӐU_
,����f�����T5>F7T^�5� ~n����^j���3�������>�?��f~�V}sO_�RG����}�*�ྯ$�G�	:[:�wzPy���T��sO'��=�us/jX���u������R��D��tR��\�XJ3���\F�� ]�{VyULE�IAQm��R�� k�`�2�����)�h����A��o�1�\g
�#i&�0�O��f�)��S��W�a$��gB��GF�!
hP qݠ��ԧk΋��� r�.�E�Y�b��zsXDf�B2�㒠"	\��A�S����*3���`���+��z/~���{������Y��h�8�A��!���u/#�.BP�g����Z� rS`e� r(����	��`| ���QK�������B���~��L��;'q�
����/�+��m�~�V��g}lW��2�z��s3�n>���_?�'�#]��*�v�|Xd뻳��'g��G�o���4����/����d����Ol4#0��  (����>�8���!��c���_��:�P�Ĩ0(cB�D	�؄ ���R=z�1ɳ�c���=�G񵓷V���T��@0>!�@�re �Q���1��3p]��DR�y  ���h8��2�i"K#O��7O�LB
cÌTA �`ыuv���|±�6)&�'	�(3x�3�QBVp"O9,dO"9�f&�Rh�)j��D���$��ˋ,a> @�1�$wgKx�����%� EE��+��e(���&3��ڮ��ݪ��N��J@ �������@!�E��n�z�)�t�$F'�WCUC_W����f!4< �;E bB	���P�  ����x�˳���8�0pp7�����{�cf�Nzs�}�����K�q,�-�.�:~�srk���`Ji-1���^�m.�˳�k���~`��Z%�2Æ�wX��5�zDp�s�
�Qa���Q��A�A��9�{"���<��h
��\�0h8��jpl� ��`����! �TPQ1�0pQ@tI������hA�$.*�2]p0��rS)����4,~va�|���1��<��B�&]�x��A�({8w� @�1D��5�J�h3!�B��)@t :�y��	���BP�H��g����Q��(! 	!������%O���g�~OxT�=�y����c�~�` f�'`Rc�C�֡��)��S����T�l��Q%���k۵�S��{5�T>� >9bh���-% 5a��S�MLua��8<(

�K�����#�;x�n�,ng�yl�{r1}e��NW��t/�3��6{y��ϸ���?��}܉ص�qnԑ/9�^F��B8��Rj�X!�Cʏ�1�q�Ə/:.�8U�i4�R�c��t��Q�{�;�" h�W  ����F
��@�Dp(I
u��8:�R�8E��1%$�N�&�c%7�xzN&5<�N8�� ���>K�R����7��-���EBN�
ݜ@H�u9��đ$飊'��f;6E< 
C��D  1 ���X�5 J�������8�`ҏ/&� 8��ʃ%�ɑ�q9/������r�m�

���f�'H�,�XK'�w�����mQ���1��w���UJ�����`�T�mY:�&&2>2>��jb M�Aq�d<B�"Df��ァ�����1��3O1�&S8��Z��M.�[�I�$�HL���9-�V7m��֟>��~_���o�?�J�K�$8�ؠ��#$A(�X�$���Yf�8�E��?7S�ag5�$�� "t�+�4�<���T`؃s � 	P�@E�BA \	�F�Ú+��e��fل�C1�� : Hn�yvszV��#�.*���8���e�c {(��G�^~�?�!�3�H 1 G���Ӓ'$ ���L(9:0Q)c IA����X�P��R��0:y�����a<+J�	d4P��~0�s6�LAh&���@P��_`X�w:��rR��]�N�٩�ޝ,���� �qB'���׽��-�� ^"�I-���Q�9�oe,q�;���$#C��)J=%���"@ac���}>.��U��TS�������y}�+��H/U�J���ކ�2��/Q�������[�����v�u�*D��[�?B����B�+B����qR�%L)1��
V��<B}H���k[ d��pX̂+H����BPWt��ųp���á0 !B	� �T ��q	s��,M�5B! #B��$$ $��C��Y�MZ;L-�ar�0a0��g��e��|��$� ǒC��t���?$K+D�@q��Ő����`J  � cᢠB1H!  T(�pA8ĩ0Lu�d6c����竼Fq��ь��Ҿ^�g*ӎ��Ir�x�P,�,,>:˛\R,�r���J_]�9@�����������2�����ɣ���s׃�͉�E���j��Ȁ���d�d��ʼ%���,W>�?���ro��f߄s�E(����_˸�/)of_^�"i�A��l����'�M-VbYV�׭�7�zy���Q;A5��lHo�f��<���À�	��|:�������.�vL�@ ��	����@B��!E�9$F%�A@t|$@�"���@|jdG��+Rc� �8%$���ӞpJ�3&*��b!,�� ���$/R�(?������a���b��K�4,$`0,(>#t����$I\,R06�N��O�:u��$���㒃�f&�F	���(�`������f���ݺ�Rw������,cX��<<0 ���D����ۉ���J�e�fW��s=r;�j9�LH*b���1�#�D����~�r.��������o�dI����K�O����y������������~�����ٕ>!}���9h9yU�-�WQ�lՖկ���k�g�FI�[����������XC@a
%|��;�t80�v:Ie&�&!_�k@�%�9b+O�̦�E��9��>���^~��T�����B�P*@4�Æ`!�(�T�i11$��CD�BI�QE@�a蠈�P�@�D�q :C]�a (�§�bX姹�^��l0�/�	~0d/UR<�btj<�e��&�8�pfj!��C�$%��@��c)Ӆ@�F���,��c��I|���:"4�Ԙ@0-�sD�Y6�����S�ME�w�o;����"o��C�/@����!�0�X��I�T�GH��~%)6�����̽�2����7�Ƌ�h��s?��q�DI8���XQ蜂r�i����_,�$Gp��_F�m�~[����4py����|to�ϱKΥ�M�"2������w���>Z�ԯ�_�䨬�������]����8�jVٰ���8&��]�-E�2���L/���5��}� ��"FD���QS �ث� @�@ �� P   ��.��0h� �s�PT(��:D�4I�
p:P:�ZB��E���Oa�H�($��W��ؕ�  p2�ȗ  H��mr�  �?� �$ �N���Q�>i�)'@@Nn  @@$/��&�r� ��@��cߋ��%��%! `|p� � 8- ��� �O  -��9���ф!��Q A@Y�a ���#~_]����yd%�|�o�?�)"k��G�k0��}_��r7hEƾ����s7&�&N�wQ.K���\��2���%3�Ĥ�c�ؤd���g{?���0M���_�Btm�v;9�{x������7K{�5Nj_9�;�;��|C.��c���=�&��Ͽ�s+�}G�kP�~(��������������m&뎈�1��R P �X j9<N��q�������������c<?��a揗��q�H3�:h]�!
� �@�nE����l�G��;��� ,pnŤ���M(�ɤ�e&u �	2�y���ԓ�S$��<�Nx�(?�RN�u�	�bD��/�>�\�������R�d
7�?J�.wuz�$1P*������8���p7 ��B�E����rsUf�5�-9t�O�no�s�  �_��j��I@V�%J.E�� ��<���9� �+CQj�Z���]� aQ�p9? M�jаh7�uU<X4rT�~�&WP�j؟u��s4�� �|�{��z9_�˱�I|~���A	�hҟp��_�	! F�p��Y��祉sFQ�ϔ�dmdeϝb����Z����-Q��RRqN4�� H�����u� ���i���7rP��=���]N?�qi^fWh�!�CH#	��T�К ��� l�x�:�"�h�n3����a;A$�G��MD�f	�r3&߲�Y,"@kؿ�S�����R���s?ig� �q����1Ƈ����)-�9ތ�Js�����Ry�܆��s�K���H�*6X"IQ��a����Q��c��U/^��Q��6Y@4?� 8�$"��K<S)�	�.�PH��(q   `z���g� ��lΒ�2|�e�nUҰ�2��|���Fư�6f��O �,::2"y�VNBtKt0L�xXxxB���پF��@Jdh��X|R>�7���ڦ����P{�8����B�x�)���������/��!�@$���`���B͇0�w�� � J� �ɠ���R�=�8�x$�y�/BD@δ%� � �zF���xx@�x��X� aŠ� �`X
v:;���p�(S	�Ԉx�0)���`��)��E�F�Ɓ��D;#%bY����w��E&׉C���#uE�P��D3j>Ɩ^�������RbDEB )� �Ȓ �+���uLso������%!  � 1m�!  wE������cB��r~��%�1p)"c劓G�G�`�nM�ig6�i�,��2A�*ࠒ>kAA��/P�����8ۆ��NMGfཫ�a���[`+�^j S��=1i�v�9�wu�J������"z��Rd6깅B��<̮��s*�|#i!������P�a0�Y(J�������8�0�N����PEN��np8� X(¶��lG��M �)����'Jj�HɁT�t-�O$����zP� �`AAA�����(yy;�Kٵo����w���.]�K��rU���t*s�����a#tX u+��I"��I�h�0��T���7�	�}�t�����8Pq�Lx �u� �#cQ�P�h3�ۤVف1����0y]ɋ0I���V��{�W��_�~]~����M�H��i�+�������0Y�8� 8 ��%�G1f����� c-Z�j�M  čy\!�PjwLV����3���CG��4<����x0=�s
�%�PP� >a=x�YQ�,�"(��y��铐S�#ch�APE�.uI[�����
A��M+���._'(<;N��?g> ���tT�`0�a.�pLh0:&� T�DXZ�@D!X)�J[�(� ��0�fG(��Ij�L�E*�M�zW���  �#S �����R��0Đ�֏%�(�pD�j]"`���j�y �h�	�L����8�7�T-�x"F�L�08,BA���R��� ��/�	i�CBi]n�͘ `���y�kj)(�4J5!�ȋ��N��w�zm�P��ud�w=-��װ��+�����O���u�&�Z��B��H(�!��C��?(	��)�=�H󽺀
��A�xpd��� @P��6p�w��[D�W%��St3�y���)��G2��H8��'  8	��h�X��[ڲ�#\By�W���e��IV��5�b����C��&<ɀ�X �i`�#}rK]�W�Z�' �{&��z_�F�:9�\����}qr�p��К��13Y�/�ewBt��?��x @��P؉�d\��N����mÊ�o$����LEt��n��i����G%�K9s���=��u��t̋��9���||�+�eNj�95�h�L�Ao��V;���J�!_��SB�����W·�Py��?f���} �  �(!  �0X  �?|��D�$�:Y �aᙓ�R��jUujԗ6�3�hj�dT�U��\�tt@�Zf,�+ǐ��DL"zL&�^4w�&,�w;��X�٤���qp��*`�*!| .E ���"��m7�P�P�(��l��@�x�������nE��^�7�Q(m��d����V)�H�tr�&_�LOs�>TLhr�� �E�S9����t�ag���$ ��f�," L9�xX� <xh<�$�� 
q�� �| YG(-�"@>���6�V�qZ=Q<Ai��$���4=�vb$�{�蔛k�d��VvR�l��,(_m�01Li滄P��{�Gifee��f�0����Pa�1���������M @	������( G�(Dm� 
P���՟�@���Nk�WUjT�
�&*�0�Ab~�z&���VQ�PH����]{��.�NH����R�w����0���l$�1�`�  e��$ c � ��@ p�qU �(��`�u��X}�Dl�R%��u2@=	iY��F{���&��rY?��lR#���g���H�s�Y>��_ӓ���l%3�x���D%$B PHS�'�E�g��C�� ��
���`�� j�v�Aw�@&M04�EGw�f���(1-)#����lf�6��8g*i��O��hӅ�Y��\4�hD��e
('N��*������ݘ��
�K'ΎEG'��$��� @�X, q <���!�o�{⠁��Ah��d� `�u�q1��*G7�j(��"bJIoQ�HB�LQ'yK�
�a��󶙢�a�яX�O9��Ꚓw�d.�+ٞ@�h��H��؃F��$H3�F�3����I0�����H(
 �Xk���% �دm  �U�R(t�';������+��e�g�e�}���<c����[3�Z��Ҙi�v��_f��o�5�c$����󞮍�gۢ>�ښ޿nKv7ùlv��j+���7R��RO��!���r����G����<�DK��۔�~y�d�ҕ�Ze'>�=�|�~�>��g����w�<&�ʪ�ViY-�G���>�f��!�5�I<9j��ߣCadI�� AA��(��0a�T8���\�|�� E�����Қ�@D×>�7\�=5�w�vv�:�Yn�xj�i�!��(��WQ@��D}����
Գ�9A@��� �}Ё�V,(l,�A�J�M�j����v:K=>�쐝DuBR�E`�ɷUau�DpH��$�@"K7�@X*��<L� ,R`F4�B� �Q�2��aSAH�ەuR�ȶ �z�1Ye�c�c�+*zli8~O5߰�
,F��D��4  D)�Qb�#���G�vBh���0	"�D��q8.1j4S��$	���49l�pEɩ�/��1*��^,7�<�C0� 4G��(@Q��7�Q��� MƀthP��`�
������"@ ����[_H!G�kL�2�C�j��t�$�K�,6264
h�x`H�8d�� @<t�Z�� ����]��4�擡��i��.��F��|.�Qs 5b����A�1d�%�l�%Ϸ|�Ml�)8��;�sha3_�9
5<���B>�0.�$vr5a�`5�39�������S8��gV%{����K�AZ(x�>�z<��u{���Ջ��� �0���z ���E-�=%�C�d��9�9�8� '�2 d��2, 	��>_�8H-���\�N��T:,2 �C�2
���KeTT�0T(�2:�:*����j���}�}���p���tf U��r�M�8�4�L>!��ՂG��C�O��a1ap ��2'��0;8�Ir��+��^6�I�j�4>fwfc�>'p	fR�u|��D�,� ���=���;%����P4�p�rj�Z�t��\:?���{���j!K ��l����!rG�Q�>ͼ�L�Tt�' $���:D �"uS7 �����ၔ`C��$U������U��dI�*"���46�������� 8X�  e� a�)�8���>Fv`ڐtO���=à��`�`���L�G�aHp<�]�K54f0����D遇�Y�����^<��c|
�VVSK�Fj�M�Ә�Ɍ��X�������=[%QQ�BJT
��95�^�ʙ�����+��ɽߞch��j� ��*�
P`ɂU��z�# ȴ�i�ä��@��ai�A��j@A   ��@� t��JfK�LW(i�z4�R X5�`A���@x(< ,��D��H$�  �P@LԘ�Y���MJ�4�� �䳀HO�#��~�mkm�[�0�#��*�â��� �^L�f9�115�,>�T��b4Eb�`���%L�e���F@��� 7���a��c��2^��;��%�7\Y95���
���,w�����4�����  B(��=@-!0�A!b�#�'b�Qk:F,`q
K4��@�!��70���6�@4$�J�S ��� lA�0l0�ND �@�"�(<t$SD:ڲ2��o��%<={''Z^ ��M���m+dJ;;�BBʊ���F�1hPz-/�kهY��n��Q��xR�T�ҋL3�D��AD!!O�$����OD�E^�L��A�q%@�}�ݼh:���>JޚIV]����8�M��)�y�5���t��y���t,'������! 
�p0��y各���h�nM8��#`Ba�!�� 0>
U4	��`h &.Sq�:�3�QS��_qX�rR�D���d����VG��l�*����s,d�T���P�u�g"
 ���E���d���Q���D~�"I��Ą�B#���i�<r���^��^NH��;E!����S����ʜ�k����`�d��C� `Jh�c�!@I�L,�Ѓ�,^�1�`s�
�  @  ��'(�P�a�O�D��!�s��t=���Xʀ�C���tQGI\��(��"�f�1	�0H|�QЉ` $@t,"|�1�2���q��d[��Np��{�+q
�z�㰌0�XC�q�E��2���G��I�itQO%ˀrm��>��i��ʏ�L5W����P	���B��zD�m��)��?P��N2� G5��n~B���IBǴ3�/��_���?����俹�������V��#0F|��r����U�i=F������{No^~�_��S�e�qd2�8kJ���Zت]�P�)0��P8F�D-1���aj�v#׋�^�ٽM��E�|�m��(���H:m�Q%�s�k��@@J}�^�-.|�!ȩL�x�#1�#�k��ϥ���y���T���	��<Oz��>��)K� �e'�J� &.
4%,*�(cB�C���J% �%"���	�2
�Ih�T'���B'!�@#��?#0  ���am�P4`�kYG-�8�+Ȓ����=�����W�$b*�s)���^*`��N�e/������	x�{i�,D�zf5�� ?aU���q�h�`��BF�N��s6P��A�VY��"�l��&/���(����/�w��=T��v��q�ۛ�m�h/$ 4��)��&�L�ui����[�0�� r����L^{�GG%]�Ɔd�=��6��DT\6ɾ�`h0 � Txb(x` ,>*�Pb3O]�`,4q�z��߷ +x�I̦�0��y��}G�0w(.���<�8³9V��8i����3�ƣ�����c6۸�fp-}д2�6��!Q�8hhx���(ю#�� 6�x hF�P <h82Ќ D�'�g�M"�q��p�S���0,���]���U��;�1g,��%�?��š�C�������}���C������6�CZY��Ʉ	�2z�.Z�.D���%$)&@�,I�n,"Yj)#aS��Ä��	C��� �˔��}{�)@^��`��    �M36:2U��h�T��$�jlb%*I!���@�&�x� �`飊CXT�� ��0�`P�p&$D0�L��A&��ˡ���?�����1��)JN��ြ%D&Rqj��i�6 @#(I��CY��=ṁ� �7���"j�yL�sa��X"%�v��������h:�	�ء����17�A�a�2��]a �bhbp��@�@�a�ѱ4�F�c�.6&"hd'..Ȭ)�����X|4[��i�5"�G
� ��7̢�G��ؤF�2(t#�/�$m`h�8$L�@��P��MD�%D�'	���Pх�@��Ggڙ (<�3r�d@`\< �����`1(��A�0�� �S�W��Vx����(/�g��p����`��(@QP
�
P�(��C � � b?��=>�U�$�%#��%�_�g&/���eH4jJ�ѣZ�篚���86dv��Rd(�S�S�%�H��t�PM/��tM�2�H��"�����;, ��
 ! :6��dqstS�@�5PT�>eM=ǦD�%\X�ЊBec�^cap�G!��"�����Yu�@,$pz�2P�q��hI���<��e��?�0B bH1DM����*NM^EN��5�$<�6�l�S��>ާ�m�B�#�@�w$@ T�0|j�J�X���D����L^��vZ��XMW�ѣg�1K��W��
�l��#XiD"��a#	f�x����H䩠��K�!>C7D#F�5���p�������  �a�Go���"���$N�
�`�A+	��鬆��b6i@�%�C%��G �@� N�B#��ig:~��D����<��Ƈ���A1��A!x��&���e�0 ��(J�3҆� D�.`C��(�h�p$�1�h�*(@�%��ak���I7�r��~f�2Ң�6j��c�@����\2�����)�eG؉	�,�e_&��VV���=udx�W1��Yʞ�E�X��#�0��2�A�.���ʁ@?Z�Ml��(#R���4�`��VlDr����C�����1}L��6Ќm;�"��D�E@ �(0X���� B�����	�D��a�� ��ȶ3��B$Х�R�a,��2���%q�=2 �)��(�(C���|]��[�?�l�� �}#���  ����#���R*�iN��Pr��~f�4QZ�T�֣G�_�dr>u�� �H�RԒ"�EU,�K �<��R�%��A���c�6��h�l����	�K$�e	�	 ��b��S�	��� ���  ��)���c�*t(�d����(#a�28 ���'	E�JJ�\a4\l �i���˿f�?�O�_���WG���������������<_��0A�J$��̓\%�) 	�'/�� 4k��+
l�6 ��#��G�%(�j��0�E!�IԦ��H� �R�?�	 �yG�;Vc^��n�P�z��~f��_�m�5�n4��m��!��AT�� {�&tPtbE�4�Ԕг
�����p���1��� R7����M<q���1�;?��Ն��v� ���̆&	&����< G��d�$����+K����)���b��f1��2�Z8��]�l�Z,8>$�
� ��BǅWC�B� &k��	1��2�^��$�,�Hf��6��ր���h�<�!!(�| A�P )W]��T7�a��H�A L�҅�}v'��iY���^���2J�ȡ �c���Bl7H�Xz"ƹs���<�%<I�� ��6,�$�5�J�W; W���]���� ���Uh���M�ü�s������ҵ�Z%N�]�郙��}>��h���iLFA�a�1��0{��|Ŷ�����N�����E� (N+�6��<����h�߁F �;�a����̳�y��41��P��yI-흗��W?��(E�Sk�O�ڹ�z�D�n63�Xf��:6�V'3-����l�Ʊ���I����L�u џ?דhށrH� (�$N�887�Ă@�نH�:� �� D"�8k�J�d9�fg��`j0D34]�R��y3��1Dn���vӉ�?�k�)ٜ�@  B!�f~x��Q�h&J ��e���[)�k�
�𨴠�E�HQ��	T�3$U�q�5��'��T�N�N&.&4����*GL���$9�����l�4����:Ǜ�����pp�GM�6B4Rc���	  �:��X��`��B�����h�A� h >4?��%��(`�Lh.�Q<K
fG;����۹�sw�g/�z`.|ѹ��G4���+��w��劘�=T؄ȡ����C�������Q���#A��d&	$���R"��L'U���������������_��ߓ��[��4p^#�)	,s���3|o���o�)�޳����Z�4|wj�}l�cı�<�����nPk�Ϲ���ƭ���C�X/�~Jz����v�`u ��8-GBC藆Ɛf�ب�9�k����<�~���ӈ��}np���=�z����@�B�P <<4��:�	8z8r������'�wy7���@"뚫�b/6����F�� @F��}�ƢB�9�xD�@@�������	�����c�1�$�Q�2m��#(���K�}{5��1�%�x���6�>=
2C����ӡy-�;5yE�� ^�\�������7��A�z����񡵼<��3�{.#�zBz7���	D��(O�=<�����]�� (�y	LE��p��+�J�*�:{P�"�1�������E�M��j������!HЉR��"2>$M! <*���Y�1��D��O�Pȣc�� ���� KF`���!�Ű��۰�#������C�
�NM^�
�$p���s��*)n�����0�;�k�k/�qZ
�����L�B�x,E�$()�M,�a�㯗˻�'�G  ��ZEQ�b���v��*c���q*�@�EٹDvt:	�p��{[�
���%�$�A��SDƅ�� B�*A	I�
������S��͸Ĩ�� �6gpK�!�9�eU�e�1�j����rx^U�S��@Fd�>BҐ�Bm�;����c���½L���Y�A�Z���� !BX
+�؄�}��^.    .. ���`r
��Fސ�m4�ġe�o��إ%�*��:{]��߰p[J�Ϝ�\�d�b73�<�<�J�C�AC���\�g`b|���& ?�3ҏ�� !L��P@��#0�Z�1Q����9���؄"�8��.]*�D�:L�х��Q�L��k#����[nY�Y{��Bhs)"5Ƃ@�BX&LH�a ��\��h����@p!P~�P]�,7x�e/��ko��;}��A���-G�n��7u��Q{�o��q���&k�8���`^���b�4��M��y\��Y|�-��@�K��ispdX"����RV�C )"���c��޼2��tJ��4Tja@����W!㝓3��:�[T:����F����,++d���c�J&0)̈㯗˻�(�Gxʸ��8`8<~� �>+��
^Q#o���4}���[���-!㞡{Y��ߋ�/�l�m͟n�i>%��߹�6Tbo"�u<³�4*4QŦB����$ ɗx��8�Ä3m. KC�f�Z�Ё�(���dT�(	)}No^������1����u�K����8i29$Dd7m��A�<�,�������`10 R�ѡ�D�,�����]�@��t����#���k��0f��=�&7x�.������+�s���uTޚxg��1{���N���7G˟{'�S$̃`< 4��NcS���% 	%`����q8K�8���'�A���6�L(�(L��5(�GF�Ұ�2D��SPrz���
)9��f\Wd9��Ѷ��xo"�M���>86iHm�I�h�L!�P<�nR�!�bP
��^.�?4�D��7�E���i?�S��Ձ�@ ���7 GC!�E���,����=	�n��`	����R��>��k�r��s��U�4���j����EbP�Dʤ��.r�/s���"���3���[^\��T�x_#�ϗ���o��+pc^l���g�Q�������'�7C��2�G�܆����]�� ��P͢�y��-3�r����b	��6�re��i�ސ��g��H�	e��s�m敵w�J�D��ӓW���(3L�Dt���@�>�-��������4S:�L� ��G;����>ѽr0<�0��FY<p�Ks��jz�\��Ҝ�>#�r���^.�s+�ـ�42���
]�Z��)��cC3���ׅDaz2{rP;�S��6�8�����ޜ~'z^9�Ϋb/�$#t&*#�1 D&�E)�b���t~�[�I�3B��������ޘ�W�v���\��a����y"*�>��q	�&*���y����9&����3C�X���;K�V(3N^�S��ũ ��~��}�K;.��s�c�G���٘ዀb��h6�΂c%uL�҉ X�XG'?ϓ����&�s�j��x�A��y-ǰ~GX��JlJ2�^^��`'@��&����!p0 ����c&p�-�ލ0`S�V��R��5#��@���}��{I�byۚ��r,,a`:/� I[I2�!�>�E|�v���8���A�#xW����ϙ�����CPќ̺'�QR��������)߂6 �=%b���oʢ'�m��j�:h:�	2��{"�3�m�"�I�����=O]se~g�8�MV`lk)O\�>f_,�r�Ve��Is�rS�ǐ�AD@ �)@�d"�X]F����H{^�hb1;�шNnϹ�����2������`�a@��^XP,�%�H3T~A�|��q9n���(�B&j$s��k���2�pr+�e�(����Knw
�c���i��oz�ĀI�DpmO;
;��0D�9�ɼ� ��W�8�q�q=��Z�{��?'A��0�N��yc�Q"ʓ�ϝ|05#bI���kS0�@C�S<��  C���ʡ=v��ٸ�z���d��y�/����7�N�6LBX�'� E�xxd���0 ����*.*X&Ljl5�5�h0��y	!J~R�e�x	l����.�ݡ;�r݂�w�P��_Du"�Q�԰86l��>�C'�DN;�c9��ye�
ycm���$�a݋�āޟW��s���^ӽ���u�Y3J:GQg)	�C�p�I?�  D����E�y�J�?��u^#��F"�=/R.���H�^,E<|2Tdc�����P���(�:]P�2
& �O�Ikb�\���z��}KЇ��[��U��IB��sje����?X4�S����`�X�ݧ�n �F���c�2�_{s;�zN�9�p�arNl}�9��6As,�a��L����yU^{���U�Vҫ��)�(c���3�膑#�R�`!��I?�@,��nΠ��J���Pn7/(^� L�VN�0:��=áC��)AC�bQ���*:Ĥ���_�������?s�܇���k6�ᴩ�X�q^b�k�'��x�K�S�筆R	oy��b��}���$a0Ȓ`���6�Lc4�8�|<��{�ٜ���gN�:=M?D��F��a�>y��zS�=��ݺ�������5Yf��   N�"���q0a`@�Q����"��x>)�F�ಎ2*��P���{�@`l <���N���C!0"b�|,(��C赟��H{ ό��V���g?���>y%#ڑ͕A�F�$���OƮ��9�.}�M��B�`�Щ�i����S�A��X����d�� h���2������.�'�k�͚\�����#��x��̀��v��D
����Lf3�662�/]��і�����z�:��w��2�`d����1�Ƃ���v�U%�z����2&ţXr���4-�9�����r�#7��7�'*������3�l�bG-�~n ��?�w��\��^�ܟ���AZ��]�s;x��9g��.�ޯ����{��o���?Ž�k���7탙�����3b	�i��w߽�(��e34�>�-�O�������ݽe�戄9��6�ql�<���������]`n�Ɯ(�t�C�ݭ����@���y~��'���r:��ak�<�0�$�&D%��#�DB�Y�<G-c��؁L�&(� 61���c!}ht�c�9����%�b�<�-�Y�KШQ1���ބ ���1�M0�w&ƚ����?�9�@�E���|dXB �x�����:���sf��=���������J��B�������xE���|Ǻn�rHMm.�}�e}PV�(��(	A��g�.ǯ3|y�����6��DHR��� 9<R�d��笜���9���q)�G I0L&E|$�$�#��@�f-6&M��e1�\;Y�v4f@� �5��__I.��~]��tU��� ����콢A/��;]��f�c~�³(��F��w ��D��r��C����sf��^�7�`J���&� �%G@/w�n����Y@̆��i�1;qh*��ӵ���`DI�"��Y��u�/�_BN�(E,��J�Z��s��1>����C؁��	b�0����`  &O�����!1�d��]��� 4����W����%�$�;C��Ƭ�,� �Q�6����� ���E3��/~�6`�X���գ$X<��=�ut�6��ڶ�J��t8���t}
��lg��������� ��R8v��f��)� Ơ2"{���r�_g�����W�:*@H90��G3�� c-�CD�΋ǆ��!b��ÁG���!�P "��1�a`R&$�� �O�2�>(w��C�z�s�e]��D&$�Xy�� ���X��z4�0�����g<��u3��IYN>�� �%��(Ξ�:����e��
X�O`��Mb�ev���,W�K�Ǆ5(4PJ?ס��
�aa�@E�.c"�p�:×w�/ҍ�KH��� ��(�B��RA{��_,�e����C� O�2�2&��AyP	0D`�] 5�o���7�w��e��o��{��M�Du �}�i��S�+�x"�ĦE����/z̓�B���)�ș��[�u|�b�Ls���5��l�x�[fm��Z�	����Y 5i�㭅��2crR�%B_�_g����V
�&-` �I�2�/z!�%Bn>"eD(X(l|0"*T0��ą"�0I|���!�(�!�������C�w~�[Gȋe��;7}���{T��*�� �EN}�V��?5�]l
�yï��|�(D�#(�3[GZ�W�!  .���R�OL@
��ɍ)�x�X`K�)���E�� 61@��P���B8����]�,�}�4 ,A������$魂{!e�7���! 48x4XXT8��  I�Tp�ࡢ�$D�"1��@ ����k߹k��C@Y��Է}�}�Z�UA0�ZS5�qqNV��?q�s��V$�������X:��B9�ut׺�����dC��!m�Y��E`�I�2����ԁ¦L��ڊL��DCS� 0�-���S�ir�:×w�/��%�qrJ��a("!aQ�t^.,�{�`\d���� `���s
pm�z-QZa�E��DP"tBQ�i$�.ߛ��S��c�3��I� \����x��/��J����8���С$���Qz��E��ă���ߩ~᳤7�x:/O�_�ڭ��7�����%���a0�x� 4R04*X��԰�00
 @�j4RB�⒄�Q P4{�����O+笀~U1��^\[�G8�x�/\�Jh/��Q><�@��������C�_�1����^疺g���p���Ҝ�v�Qλ��w>��.L��j���zX5����
i~LkhF|[��ö�7�OA@� +Pi��8]	�0��dB2��.��ku���w�D�aN�����u�/�_|ea�B���  pƅ���po9LD|�`�3����[�J� FD��A���Pt�^���g!	�T��6*,�q��l���(����
���''�у�ą�� �����Vo.+�7����BҷQ5�,A��<L0HGᒂ�C����A��Э�~ )�� |\t2<��������W���kP�����|3���d�^xF*�����/���a1Å�:�I�h>�q!�s<a(��	HM��U �Y�**Z�͈J�& �:|��aĆ��	�K �u�������C���@C�	��)�b��/�|�s��N4��%I�%zp~q��u�ڽ�b�������(�_�y򽝁�9/Z�9�;P2�-�wk�z�(0��@x�x@�:�'�� ��*�3�A���8I0%r0t�L�RW����Va�"��Z����<z�X��53����B!q!y_W'W�)D�A�J�:��Ի /R�EȂ��JM;Z%�?_� h@��C�����:<>��C�`cAhM�`����}<|�	F�F���D �(�'�8��j���D���Ә�8k4.���������)����1��%4.��辦�NNQw.?��w?�.pB]ංA�_ǅ@p�p@��Ba�F#�4#��HHN	����( �"\ 	qH��ɚp	sS,�j�C��Q޵�ߙ�Q�ʀTklL�f}�㱟��ontIN����LET�-91+3�8��uz��*k�5�Z@�j�<�&e�NܠD"�O�<QD��aaq�PX��XP0�@�%"iA|��$�m:�?+�����@8	���7T��Л����e�33�.1o���$�z���J�.�l�#"P�t�Bc†   �|>ק£�)�
�΅r��uĭ�#�r.zˋ~�u�<2@�DRA�$�c�S&N�u�@ 0� �85����`�ɷ>AD�	�X�����ͧ��b��=�1CˇS۴&���ȟ��^��ʀR��l�=vv���9�^����;K��_�Y�T7S{@�����e�ת�� �{�|H4 ��(J��'a\Tx�zq�J����b+*�W���9=ISv�@ �� \o1��NBX�ךxȌKp�Xz)er�V|�_IFJ �r�+l�	�B�|}�M�~�u�4��;�$�&t���-�d<D|���q�\�� B3>%8	b��^�$�:!s���D�8�**M�8D2�2��W����A�w�)�_�h��}D������Sf^��C&�mbu�B(@��vw�(N�d5O���9� ��M�d�P�M]���Z��y�;f6TZ�jn�u?+���
"XݷqB��'�D��F����#O�_IU]�>rד��K��R�26ɜ%J� 0�����q�����%
��65ѠV��[d:`ڎH�������T�` @���.40 ���n�ʩ�0��-��OJ\�z�;}�����(x���~ԑv��0`sG0��5���"����V.������§0�p�!{8�k9G@��R���	Wy
�r�j_�A���\�l\2�8S��_�����/��M!�&��.��(�6�W��AA�lAb� ���N �jP!�S��۞�g.����D-��Hӹ�����ld	If2�<oP�|h
�e3��ڠ:J�����y� uv+tb;ZC���3H	
 A|�]��lf;I�$>.�O���o{���4���o-��l��#R>�������gH�%��6��B�5!CQ���|��9��W1�,��Q����$%�3Exhl��F��c	'�il~ȭ���:?�ﬢ�8���܉�;ش�&�c|��4�O�[f�v���˄�:j?T#�Q�������g����u\��p�z�<�I?�ٝ�ZO�h4���Y�,�Z&\��u��RU:��֪l& ���������;u\�`�c�6�/V�d�+��g'�3VN>��(K��'M�xp��Vy�v�(9��0�~�s�O�\p��y�`�_�|�ݳ�\���-Wk�bb�|lp^�x�,��?rq�)�#��φc�����J��h���_>��,w��+Ԃ�4���v�q�C?�P��P�qLbT����4w}ן��a|?��`%����5��A(���e���"Y

��[�	p�w�f
%2 �{!����QKF�I����L�fo> !P��# �k*ð8tH��D�&�W�+����/
�}���`h����v"hDk]T��_������w���忿��	�~g�'����9���������ѥ�u|W>4�M�!�}��s�~��G��ys)�`j-|�P�`˪&`�9���E�r}�0�9���G��Q`SNa�(����ӻ?��ˣ�Ǫ��8�x�������3�^pK>���k�?�+��.���8�/
5�G����ģ��2lAed&�S�@�H�E���J���c@AaaQK?	T�Y��6A��8S�rW��9H��?E��P����Şu���~l���p�/����S��^�
�&��'��ٍ�;U�4��
׳��	v��b�sF\|�4	,Hl02�hhj)��I��sA5-�V^}@c���4� ���9��6�Rz�f#]|�]��$��|F7kX�����c9ߵ���C�n^�n\d�A��L��N����_l���j��D��f��2$�ШQ1nկ�#(���K�}{Z�v��g��n��:�Q�
O��a!aU�G��k���(��D�o�:}'��d��tm�W˖ � �b� ��BQ�'��̬������̵����l� �,'|f�pdu��.�l���Q�a��X>As�"��&,V�K�t�ss��p��J�����idMvC���T�#"�h&(�}t<x ��l8o���|�՝�nx��>�tϣ>dP',L=��hA��1��r�ǜpJVg�0~Y4D��E���9��OwN	^8���Jթ�7Țs�8ؚ�#���ؽ��~P)i-��S�` ��]��]�Z��+������Q��t#QE�i�����6�=~�S��Y�� L��;�'�o����!�̘�"������Κ��*�!�@X`�lRph����3SG��:��G��F*���9����(8�|�~�� -LC���e�� �B�x,E�$()�M,�a�3Wg���O��u!j�HGwf��Ǵ�)�"ޕ#�ߎ�@��F�3�6/�{�w����f��.�G�2�	�􋟸�V�����I&O%���]1��q���|:8O�a�<}n�!w�i[���|Ȍz�PU#P�N��׼�����'0oZ�`�?�[+5�1Dgk�L�G�V6�dA�b
C�����{󹬹 ��V�L�{s�<A2P��'�g��Ef�b:����6>�D��|�*��,�:Y���@�ǥ���Clb#0&O�N�Af(���c�%�ˠ�C�e:���N0m)���Ƅ�?���X2�׹��3SG9���M��o��q7�,�\b��iK%�kZK-�8h����V���Se���r! DK�a��0����_޵��`�#9���rf�=�Бgfg��t��ﱀa��
�'oko26B�t�.�A`�ѣ��̈́���V[�y]���Vz8�6�ȕ�q�t��wL�I��φ��޵�;&M� "�Vk��
���y+ǟ��׷(B��OA{�ɇ0�F��Uc�	�ACԵ9�aE�?Wl:D�~��Ki��Ƣ|)y��V#��0A���ejhg93�&�v*��*
���4y6�%�0L�j 3fci�%ZI�.͌�0��`���*�oug��mH�V(Z s7~n�|_��Xy���U( P��٭�{h_�1(��]�pFDF�"������0Őm�T���ڭ����i����3��0�X�"Rc,T(�%a�����_޵�ҝ+�j|�D;���}�j=�V�ܖ�L��{&��t�������;�eޮ���p� Q��+PV��u�=����ר�0zY˕ܵgSx������1�u�.XT��Q�(2�d��ȶ<3����]yW�q<ZAS�����AK�\L.�'#�!oH��B��9 ���}o!o�f�!{80����Y��ӹNf!�����h<��1&��P���'�TX�N%�2�m,�Nz��*v�;>�d�b�?�摄QgҤߤo��`o�Ǐv�g�Lxl��̌8����jWb%�Y��#�����:�����0���;�`e��+�®��TӺ���FOZ�
�;hĨ�7?1���D�űG�%�f���_޵벢�af��o�G��0YG3���b����{f���FBL$d���̒fbvϚ����PQ��g,���	��:]�ݮ(��!N��.�:4>H~6d����TuɢE4|�
"T�P&�L��^$���ʣ�1dD���;�!0~�5jlש���B	�'c(���з�z$�����
@͋����:egC�p^%�X����lkg�̛Ls%�L�����G�I�����q�G�?��I��&��r�A�P&Mj|���ɏ��_K�-�P��4*��|�{z
8�U� ,	a�l]ȡu|!�NT�H^�}�=zG��`Ψ��&L������/]�x�{U]C����PP�x���u�/��u���OHw�Th(�PV�u2�h)XVͩ&f4�h@!�'&��� t���D���^pUg�d��Pv~/£�	c�� ���¢�������Lj�JR���xGC��1:�O���H��zϾ
�Ҝ2#��m	f�
"FD$��r=,
aL\\�_�ޥyB���?��;!Z\�=L^�T�G�I�A[����2@�">*lb*�Px�L��B 
��3�Qt2�y�F ���e�@4�ɝ7��C/lkRʞ[Ȧ�D��v��UDk�U?GdBIDa���:��Z�7��Y��!�ufs���h�����ʋ��.܃�$�RK��!���&%,���u�/���0 h(,<ia�2DT�k�!�B�4?5xh�Ԓ���M�dX�n�k<GP�N�K�������#�R�F��Kp�h��[$=�YJ��$�6�ž��5��@�����'�����6��#� \�>  ���w��  ��  ��P���2A\ �讐�������L���D&EO}X<|\�h ���1�����01�G;��Z<�/z	XG �NbDk����Nd㡮��U���b	���g��i��g��nϧQ�W�n(� �BF�7�6�v����aMɍ�a0��>dY� �gH��Y�"T'8���o����� �������0�嶀4g�����3�^�wHmn+�A����ﻷ~r� �樹��o���ޑ%	8����7�����]T4��_�hDI�q�zf�i{!�$%�C�E8_ڝ�L�C�Jj`IA..Ѱ_k�?��S�AC�[��h�4��ˏ�W����+�N �4��S7L\���G]O?��X�_@�ce5���=��h�(�p^�%�Jqj;8($ů�y�;�(D0.��֯�i���R�B��AP��Rb
��;EH�UҾ�߈M�0��D>���	��'
P��4 �#�� �p{���$U��Hi_�yu[ ��B0аX�\��@�@�A����]��M��g����G�$�M�L�ʺ�odVSI9�����PyŘ�	Ϩ5�ʱu����O*��'�}j79���[�xq����b�a`p��)z���7�8:AJ� ���;��$������2I:6��J�` Sý���#�9��
? J3���w6,S`�T��8B ��X���k[�LCh�[
	�/q��Ƕ���ӵi�"��F�_��n�4O�>����S����m�1e��/��c���B( ��ۈ��޵o$5����s �8��	d"����O%B���k�AiS�� ������I<5�i[�Њ���c�U�8A�|����U�K������&�֛���^z���T�w�G�]���0��ח��v}. �͂_���*�L��{��۰��z�$��	�?��Q����y�g�_\��|g�*��A\<�����n<�=�ϯ_�����lϓֶK2����C�h�?�ք���!3���|�Glwo��4D0"6>�J���0�����2�a�æ_�f��0��P� $����E���<� %��B2�>rՔ��
譾M����d.�{�]���?�uX������9~�˸���:�������Ӡ�e�/q_��k�9�7ߟr~@����Vu9*<�l3��{<S���CQy<�2���;PL�L��w�֩�#���{��cı�� o���sf��r��lf�^��Ro	C%(�� �'?�/ʿ�˪�}f%4|�`(#�i�䚦��&M�n�дu��J�����~���j�� ��AQI�/U�R�lE����$!�eB�56W�5��B�Qi!ٽ�m�"�9#�$p�0aѩf� A�D`(������b�ȓ �N�^3JC� 
��Ot�S)L�~a}��jʕ�����>,����|7�ֹ|���ѽ���u|�3 y���4Zb7�8�8�w0��ܪFWċ㨟`M��*0JA/�Y�˙Y/�9��8�������"PP�B��n��v]j�:�ވ������ =����Kg'�m:b��thb�	c�S�&���v�}
�n�l�O�� ~��g����PU 1���G��Nd�>�G+ �
u+�N�Q�,�1���D�$A�f�)�p���������Lz�����)G3�i1��b��SH�n5~~^D %��dZ��~���ѽ���:���)A�'�: ����&0ڙ�j����Mk�C�4�N���cY�WG���
�$p���sf֋�_��9FϘ}��m�����H�X��`��32׮�'����LSڨ�f�5=�c��
2�w7'AQH+/�3�bP>��v�����~�(�I����͚��=�,�������߱#�s�[��.�� �ě���L1a�W	zG��PEi�Y AT0"�Pq� ��F%DF�τ$Q!T�ȒK^3N�8D���Ts�v�� �'$81I��X}�x��� P�g��.�F_�6�9�`0�ZSph�k)�ԋ	�K�8#^�+�$Z/�]��U�)�(``�@Fd�>BΙY/�"{"��?����ٽ���jf�2�ÉOc�ȵ����r�::��ŽךF#���f>k�%i��B�o��,R(�����-S��d�Z����!޳�i��*��K� [6��/A�6�������'<�U�I�=�{�8 [�R�n�F�d��	PC;>.a��p�h��M�$P0(��L�ic=�ȑ��׌A����Q�&=�0���c��k�����C�6"���ᢖ�8{v��ZǗM$B K Ԛ�2�7-f�S���	0a
�(�oX�}��a!OE�.c"�pf��d�8U��!������n}'�hϩ4K�>F��ug�&6��.<��}&g:��I
�{P2P\�%T-�M��5&��,I�t�����I�
{c�B�{~����wΣބ�@����71�f��������"6=ڍ�^_o���2r�7�i�G���@8�s>�� 4�r�L���x�M��5�0�`/  ��\�⥿5��P$Y=�&�YjBƼa�� <��9�ut=��oB@P,�"����^o�/� ���Q�m��a�6�F�� �g�19)]��/gf��k�r��0���u�5=��Ԧٴ1�4���v]�=k��� ���4U��
��l��*��Vˤ�JM1k����ɧ��KǷ9��ʜ�t��m1�<+�|/^�ot�K��퇁���
i��Fd�1��������c�f��j�}��}�����6"�X	��G�,.1��22�	$(Q�@A3B3��Yʥ���$y�&gs+La�(%a�G//b�Z���i��s���[�B<�a=�ut��u|U�  �(9�ݭ��	����eiJ����bh�>�_��@j
r2Rǀ3�^�ꁹw���͍��t��en�U���n��02׮%(�K�)ôbfG)j�=�VJ����|�{�4���ﴚa4X;���C�6���ga��ln�v�J �ۡ��cwA�rS��E�?���>�S���az_�����uU�)�3�8�1=��k�4qL"�P���8T��'�F��C��3՜f e:�J�@^3��I�������d�ҭ-�EI�b��T{��"Ȫ[��!�@ʙ����=�������LT�E�7��	�ǥ0Tdcq�5ܞ�=.wx�Q���r�+��T"D����I�QJ��]�A�n��]/&�P���v= >4 �����|v�g3c�������y37�P����-�B�)�!۵��B�΋�]�?w�ar��>�K%c�Y1SH�N�Y����xٗ������A��!�?ъ�"�,�瑹�|}��#N����?@����K�}�q9���A�.h��a&�^8�ls�	:�q8�������y��uM��UD'�h㨛���";���������{XF�������a!�e?��^}B�>��b�1����tG��lչ~��t1����z�h�.L�����y]=��To~�E��h?���|�_�)��X�k}�$:GrYJ���ꐭ*Z��@�}a�W�fE2QK!�3��7%� ]=�?l���_S�������o��K���ѽ�k8���Ҝ���:�v�j�v���9^����#_�f�A�!T�ݎ�ǀ)�������AZN����:��1]�կ�����!�c�9}"��3�^�����|�̀�؋�O�������9������p���˪���l�s�T{�r�vsqX���29:[��`�Pf]��f�����%IsM�vP�������?]�����$�1��(*�e��je������c��2�7y+�'��#C`r�R���d	>4粍�Hr��g<������D���h�<Ɠ��
	�,q$��<�Y���I��Q�Dh\�v�d���PX���9�3��	�y/P�t��B|�|�bN��RΡ��|�Nf)����
�#<�<��zL���du�<��_���@=E+׸�K_*�vէNք%\E�t�/c
RHI^'�����������{_L��D���ՋJ C��\y&щK�@�N0��l��j��U���R�/`��o���co(�5�Ek�XVȴ�����1؇���>a������h"�`�� &U�4�b'e�`��u��0��l�C}�d9E&���h���c�1�QaP�0�& A��8�E,�F~�CX��Cu�F��:W�PĤ�_��"y�`5*�(0a6M�0����
|��Y� E����Ae`u��zl:��#��~�G���nTpM�8r����m��$k�u)���j�'��}��9�]�u�R� x�$hY�;��W&3�۔�4C����6td�ty�����,ͱw�ن����˧���v,�	!5�_�� ��က1����g�\��֢�u�f����r�/$oy�?Q�>-���������f6'`�-�I��Y���#�/!���&
�H��ZEttB :�SE#"@İ���l�@����Tl�C��¨�Ky��x�]�@L�ҁM�*]<E�f$Wp4:���^���U,�#��e:6�5��;z)Q�<HR���,���:p������2�ؘ�*s����ǳ#O�\�ޟ�ϱ�<�<^_)$aJ��$�4�"$Y��\�T1q@��*b��a�PFK%	QW��6��Uoڛ����车iM �?Q���ܲ�\����n��+g�P����W���{W_^B��y||h$�,a%*d&2:��g.����.�����G#� t�
����g�oҎ$���)�� ��
���3�R���('�3�0''FD�
@ �P�Q�)�!`kX�<ė�'��c#dAW�6�fQ���C%h�D<�5��.����<�����׫����q���v �<,*,.Yȍ��$Z_\%x��Dp(#$CpXh� p��/����܀����߳@E:��1D�\�#��%���mo;�W*�Eۯ97'����!Gd��v����T��D�u��"@B����๓I���!8 	�x0�c3�*1�I?M��hp �:��l#�B"8�
eRB�Z�V}f=��E�Yg>�pC�hB�F
�t�ǣ�-4 ̢���y��O��2�>"�5�ɓ�PR&'29�������qq��xJ�w���`'��G����i_��<�f�:�9v}����� �� `�v�weT�1`��`�.!B
�4�/����|�Qf��j�X\�EU-���Q�b��9�ox����ڞ�셖��\��O?�� 򌥙�&0e6�����0��1�NJ��A-�ӈ����8��TbY(@gC�P�! ����<���
a^�`��#b�S��.��^|��8��f.��:��������F(�Qy�N>�ܒFo|V*����*��d�^��l�)�I��w�v%���ٴ�E�|ߦ�sEN��g}�8ؔ�=�<��Dpp��D@y[Id���9������B5m�#R�"��N$�X]JD�X�"�H���aL$S�x
�q8P�5vaĲ"f����ǅ��[9�%l`�&jΟ�S�`<l�0�'�p�6�8��AH<G�SA�����F4D�m�k��T�q�sr$W2J
��~��r�O�N��J�#@n��<w��8Y� hN�)�(��8�s=0���<���qOхKJ�_�YK�m<J?�K��Q����֠�[���h �/@J�V�"5�[�CN�0�P�~�&�y���,�b��l�=��U�����VC @�B�A|bԼ*����e�w������(#�)4D &�[�C�`��O��<�F��;�v��?i�D5˪O��z�/���y��/6�QiV$��ߙ�����M�Z  � �^���l�s����=����#�G�*L�}{g�~����ݾ��пש� ����Fz�C�hcP�)�y���8YkhX�?|Ͼ~}�~7{����;�y����c�����ѽ���n��]�� ��C��������_��:��
 j�e������8��4��ay�C�C�� �XK#'��	֞�s�^�~���<x?V���i���>7��������~�ٯ�_�]���ڥ�����?�3�Q�����}��޻�p�5p�3j�D"�D���fl��uJr��vn?������Ɠ9�˭ߊr�1��wM�U4R�'�����,g���9 ˊ��Ć���X���@H�2��>��m7~��ގ�e\�C���
�U޻S�b��� �N�=.��"e�
g�p{����& j��<I *Ey���A��zq�$�G��$w�י��P�ӵ�H����U��쇃���a	����O1���6fgw=���<�i�!�Tb]PBj{��_w�܇�#�0�_�B��=�H	�7eV
�k�����{	 A�Q `���{��vt/�rZǗ	(	�Ȅ�� ��
V�L���-��U.*�x1��6^�_�N��bJE��b����9;�%b�&s3|V����y�xF�r^g?��͓i�����&��M��B!�94$ R��2�%/2>e$\(�թb�3��MR�!R�>�#�CL��/�$�A����h����{r�㛶�@`�������	���IM��U��a���1ذuX�H��V�	c�����q�9�l�B�N�G�r�Jgxڡ�����l}ac	��B�o�oJ_8S4� �Pf�=�	�>�����aQ)�a��p�W�~���	4*�E�{U�OI�9�s�~EH � � �������:��A�?K��%j,�M����:�8L!���u�9�q�P�#a���Y/T���Xt�n��F�n�e4��KQ���b��|��K>?h��[���#��VD���4f^w��0ādI�̯�h��6�QD��h��,v
?��% (�8�kog����C��z5 �ٱ��9�����㍯�L�B�+9I�ϫ��m�Z5�7���أG��	L
3�̬���aa�Ѩ-Ax���`PP$���~$�'O]�yy�h���O  2�	�h�`$4 ��z�!�@r B�>ͥ��O�,8,Q�z<2�e��_*  A�^s;��uA��K�;qb2{h��0����,L����L����Z���#¦�����HEF��ų�gf�("CA� �	A
b0���~��H��#�X��⛹b�7
@54[��R)" p �;
��ů��Q48�ĳ�ސ�B5h�NMRW�8!	B嵷3|]�.���u]Aa0��+Dj�8Ph&xm<pV K��&}V#���N`�%CB ��MJ:$XJ���e\��BD
�A�3)
��((������  ��c� �:����$Œ�+c����w�y�Y�r=0�@ �����a����׀�~���mk�J1Y�_�e��z�%���z��H4&���g|��Ц9b��ގ�u\=�F_ݻA  ���0(���N�^N���� �4�89V,�MC���U4B��,'`�w@h�P.��.�{3�\��Ҝ�>#�r���zq���B�"��pO�Ngg��8e^���S4��0P3y��8�H��D}��b����u�!)	��D � �I���ܘ�)kC,s�`��LT�Ѻ���\;Qo��������X8;��A�W{-xCe)͇,6��3�c	I�B�9ac�7��cI��̀�-H 0�H�5�~풚�I�S�q�����T�t$q.��� ���|��x%6r������Y�2IM�ݛ�<LKm�����	�"w� ��i	 �@ �"!����&	1�o�įn��"���!k�1R/	 ��j�p��g�1����!W�c)��jVv��%�ҎȢ�4�u�l:�Y��;JƷ��ҭ ��&  8��I8T3�����15A2H����B��LԤL�̜��խ������?�8Vbr7�(��c��p8��z��o���˹Ԋ!�UĲxpugM5���/���f����[��kd�lt�@�B(��L9�΋f�G�V]�yI�
�^����W'�sc� QK��탩�44�r��IZ\) �͊��Ef)͇,D"Vظ����_q|K���m�(\[6كz^�P���m�q��Lm,Rn�RϘ$d~�z��b�z����D����Yk���n*n�#��t�-��c����ŵ�@��b΂�glG��Yw����i�o�ck}7������ `0*	g
2z ����Oo#RRҁ�l;V/��&���	,U�K�����	A��r��2��bQ\r�~��v��(�4���'X@ q�E'1��������ۨ���#T�Ȳ�߬X{���W�|}��U�;��W����O����w�Ͼ;�����3�˻FM[|\�p��(R�+��� C��@�\�T���P�Ä�`杳����Z-����+��C'�	��/>���-u�T3���&�0r���95�8f~PQx,�A5�)�W�&�{�uJ�7x� ���Wh^[w�ܪ���T�������O;���أ^{;��q!_�u|��\c���������}��N���������ܘ��:���q� �Sh<�����3$s>m!�"�N�X:j�	���`������L��0���&#��xSV>�㯗˻���x�s�$�>���#�XQ�.����?�:!O�����?���X����K��h?���I}�����N�K��Q�L�yq���H�8>,:��7*C�FaĂ��QM�adh˓�P��&�|7`�G�$L��\�� l�D��뵮�a��2*��e�1K��A���׮�%�����\��#�TCY�t� ���c�N�k��X���˸�ZǗ!{ �#u��`S'h1r}8|
Zo��**�Pk����*������*%� ���,������'ጧ��9H�@Ɵ�4G>�7;|ډuė���7������>��ۓ����̿>\?����N��O��G���n�}�;�i��񌧒^`'�s���%|a4gN�fNfA��xL<\�{�L�x����oJ��9B_�h������{�"��1��|���uK���C���׫��wb���L�l�����.������g>��"�;�Һ�m^����S�t���I a����\�X���˸<���D�6����ßP%�k
Ss�M�A[�_;G��t��S\/yd��u<� J	<�:�_/�w�=�u�i�Di�ç1��d�r��c}�����׉vW���ׇw�(���9�c�����E�F�����9+dX�WC�i���$yr�3�����6�s]G�\E�Ƚ1�A?�as#������٠� ��0סs�ҜC%<A�x ~�����RA�S�{�uڛ��%>S�k���g�I���-�t�����c^�(b��gHN����O��(�ס��˺�6��ڶ��18[k��j�لvs��I�|&RVU��F�4�d�Y=_h����$�Ȉ���"B�9�z����Ebl�zz�18��֙�e5>x����3�X��Y���W�~Sm�X�o�<�'�{J]s���"�	�Q�"��~\��k�k(W5~��H��>  �L���}z�Y��ko�k@X�V�'���(f+�$i^�Qޗ��	@�wv��g��!�RP�h[n
��Z���L��r�����*�@�Ԍ�����I*s��ts|{�x��;�Y�[9�Ýx
 AC!y��_�uh_6�� � �M��j����7Q}*K��ѻd<V�To.M?3���EQ �pX%PѥKŘ�"�\�uU�e
����r<n'��L.+|Yt��T�۾櫺�/����ާ��߷{�皧|���q�X�\IQ�NL�t���_ܧ�輻yO!����r_��) s���1�����\Q��+�A�.3�K��I�Ll�P���$)	���	S�g���b�IP�ska�"�_�:�r���Wa�y��M_�ֱ����f�#?�g��P`J���Ek��'u&��e����(8����
=���C� �AT����[aβT�R05��[jI���br�E�=h��2��i�㭅��2crR�%B_��^.�:{Y��� 	����c��]V_*������ȗ��/^{^�/�O���/��|���a|x�4��9L�s��C�8&߲��Є=���~\3�h��RNa�N/5 ���[�D|�{K��c.n�"�C&�x<\L0:}�p"�C�����M���?�qmp3C/-��\}=%�����`�����=E0>�<�U�B$E ��v������Ua ��㐨1_��3�J.���m�B���Q1�Q�W�ZT��B@ ������1�����'	�J�f(Z���z^%F��Ĳf0�_zaY��[_��o�������M?�n���_i�u�mu�)��*C,��\��׏W�m����{�\?���~<2�}M �Ө�v�q��,�1�k���P�{�$��GX��)k�U�E�	Xbmk�j��
+����`0���UL+����-�
ߗ����R��{��M[u��߲n�kЏ�Xw�p!�	������c40A��5��{]�Z��:�#P�D�@4[�v��D����,
�@���B'������v{�l�aJ�a��Rr*"M��^.�Z�$��B�a Zf��v�k\j9c�tI1H]�lk��H�2��Pz�-��ߑI}Hk�����a�Q��di���F;or7�+���\bb�� �@ep�p�x����yгkLIak�ώÆ+�*�������u���E�Z}��~�����_��7��7�_w�痿��=}m�o���H	OR��qb?[�����G���}Λ��@�._3��ש��@3��;P��Nޢĝ����w;�+$Y�>To{cljt�:���e�{�]�6J^(�	�\�a{~�Vꓹ̇7H�~i7�/���ٿ�P�lK{#��1a���8J���l3xtO ���_�J�T�7����O����vp��koG�2��/wHs�ڃ��&s�'f�<[օR��� w'5�����8`���Evr�g�Z�z�p�G��G����!@=e���wi_�����C&J�s�Dt?�_/�w�V��O�n�
��N��͈�Tp�t�D'������Q�⭕d���)� �L7	汃��O��dE:4'"�J(�h�H�@(  

�_��'>8�)(���[G�����o�|�b�]��W��|s�uͫ�޵�]��go�~�f�q�'�M?	Jp�ә	������Y@���T&s��u�1����fof��{S��|��!*�C����m����2��8>/3��׫h��7�f��������P��C��Y@Ad{�~�G?]�0�e��ևڅ����G���Q�^$䐕�c.p+X~��tK=��҄�]�E����ڍ�Bh?D}[�`̩���2&Q��K)'G�'��N��RG��|����Q����(�(Cw��"ٙ����� dAT�0D��qp���Xx���EK��Cw�o�N�\\�/����g=}M����4�����ϋ������$M�|�!2Xn �`B&�D��Ë!G�����$n�:J�pp�|ɕPHXr�X�$�q� M
a�`���E0�b��_�dOm�4����M�x��ͭ���PKw�- ��{2	L=����� j�o\�,6k�ӵ"mA��+/��N��@Qڵ��
����dH��SV��Q]�" ��&��9�!��k��h�3d	P�I�,S3%L( .&V9�wt�@3Q�A�:L���������/[�{B�*1�j|CU~z~]�W}�]C�ݙc��+[��Gd:<���F�p��¨
D  �1@�h!⢡���1�[8�,� %����D���h��%�B 0���O�H��ߙ�!�u���(r�����(��Rj|R��ϥ0`�#5�މv�.�)ٽ:=���l'(ʮɦ�ڛj��{���vd��>�T��!+h�N�G�#���y�(֑�����ߧKr�cc�iP�v���$
�(ZIGe��`(������exF �iv.o����b��m��(�@ ���,@0��TP�m�o�C7k��T�;��w���@���hU�J�Ք�&5L$.��x�
dk���CA(��E��C��(�]I-p.6@ ��*�Ɂ��Yc9��|��'4�_�B=���ME[_�F1��K��BP�lء�_M��G X"SO�@l��X ��d�+D�|�Չruu����s�~�������3�b.��n$:�C���T����nN�>!vЀ��Z\�u�[=���[��
�"*�9�>���D
tB�art��1�rQ�9���������L���% ���!�rtC���o�[��Je�����;��Χ�ʀA*��#H3J��A��b���@0s��0ИP�n�@��B�$)�����F��Ơ$���~�ķ��  ,�^�X����:4�!~К����\�F¢:�c���T����v�ώ$�㡾����Y�x�p�2�']!��畚*+��\��ɭz32OG��V�|�g�����[:-x�YG3Dfw@BB��ë�������'T�m�����bD�j��C%��$�vw���81����{EH``�"�!�P�j��t���|� �7k��s��u,����]A����=�;	% cax0�x��P0o��p` <����c"`!⿟,
�A�@�Px���Py��ae���T�� � � ~�,�J���L��Fj˫�b��7��wV۴����G�S�5-h�x�v���P���@M��F�ܻ�]Q ���4���*(�e�u�ޯ". ��{jX6�O�G��ڭn�L3 K����8��8h� �$ٟj���	�5��D2@b��<�u���(�c	��f�QD��
(h<|<*�BFk�U��X�7�8*b���j��1���]M=�4t�&��Eib�A@4��p����oc@44.�y�p0q@P�E�24*Eb؈PHLPWj" ���� �z�F����~��(lV�q��%�#�w�Wn�l�� 1���R�MayʙEN)�� h�K�s<a�,Jh���r!S�Ū�h�6�UFj[�80�X0�I��y5qL�O=�~������V�6������iG�	�=0��u���!*|'�"��������-}{7ض6��,��S�
�'>�f�Z����M#۝��ބP�,�\4(V��ѐp��$
$@G��sV��T ZE��}�O���(@�;��}�S����-Q���x�v�eRA�� f������r1����a@i�i�(j������R��`�%I��8�}_��������w�]��{��o�x¯�����-�v�s��y��=3uti��ql'�|���sn�ƽq��8���؟ ^���4���������JX���B8UP��j&]	{N{H�i|N����.���z��4��z�\c�{��t�B	C>��>	�##���o�H;H-��9�/:�r�sU�'��#�|����F�-����t)�Z�g~r����9`�U����4�s����� ���xp�d:[������ĭ��A0��4O���ں�ֶ�.��Bp$� ��8 Nc;I0��d6)���AFy3O2�GE�B
XAA���-`���`I {̲����7���$�~�ߖ��!���0T�-n����M���[-�h���,����S�F��%����s���3SG7rhߨ����7��A���G��/%��Γ���+�g���aY�n�WY)��� {�%���#@ !��P�	��9�r��ߞ�mGL���������˹v]�=�'j`�����K*O� �E�5�B���3��h|�N+��WK���{	�$+bAM��{2|�I#ʬ5#�&r��<��g�b��� j R K�̣L�.v�C�0���3�ā0r(@�a��ӈR�<ό��%x��s� �Ȯ[�1C���Ӣ��Tk=�|r�-��8�� KF`��C�܆���:����5x�7MV[pQ��`��hnLIlh�̖¸x�[;P3}��S��š�%Ų��=ls���o���Ӆ�9?9]�_Ͽ�k�eg^�v�M�2[�m�9s�v�	@�%D9饇8�0�L�E(���[���fr� 4>Vfm'����I16���'��Sb�6f��b�0�x �X
7�Q8u2@�gz�`8)r�NCC1�JΓE�� �P0�Ti?;��cb�H��ow��j�G����v���U����Zv���28���%�px�۪=3ut�4����!i�H \����Ef��v2�M�ح��.ih�S# DK�a��0�O���rF �\t;�5"��k�gd.�����ѫ��~�D �]�� ����!G/ML�1���h,�3��u�T(��d�ޞ�IL��t1t��j�YK%�(�xA'eb�ٹr�Xȑ�e'�T,�Ⲅ�I����T���ǳ0�� � %��E_�)f��%����?�XA+���E��Z�6j�"d j1���7mH�.�'N����:�����х�l=I F�3��A#Ӧw�j<�H��a��k?]܆�ME��X�PK		=�#/7ȿ/�|���xy���>�\�F�~�Xl>�Y�,a||rT��SZi�2�����2?�`<|̙<:�E0�����'�a4*���64C�G�A`Xr,���)��E�*%� �3L�����'A��1{�$}����r���QcԸ��`�2�[���#�����:�������,��gAԧJ�6��,TZq
c�0�-{4e��3� cq�ѣC�&�q��f�/�|�����B�TEA%10����})h���1r�>>�X$w�p�a���T�"����R$�l�8I@�����=u| ¡ $)!,�&x2�@��1�[��	��X,��p�E����WTUE�=���D�La˕'N ��0g��.��:���(�#]
dȂ�6FBf#��.,�4�w~���bQ1�b`@�"�CA��Y�#/7��/�|���p�4@�j����nB��vBPBcC��R�"6�*�N(`kCĢDAR!B'N���(�v�4�#C��YBʴRC���BgI��0`4����؋>�`��̲����_����ə��@p48�EX������L(�(L�3[Gw�F�4�ຂ� �Xtk�¡0��`��ѳ{��i�"��6w�e
���	lp��	�Rp�r���:�3B���?>�v]�>;W^U�<oex\������!����B0��R[�0�
*.& BD�����!,T!U, >
 �(��"`X=�"��())d���/���e9g��|]�b�{>�s�9�x�����ffy�&����,���ۂ�&�A  h4|"�Q���� ���`�I� �"O��4	�2n�8!X9arF�(�{<
�>O���L� ����F[����Zf���A ���C���mDUѥ���ؾ9����$=�$=�]Q'x7��M�j:5���V�>��sر&���&l�шzkjk���rv��z�Z�����ɰD{�gk�� ��X���:�Y7�jE�F��٩���ٯ�;L�Dt���@�-C�&�1�dKMuo���Q̅�z�	�Ԑg8�FFOO��������0�嶀4g���������#�C�A�W��?���'s��d|�~������(�~r����_ε뒦

��F���#b����X�ظ hh88tFn�B8��fe
.¡kIT�@0Y���U��Ĉ5�.� ��*�a:g�ؐ5�k=Ǻ������qlSe�˧�8���]]�\.� �2q\  ��
bcC��q�O	X,D\< &� �5! |8(��u���}�r�H&N��{�������?[�J U,��ZD���֔U��ۡ�&�A����c ё�( ��<�FQ.��Н��0�`4����1�6i����`x���A�#��:��O��T�w�%_��'nbQ�O3��i��a-4��Ð���ʰ�q�Э7�d���i��1����!�C�-��q8��`W��#
� @ ���G�F��B �#a¾@5"18c�Z�<�4.뢬���3�O��k~����{���^ϸGdK�>�e�i��*	�=�]�x�\<�d��q`)Q�D�h 
�<>��pH����p0��!�@0<�L���z�K�O�{g��2���I�b"b�pxJ�Y�{=w3���)��-�������Ä��E!��M ��
�?�����A��'_�[P?Ǣ1�Ҿ����xLO9s�ѡ穳	�*I����*����~|'Y��%�eY�H��=���s@>�%�1���n��=E�����:����L<���`J��I6",.6��� A��hV� ���F�#�N��A����jIS�P�DLcdaHCL�u�����P��C��=��m��9�Ñ�w{GqwvW���2,3�sLu��hy�)B#�'� �"�QK/�
��K`V&C�^�p1Q� |(�ԣB�Ppd�P���}����C0�X)"8��ƨ�޺p����/��!	h؊}hO�w�J���c�B��(�,U�๸42�'�R�1��K��5aC#0�;������i��5��C�㼖����'�v��@���y�Y`�҉'�fU=�@���p%4���le����U{шO�����"`����$ �
KF�\|L,(&5$�@��U�iUFĎ1�06(fY�qf�9W���0%��hi�]Rɔ]�ݣJݞ��]��kx&O��34s(�~���QL��|���|��^Ex�j��G�o������L�ĥ��F�������q?�(���8w����l{��(7�8�w����@��o��!&r��G�W���.�3���ge�m����� ��;�a��y���S���������@-�qnR*Q����ةu���������U"�3'c'�mSh#9�����|�l�"K�J�e�z��M�s蝹��b%�<b�D�����.��n���S��4ށ��]/���A`���s~�	A��DŁteD Ɔ��x���4`Q�c�Q����
��8d	FlA2'i<����XS.�yw�W̜;�z���ɿ�_�;��k�il<������U["Y�5.U9_>!��|F�����q؝Y���4s#.�3>�e�`���x�<�|"z���^?:|��MSG5]؜A�?R�:*y
���%�9ʫ��}�ʑ�;}�2S����~��/���ݠ��nz��<�`�o���ڣ��^�W�&���6�_¦�σP\��!�����#OR�Y{�����1;Ϊj�O�+�~����84wa�'`�g�	!���|z6��?�@%�X�,sC2��:�`R��4�v�,��ø0\`^u�V޴d��MeT��S��O�@p���Ȅ��A�qa@�   B �`�� %��8�8`,(�C�B�}p
clP��&Mò��n!2z���_�\�?����1gt.�\/���k��]�
w��������q-�e7��l깖�CQ�=>��^�FDa��=��e �c.����+�B!��QMgq=�_gJ�K��pr�������2q��A<D��m�e���,nԳ��?�:����¸�k��������Q��a)
��Gz�i�J.@׿���s� ���ڃ��|�ǡ��h���x�2���s ��
����{ח?3����ڈ�Ň���G���%�?�K���vDB��y�j%�� ��������79�:v���9����Ő`b!3�q�!�v6҃�?�W.�iv�  T$�É��~��� �6�Cd���u�c �d����FNg��ӳԳ�+��N��i��2;)g�Y����J�4�p�����<��l��4q��(��op�q5�o.!�T�?��;�@��8�{-�����<Q�Tsu�P}彞?�8�;�Ȃ~]�=�׬�{�3�E�/�W�+��(��������`��:����j���8ߤ$mliҲ��so���� �q�=ӄ袊'}X�	����u�wE�����f��XY�kR6,��>u�!'6���m6?C% uS[�9�K +���kFehk�$a�v�E���b	�IY̲���Q�ĖE!#��-Š��վ ����I1�>&~���C�q����!���=���}�y&�o���.�*�RW��O�A��A	n����M�{l+����y�</�o���6��}<��'�6��l��걔T���^��L��2�}����WC(��0m���l�I�g����l�}W��b����� .+1+����7��%��_����=s^�� �ڮ�	�a[�����\�����|�����Z����Ü/�)� �Q?�o h+�{}��4vo���w��)�_خ�X�d9�ˉ�'���,���q�w�|��]�	W{7�)���6���w�ӽ͏��5�}'�罀�J�"S���o������k�4�K��0,�x��y+���%�0Y����04�P����Fjb}L�|����{(Q�����O�%**���7OK>��h�$KDv��Z�d��p�O梼�������_�:����V�v�n�s�_g�2.�ݨӻ���6��0�S��v{�p�>�i�	��|45�N��������������(�֌�,�����{wo��9"a��w�����sh���?02.6,T��p�P̩���A�Xx��SVd�>Yx���B�¶����U�U�!p����)��s��Z�C����o�� ��&BC�*���A)�kY�Ց�2��h]�p�����I �p�X��>%�Co��]��	�n��
D����P�0���rFA�s'��&��3�dv��ܽ��`�$[T��b0��X2�o�'� >��΀DY����O����i��GE ��)-�9�JIqj��Y2�&&�iY@�{�Ҕ� -h��0�A�a�[��kw�8�{B#w�:)�s���|}��ݗ�{�1=
�P�����ߖZ��ۃ�BUx��y���`+�Wy����r*g��WQ��`~ǥTp����<��a�ߣ@&E�86a��P�a?N�EoL��X���Z�{/��;�'�0��x�w�Ȱ0P8�sx����hn�6��/���Pp��X��;3d�Hq���,Q������/�D5vh3����R��%�����T�1:����|7�׹=~��w�������Q�o�X�m��o�,�=L�:,��B샲�E���u��@��!���q���X�ߠ��@�<xTJ��b�Y
��0"���~d�yEĂ�X��9h�`P� 1Q��
��`[���b�._C l,��-��>4�s�hw1��VV�f�Q�5d�j:��
F�q���6���g��K=[I�l�͉+v�f��>Y��H+�Y�����:MY�M-[WK�A��<���y17_و>��t( p!A@�	2"����%�y���h"�3y�{��wr�@g�j`XL�XΙ�47�;����<	���$�hFs���)�>�]T�U9�< 
�@�|����|��8�{�������B$�ޣo�]�v%�8�w����sh��4ߓ�ę��4�c�([	�G�y��Wl����q�Wu��sy�e�1\�Y�xɏ������<�7���Ƨ�!"����	�E�͇��9 �����g`�X\x����#�2~�7.K����?����6~Sm_ʃ�E�	�5ab	9�U_�  "��E2�s{�:�?�:rވ�)"��p�'��Ҧn̐�k��~��9�R��x�^�u�������	��E�0�"&!Ɂ�˅�`�!�4P�	LI�S�@���!͈\����{9|.*����y%���F� @ }����q- �C��`��+����<Dl��@?�U9����HPv]�\}�
�k�>��,g�4RG	M�ըZO���P	Dg��#J�զ)ߏ9P��C#�a��
U8��3\�Gqz;��S�S�;�1�B�Lƚ�JO"t| * ��A1�ӟ�.��``˲ZI���ꍎ^�-�$���9�[I��A���K��3�K��^0S�����5{�i>������<&4�^����G��W9�s��������VdA{�&��y���}�&ʍTx���8�����ǅ��`8�&F���ۇ,e<7�qb~3���\��x�8F�s���[��k�8���y�.��q��u�b�9�����
)b>���lÀ�1y�����L.�X�=TO�W�������,K�Н����KYA"����K�����Д��.d�P� ��`��Pg�z�#���`1�c�G�	�_5��r0P'hi��8oyK=Z<�ʀUS�A9r��@�c��੣�e0%�@A�r8¨X(�x(����C�
F�:#r��,�`���)��d�6 ���0��C
��qՀt�"x2Ġ�� � ������]�`mq�١7d���
O�v��t�I$A��1����/Y���nd���"kRlHص9ԖE�P*��* 4A�))Q�i�wzvj'¤J&�т����r��>�T�J���vOh�i�]-)8���������s�e0Q�%O�<����rg8�v,���F�A"��!�Q����0V.Ʀ�i1���U$�C�np�`"XTa�Q�� x��c���2��V�0 \��a2QtRL��qF� @�$�n�݁�Du}���ԩG$A�����[s`�z���!(�n����\��g�nuQx���Xbp���x"F;`Iq0���_�u�:�l"Y@{ĕB	y��3�CUn�ő�>������*  ��QG�#L���P�@4T\ a\|l����x,�dA����`�
%r`lF�*��+�'�2����S!p�`3x*!R&s���;��B���lYjz��r�H^�ތ��]>Ո���BP{KR��ψ{��rv]ti�)ۃ��w�|v�1�Z
���T�J��ؓ��R�8 ��k�Q<9C�|ۛ�f�d�
�!V8��C��¬fS"E�E<�}���0��<?�Yi��@�㠃��$J\/a=5�W���}��5���D72@Aϩ&��9���qPTq9H��R���	Ȑ'�^��	��Ϋ���W���a�
�~Vc�A(������v���s���xh��M��c���c�``�(� �Q	��"D�>"�`�!P<xrP�!x0h�юG�&�(�6iLL��P���$���,(�?1��x4�R/��]F(!}�/����m�7qQ�!�O�K���u�?>����_�u�:�	A� _��%�i0���+�g�[צ�A�Q�xka�'�̑�gC�d;;@Ld6A8�g�C����"�RE
bD�c��̡�O�_$���<�zj�o�"4U� A�b��Eg���QH���J�tC��ͨ��*�ӯ/���<�B�C�@͗D͞:qz
��]*�1R��v�v?�#��V����:�lC���!L��N��2�e4�!M�|�+H;ha-G�L�ǨB���,�0��|�Hn�$]��%3E�y��c)��lV3�=`"�![,�c�e�����`���\fd��ӄBu;��U�����c�"@�/�����>�2	唜�GDĤ���<���4��"Y*o�X ��%���N c@+��'��F�<a.Exh0".��B@ �<Ȉh� ���A$G%J@8d����pP�H`��CA�$�L7>��&m"5~��z	�0��4r�?pI�0�V�.Q���ƀI���'o1Q�Ё���T߻�K��^���W���D�_g���#��Ua ��G�$L{���2ȽzA�������E� `8r�*�Fc���w9�~O��YB/�H���;�������ejX@�Ox���kg���ܑ�@^F������u6Iv��fM���U�Q�P��P:7�m��4i��������M��m�>A�F݃�"<�j�&0��ge�q��ea�E��Z Vp4Y�v,N�Hr�A?�-`AHR��c ��V�@�E�=�9	�i�>:؝���iL�+bI'� u��_��8�X�<��'8rfgt�m
�}�!v+kۙg�CȎ̵�옴�3~�=�۬w��'��2�; uGx�b�� 9dNA1K��gxDРp��w_N��ߑ�P��H�B� ߟ6�$��̋����,�6��2H��� Ą���`�Z
�hp@����� Azi����� bB�@�"J�:<2HTiç�G��ۤM�s�����ィ/K�$�Q���,5Ɗk�%2��C\Oӭ���ѧ���XL�˛�R��w���X:����u�/�:r�^���A6t]���z�����v�
��K���M���aJ�a�ő��I�S��������<*�x����m��kV`���q��O�/�oK5�l���f,�Q�b�vˈ\��ѷ��^�{�m�a[�l1M��wL�b#a�I5f!�(x/���g�=�=��M��޼�-�2y���_�6�	��,�`�������fpϪ��^���@.����������3R����ܱ�~�������|"�yy����*�3�y0<� ��4���>%������=0#3�yx�d�5^��|/�T�ӥ�m'뎹v�1T���MN^�s9�c��3���\�n!�1@t��W���erV��ѡ"�סv���'�&��Ū&�5�h��܂:�|�A�M�el@�h�va3[ۀ]v%���.b �0�e��l}xߡ��4o����R�귀�ƅ%�ʱ �j�ѩ�}h���|Q��s�x֙Y9��}�A����mH���;�W�'������!M��ο>�c�_ÿ9B������k8W�N/����;n�C��9�_���|
���I� z�Oˣ �����]�BH;ܥ]|���޶QgX�sh�a<�Y�V!�ݼ�˽��σx�Ѽ���k}�%������9Z�ݾB~�GE�MT��U��};��a��^������K"_���\�}��~ف�Em3y�Δ���\9t.b�4�c�użK�o	���Ý�s]��4��(�:�%5�=G����o��Ù�u����ϝ������^�8�0������w�{����hv �����>ų�l��O�0f^�<;2"Rp��=R=ԡء�}],A�T�	P�b#"#� <g�w�R%�=�����gMlX?3=����!*E���K��3T��vJJd<����l-��	-Xͻ�=�J�G����O�����Y,��W-��㲡ߣA����F��1��A��?[ ykwힹMCjN�~�đb*]�Ġ���d/�ٗ	�C?6y�p��s4�C�i��~��}k�C��)
)&����e��	����Z����0�,���0��A���˴�� u�"��0�@���[��N����m_��e+H �{�U�u��{�]�#f̿��aYq�4J�T���Ƹ�>;tp������V�����@(����C()��}��P'��w�sJR�5���O=}������>h�d�B�C���x�C��@�P4��V��\	�P+�x�3�Q9>dǕ�jGK��iжB��CÇb�Vsh��!Q�ӆũ1յ�QT��C�-~�<���J�2�"e T�pn��{9��FL0�,�^*px�Nޢ��m~<HH=�ea���d�Q�s��{F�jެ���,QzD���V��	I�0��T��Ы� *)��S�3��d�2�A�i�%>���I/�h���'��'��E�a���   !�킬p����e��������)��eL�u��8�olr�O�ĥ�ɢ/
`*�%fco�H���<���D4,�F*���K^�����4��\�F��`���wߎ$�/)��LD�������u��7�x��x�s����0�����F������-����ɊD�<�h����3�����ٕ��l!�Z���3����=���c��%l�%Ʊ����Ql�Ƥ��9�h�������iG���<�s���*�@� �\��g5c����
��B���Ym����	.�7���b��X����!<�:��f7^a�w���zb���]�?�U �;,5�̆�����x`L�P���$덭!��0�8%rע��I���[Xf�:Q��s�v�ԋ��F5D0��>�?�Ʒ�^Ld���Ѕ�2N���/�J�D+4;<�ug�Ȇ���!��Q�V=��\��M-$���W�E�"��U�@�����	�
p'�v�R�^�k�p4<t�B]�v/��I ��ï�����<@X��<I�Y���l�m�C;cha����O�
���c�ekC�Ӗ��Bt?
��W/U䀶��l6q�\W������f--�9���]���f?DB|�G�q|�e��N��Ԝ�����ͮl�?2�M�X4#�d�����xVx�:x*:���OdYzk�049�@�)q3}��DN�.g��Z�_�4p�a:VP�K�:A�>_b]P�~N�0.F��ӝ���	�6���|�Y�ǞM��c9���4�,��4L��g\�Z��g��Wp^#ˬwߒhʅ��ՙ�y����*��7D�� ϗ�g#S��HSO��k930	P$���׾�"B?З�Sb��N�%����\�m�:�]�Q��`y���+U 8�V#O��`�!K1?6�����K�)
8	��\F/�yA�����ӄx�w���@~t���㲧x§u�,<��8^7�y�!��o@,3���ik<�olq � 4I�ؽ� 0x��Lh�L��{ϬhT��Zb/�D-=I.TKf*�o��L��WT��:�Bb��@˖���E��� ��j�����4L����`�Z�AU��S,�צ�k����l�,�x?���	���1��9D������7�j\Sݟ�^��"	E��3��L%������Q,f3����&Ъ�~����ڻ��j�p/#�l�x��f�,`	�b �'Ms�Q6����	|�k�X�x��	q�Cc<�����n�KB� �;�mZ���a�:&����s~?��S�@�r�?l���h8�)�o�O"c1�ˢ�[�r�*�" q8��֥e��
�-M#C)�"��M%S�Z�_H&�X_�6F�ÍR�nYAU/,��Mj���A{���W�K��2�`"��ۭS�%�?�_�d�0��\E/�9�J6��0M�����|ś�������jjX�_`�@�8���%pQ�7�/C��P��qB3�m��w3�v�u�T�!	�6"�`���K#�P�i��MC&���:�g���lz��®�A� �JCc���!	���=�.�k�J0exlXt��	� @0���0�>�������0lL�}��V֌o-�dQ   4��rL���z�*a� 0��H����H�}4x\���=G�:A̖A� �����̙�5|߳꾏���{��s-����*$J.8Q��>�p��[�Oz�?���TQ��v����P9֡�.�G�E�|�������+��Ƌ����t��֑:�o��������I��#����	������7���_�~�*��f�7�g����S�������,*����ga�B)��nI��߼*��ɋ��&��+��D����}�&�6N��gi��}?��BaW�Z��C7�կ�Ѹ���%  �� K]�RH�M������۷��v��%Z�o+J�׎�t�d��0��W�8t�\�8�����olC�z����;���;����S��!���,fB5q������H��zN6>{1	��V����p�~2W)go����+(�� ��q����oX@�C��k���2'َs��ӕ��~�L�< л��������-�A�g���m,�F���}����vo��A�-�������1rB4'�W��7��%�vjp�p0LyB!��P�\T(�ӟz���ۘ���!��� �I�Q&�����#�#� ��B? ��� ��M�4>qk�r+�@D)C�64�r#��Ug�&o�Z6gkD�(�W����>4��dۅT��ὧNj����מ>F�]V�d�⇆h�����jb�'��,9���Q$��L���ֻH|"z�g4$> L�<���J$�N�ҝk�hj ���v���՝}��3#r�mF`s�����>n�W����#E����>>d����Fٟ����L3@^��C @�`b���4�]�P} 64�6J�W��Ix�>�j�|+�����@|���6�̇���~�%�Wϵ?��[r��X,fw<�d�O��e'��ճ�]�$�]P�k�3	�M��s�1!�֔��kz�Q=.��`�t����G����j��4�)2���4����лk����ɗ�����zf�FF�T)ѨD�B@'@		� &�����Gł#�/:�9a�\�`��wk ,T�a��A8p�8��H�0P(1 D�J` �K.2.�-F����`0�y���>�.O���$h6�4U9�p�Ba�=���K/�6 N4XtcT�h�������;]�L�qh:GO~�Fhy��[���۩�mI���b�8=qt��O��1��08f���q�DCH೓Y������A��[#r5�k���ඬ�'�S��� ���5wC��0���	��O�B! �*�e��V�"��pLf3���x a�(�|��_�x��د���b^
6�`B�S��ԁ0���G���eKo�p�SD���@��̵5kQ�U�mY@��:�����G�9���"I"�gP�ޣ�m�&�, Cl�>�8��ONt5{���ч�B6��fʬ�c!!:�삞   ,l[3��� �����H2H�"4�2I|0yj�a�%���
}��D(.��|�CK(�S܏:|rФ���Ǉ �a�bRC�!X% | O�DQш��f!P� q`���,8z�fZ��bZk?(��%H59��c�{���oߵ���fe$/,!�H��Ⴋ������Y �1I|�.�Pօ�3�pl�k�LWi�N� 'v�?"  ���!��Q��Z�8���  U(q,ʝq�ɸ�R����7#r�����X���~o:����)J��3͡Pw@�" P@��8��~&@�A �B@�fo�����0{�р� |��~��@�k��a��B�"���c�!�P E���2�@0�)~�AB�@���\v����JkXBۯѿ���P����<<�9HB�����dÿ���F�!Lԕ���=��t�� (48�% @cS���: `��Q˘��A�C�f���(����D�'� ,��dsr��CԽ�����k�>;�[��0�!Dh�� yX4(�1�1�� �y*`(���B���5�L�OY:�J�0�s�v�m���S6�jg���MB�uKR+�2lNl��ҌX����:�~�ݹ������$q}LRG���V���fl0�'�)ë��<��gm�|H�'� ����ٴ��\G��'������ =�(0$�����8�Á0���ϋZ#�=�)��E?_�.���4Pk��� Dm�<�y��Q�0"b0$��!��q,(��,����88
 ����#S��b.���� d L��\ExQI�[����`�����\n6
�em��$�}��7�!�H	���޷���w� 9�  �:�,�nBY����@�b��� 1J��� ���y�Nmf^�����̦�y�K�w���lf-��N:��w}R�=�ۡ<j��ί�����̲�!=���?�N`>A _�	3i�
��X��iP<�F=7w�a� |�f��*�ʫ@�f��i�l�p	��!-d�G��n2�R�6�u����-	ʡڊ{ʌk�@D�!����7t��w�[5� �֐�&��`l-ٰ1:@5=6p�ʭ�p~�m�îV�ى6�\���` ��'>J@T�Ĉ�/�T�N��S���~��W4y��'s���&����zyY���@5�����  � @ �����	h�)Pp���1�cD�0&� ޗ�@ ~�����D����@,< �j0�C�T��a~V���
�����X��-Y���%o9�`8Lx�ު�9�Uk�~,��כF ���gP5͐�����L��E �~ �P���U}���]�9,I�Ag�x�hcM,fU��̌�j�"c#CS�c��fY`��g��N�>�&s	�2�����a�cY^b������@�g����l`���;�0L���]ޝBu�;�tXBXЌ �7�ZY:!�Y�+{�_��3��+��\��F�׉1������=2۫���>��+���ǫ�Ư�H`UҚq���QpU±��%T�&��*[H('N����QEg�B�����GO.DN<{�y��A�����=��e&���BY�����G����ց9 <�MYpRQvvy ���b���6�7��><>>�5��xP |�@��'� 
�!hT<$X\�z2aP.�o~?]A �8?�����\pk���+p�f�G��1�Er���F��޳U�|s�)@E���
�������')�Ԃ���'B����K ��U}H�`��#ؤC��ۙH�B�����K����T㵫�- u�(���O*�T�Ҷ3C�pl� � ��FZX�F7�I��|�M
��f)
z�l���щ�$�z;��2�������|v� C$�Ƴ#x��HdW�<OC�OR��k����6*Ͷ����23�)`$.��
"��|�<8���f�Ȁ�MS)=�Ǩ|�U�������r�~�>����w�ZԹ�,����U8>���e�@����EHG�q��!�hd%Qe���9h�bkD.g�����z:�\-2~����.�Ch�v�<��kk��٠4.wHn
 �׍_���6�RÅbkD	��7�1�/� ���p����a�C"B!=l < �2T.�)��,�Ó�GF��'sIY�K�VD�-����C��a���H�s�}D��[P�|�)�c���#H��a�z�%��!Ȕ�d=��� D!�vN[�]U)8��=Wc=phvt�s��G��bL����젇���[o�&��jt��~Z|'1v��䬜j�>],���<�T�r}�J+�a�!E_�c��V4,
4�G��|��B�1�&�)��oC���~���N�M��'�ζ�%yc����1�]N�����b�}θy���ג�{}ح��/F��z��V����ZN�G��t�A�O��r������et&F��8�d�~@H�	�{.Io�5V��`]�֍!4)λ7H�8@f8��<��Ob�O����*^Z�_߿��_K0
� A�{GŠz%N�.*�&T��x��@ �"C���p0A�W�pB$�7h�􃉑#��ˆ�� ���� E�*&�t��N H
�8�o#����P��a ����w����;�����R�# BQ �4� @
`*�Z �^7F��k��Gq5��o��Y�8ƭ���
����3D�"�}* Z>W�
�A*��24���a��9g8�Tˠ�9LR�N� �ȗ:HVZu<6{��!l����\c�(��'�"�Z8�f:���; lc6�����=��I<I��l!�l:i�F!��!Q�amĦ��޽¡dr��ۓ��0]�( 2)R�u�@��X�ҍ\!f��L���T��1ԍ�=��%��򸘱fh�����/��{`��/j��W�9�&wfS��lT���w����/�z��}8�ˑ��7O$"@@0Q��u�e$>M 5 ���(�I0��Q�U��HP�A�@`L����8��@x Tx<0#�ЈP��(X�t��>�̃C�F����7C	
 �H]�^�",��
L�9B��M9���=2s;�Y�鶕v��+o|���P��I�3�x�Q���6v���� �`��6!�P���XI�~�!G� �p��,�PD� A��Eª�lS�YN���]��3��p� �(�G���+I=���2: �]�4�������k�\�T�gl��ѳ�y���G4�|��+'e����MWܨg_��I�oّ/!����!��*r����x��{����{�2�����f)h !.�yhTQ�$��°��!P���L"!:!jf@AA"��@ <2D`���(�B�����| �����$� 0 ��� �@�p"D�l��(
0$X|�
���j/&�"�n�uR��c���Hr|wn���:,q�%�O����3��Գ�� ���N���f/��S��>�����c%+�K�dHp"S��k��F�L�0<������-lŜ繭_�L��9_�ke'��o�gE�X�W4g�� X]!N��33�	���D�
=CQu'y�u�:{�y'ݣ�e�D��Ó��h����ϖ¤��ѡ�p�7A[Q
lvמ��uS�y�M�������'ć�b�a��� ��
 $���  ��./D��c��;D����a� <F`ap�ap`@X���1q�����'��d��0<0?;#DF2
B �У"@X�����=`;�f�;��7Cv\Ǎ�^2��O�u�L?]$h��h�O��	Շ�c����\��k4[�F+���h*2�2�g�b4��GFg���X��b.y�!ڝ'�&c-�@���::g�4��팡�����Ϙ@?�C!�0�Cˁ�^����E����t�J�t����K  �ZT��1�d�M�P�b	����9���*|)��I_n���xeѠ���9T6�GQ��@  H�-���	��
F��`Q'!��� �.
d��p!$P��XxP0���!��)��B��|dhL\h|L~:�O�A؈@�x?������&�Q ��8,D �@��G��Μ�5-B�;�fZ��-f�H�����N�S� ��Қ0���x�429�ery�YG���d�2K�X	�Ա;�`3�4�ڭ �0���U��5��/Zߣ,EZ����^7 �B#����L곃^�"�bŻɝ�8��$��w����}���3�͌�{lY�9.=�����tV.Q>��'g�/vQ���A5aF>�,�y�F1�+��q׬��p�T��u t! ���h�$�#"�¤�D����b70k�D6��C��1�}�HTB�xD�Q$�J�� �P��	��!�����O��Ie�d`���� �%R�
{��! �%,D���
U S�A�q�h�Lb�AO�]�6d�����il	�X[�@飲� Q�ŧL��C�q�tД�A7
,"Lo�I�<3Y�$��i���)!	0��Bu�9.a�����0 �`�&C:���(g�zƥ�5群��6�S{���n*;���8�H~�c���bD�d�:�#m沜2[��=G�Zj2�/�c�T�K��Q��PTm�?fvDDGC@隵�ۉ�f3D���9�'�8}�9 
��T��8��M@�V��p l�� A�����fLF���"" ������U��`$4(~��	 LF�Ӱ�2��O�$�X��m�L5:HF�j�Q2:�B��1vb3�va��Q���W �KPlT\|x\*)*�a�C��hb;	2@�&K���I�4AH�H-KÒ���bu�L����1�� �6�K	�� �r{Կ���c�v�%���xg��E�8��1Z��D��������EE˜���D���6� I�C��� �Tm:V ����Y�<����n�g��F�Y�f\",B<8�؅�8-G�l$	E��k�Q�� |0Y��`P�(ZXG<#�x@Xx*��Ad�}�D"�����bT2D����ϯ=!�� a8�j� ���(��w�«<ϯ�2�-� � 0�^�n�C� /a+���%��ʤ�c)��A ���/��s1�PR*�@�A`|`� �8E,�7&O-%4"�	��B�睥 �l�A+��+�ٺ�N;�U�}�S�!L	�˃ �!��������M8���E��{��5�U��g��!$�_t&��%��\�N�H�<o	�a�>�F\\�u��TNO<-�X����-,)2����mw'Ϻ�\w�꟣'������U;������z?v���?ʞ���ZQ���sѺb6۝b�ess��(G~Y=f$�R�g�#�̜���wʼ�9Q�Ŏڼv�w#���Y^�b�����s��#��%�����=x��������^9��^[�[v~a���}俦������0-�y��G�,A"������%������\�������\��+�-����ȿ�ru��p�{3и"�_��`A�j�f�������w�[4���4-�߅��-z
)+ԉ�P?��8��{���u��"
l�I����0&�b��m�o�LE��a�n��~���n�������40�� S�#��u�z(�L�a �-6���l��E�Z�/�����@ BQ�p:�)�1�9�+­i�=l����y4*	+��"  	�Y�Mx4bS�"�a6��>��f���)# �7��p  ^�O0 �9�Y�	�#"�@�A�B�����I���,�#�����%��y�0��	�J>�0�餝۰���\�ôÉH�O9o#�e&��
��hK^�PS��<	��qV�����i뺷�<{�a��nf�����`�J|T99�u�2���Ǖ�b�X����g�������_¡�|��9�.zy�h%EJ5&��}@�1^.��@���o_��v���( �8�a�]{Dm�wwȘ���/_�i�~%B$ �|�"F��-�$qC��U�/q4G��Q��\�DI	B    p�\�F~�������bb
H�E D�K�8��P��<�7��.),f��8�����K���e���T�>{1��v-嘄dD�X�ݞf_��F���]�{��,������A�#k'�H�w�d�Q4\��D�1'���t����ڏ�S���p>����D=u��(�6��0`H�� ?a	����y��r6/P�!��Ƥ� ����x=2yh8�0�L��� �{:�Z$?q�3"Ɣ��;�����#@^.5
t�a 0!ev S�D���Y��{f���d6Os7�h!B' ��o�*:M���2ʗg�Sn���܀�f�ԀFcCct�\��&�*1b���Q� f�����'�T���lrJ8�7�1Ur�6(Ŝ��3t��W����v���}��}΢"OA�$���h%Q������A��f%���m�Y����4����)cF)�멳LI�c���~�e��	�d�OQ��DL	�I;"�=	>�1T� �q)�#c���B( 
��֓
f=��������� +|�BA0�$�P�h�D�YI�
5�4p"u~ȉ�HQAA�'�Q�a7E��Yla���G5�TFEB���#D���D=i��b6]t�B#�\�h���D/.�ј`�=!ְ��"{!PE�w̩k�xG_����c3��4!�UT�VL&,��:Z��2WS7EX�ُ!'��&��:*������ۘ��%�n:!������.0@�C�`���q!09����(�<N��X{���#�KG/�4�L�j �@��{%A�}@0�E��(*�d����jt��FD��D&�q�w�	�&j��O�,CA�H��> "�8T���Yja�D"���B}�eR�< �fm�'�sHH�LI(1�(9D�vD~�jH�<i�����v���'��;bzb�d��$#o`[�C�6��tC�l�IE�:��R���SV	��h�a�E��c�0"�Sg@J�g�-�.M�$���f{����РL�͎�A��&�QBt��@Q A�ʁ��k��
�)���G(�!@����T0�p4(�R�� g�Y	r��N�0���&�I( �>�l� X�,r��}��a3�v �
�R@��"`�b�`4���j���fbP�"�� i����᳙��r�$�L�"�,���k�q&ܧ3Ghk�ABѧc��rFgl�oכZ���jc�-�ISR,\[ʌͷr���t{:���ã$x N����O�K��H0��g��������*�v��>�1�.$�26�c˿��'E,
� ��^�Q��f�k*�߼�5���x��l�RtrԈ�)��k!�2|�pi�#��:T>̃ "(q" � ����/S`�a�{=[� ��9�������$4�c'&Sy�Ql�dr�H�a�MM;�vja��1h��F��	�6$͎��>c�!'�R��%�kD��fr���}f5)�0��p,�kQ6�<>��jR�Gd
�I@���K�s�I��J[�:���?op�����t9}��?����ܽ��x�p�x�@d�A� 8Ȥ�'-v�N�4���psІ^&C3f�e�N�!vYpR6J.�����	�K���a�?�|G�F���}�������1%?��^���sz�V��"^:3��ߜ��
l��|x椏G�_�f>�t�4��]��Z���������~�+n���������ϋ?���ڽM��W�w% ���E�58�?)�A�c�D��~b�h�\�}�\�t�u��}Ʋ��8�`DaNL=�N_�סZ�`���*bA�������D]���NJ�h����b��(�
�-dC�2��xX����>�vk���Ү�	},��Ǳ��J;v���\?{��y���j�{�u=^��>���������sVag�W5�Yu�z��t�<_x�*��\���\����z�4��F��恺뽒g�?�������-ow�w�5��d�Ȫ��)�׃�:��Ow.��N��G�����g���'�������|z��}q)�s�_�?��s�\�緎��ާ�?�6;X2��M�
�>d2"�����\}.?������<_�����e�͡m�=��|[7��ib����>�u�=����ɣ}��U�1U�B-�g)oAo��ܞٯ���k��\I./����ɭeG�$c�2D���H(Hpx`n���|/��Y�U���̆��D�8�d�ٳi%(D�
E�L�A0��E`j��;�$���f�>�	����t�u��r���`M�am��d�n��D+!1�	Ƈ��86Q��&� F%�c%F�Π�1E����h�6X$z��;9�:<֘\/y�)+>�uH�
mXP�kݖ��ݍ���R��s8E| ���q��g3��֓���n3$b1���B� x.����y4%@�u-�"�t-��x�O�'u���=h`Ň���zv��bfR�}?�<�2�)�`VJ�1�B����Z0K�&�%��F����	 b��P��,���}�.I�ш��nw��I�k%&�\+���B;Բ���cX�h�,N��Lc<*k�A�O�M��E����FJ$�e�nc�QTCXK?�dm��L�>�2�iE��)X|��Z�N�n�$�qYϏ1!D�%r��C��"
 �(�_��$���ha�����������$et�8L޿�> 
� �ͮ��R`lg�{5����	����uD�[�I lV�s�>]��>T��f ���MH6��T���	@�CM<|L�w�
qf����Y	���D�g���T�v{��3��a:〔���_�2!�N/��F-�Te*/x��������?QQ1�r*�N�e�	�������^Cvx<��E}-��ߏ��i���A{��!��ݵ/C��V��z�~���Gg! �
����aT���?+ B2���,a(�P��A���Cg#91�����'�-Q�GD�ǁ���ډX\ݺ�`E}c�hb+���&e 4�l`4� E&�P 0.̈�z^
<.>
A�>M�8����*S@�FG_5lg>[K.� I���e����D��]�B����> ( �
F(֨��%z�<�b*�����p���L�2:zu���RhT���3�l��@�>�J����ͺ6��l�'�.N��!B#� ��pc؎O��'�I4g��rm�d8dB�a���?�PP�P �f��gڻc{��٩�ƺ8����t,�����r�Mz����l�S���ڭf���a�0Ę��?���us��0Wx�'L��Ҿ���N�xNL��D���0�<�C�NB_�^�^�ZMе�'��.����'!�W>�� $�B!�F��8���(���R��]�(Dpj�$Q(a�J� 	Aq0L�@�T�\��
���P+��o���$μ%��`q��E��!"�c�&	�F�'@�����``���| < *pH�C� �#��`��a���z2PT1��B�CAX���� �x����&�Q `��$X��=���4�����AH�P1yG    D��'Qg�l���!ThNb#l�)�����l�ru�#�
�&���@��J��р`< Q�Bl��D��f&�z�6%L0>xO{��s�v�l?��Ug�yt,��qL�YA�H���!1EA7�ѝ��4:�aB�<O�F �<�&+f�W�y�2�C#���8��liӹ9����t�	~�7/�)9��ԭ�=���"�z�g�O��u$ �j��a4p H�擁Q&�ARRE�DC 1a�B�s 8.u&r�8���A����[f��E��m붐�%T°@�sD�0�Ġ�ط���Jn�A@ ��A3"?�KGŃ��Q
�`�`��f\<(X,,�;. 	�F��c� B��%@8�3�P����P�Tx<��#���� ��(���B�@�L��# ����i��NԸ��(ϐ!BW ����ʝ\&�����JV���*��s�V��6zBw h0%Z�A���!ӯy7GE��C�au����m�hhL<\�M~Zh�N���c\O6w��j���ڤ�J�0��1���n�%4��S�����;�*&�t-�H��og�bB�@��	���.��i�MY�}fk���=W�H�k|88�����C������OKp# �1� �xD4Ԫ"IPD��~@�
\lJ��(&�q�
x6���`�z�q"[ �D�/�4�n�s�{K�=�noH�($�&�K�Ax8�b�8@x.�\�fD~܇G �p�shh\(0���` ��ib�(Ld�	@�� PN�-D�A9A� � J��A  A�@�����"De�,.��Ќ�@D��Ƈ��B��3��d�����6���
 g����!Ά���U��s�}�\v�'��rY�������	P�� �E��q�=�Z�y��K�A�{3��% ���k�ѕm�g�|�QWl�Lu�����L;!g���s��6��f}3�3��/qwhP�9���D"���/��V�ʬ�B�Խ5K0��r�o@5�>�<��}Ӥ��'�b
�e���+��=�ص������"�5t��6]��=�P:::NN����0�25 �Z���'	 @8@͐����@(h ��{��1��!F��G#���
���`�Ѡ�
� �\.> � G�����l�E���)!�c�Yh\,,n��`,y� C �'@e�];s��C(A `h2(�Q�08,BI��4 �Q�	�2Y0�
 b@�@@ \Lڃ25���`��qk-4�$HPi8y��n�%2��
'��B�<����. $�G �*�"��'��B�n�!Rf'S��"�YC88:�B��J�i��rhM�"EV�8GH�m)J��FH[���ۛ�I�zt��I��z���y�:��y�]�q�" BD'��s[�m��!&}N��6��+�V����^L��kb��ǻ�C��7��h��j��
���D�@�F�-��V�d�P�Ԉ@���D 5� 8�T�$" #FA�Ap 0<<�P5�r��S*'T�A�(p88p`J4���`�bR�&,
���GbD~[-L,4 Z�`  N($X���
M(X J��E�� 
 ��F ���@ 3��2��hf���2�v��'�������>���{�v�����&�z^�\z��Q��	�:��)r���ɑ,�e5��*�/�1��y�� L��1��M��SI�$�I�s�s39"24�N�7}1�g�9�8��*��@�����韰���즓�\���� �2���\�9�;�p������P���ic)ܟ�p�����;@&���{�����`����iD��5��L얚�����%/�7��2�-�X��Z|D�d!׿�!�� ���XABi��nbJ��������J����L  !�] ��	�#̕#
A��@��gU	��%�(�DI� � R
�����!�`��^�^  ������9 &���|=��rO�HsR��1�R�ԫ�"�Qt�A�����R@�&N@A�3���`<Rԧc@� �(��I��`LSG��t�$E�H�� !\,(�H� �����q{��}$f^��;��͜���5>�
/���x|�7� #cj+�`Mz���`�9����-Y����><АUkb7�DǞ{�H�z�:�Y�r��L�"�20� ,�b�������
2� 0 ���� PP�H�����L�pl4"
*>6������� ��� 	q�\
��������I�<"����%��S�=�]Ď�O�B��sm�`���:�����՟~�Qe^�uDRC��8�)&��ޞ
��o� jHk�k`���Ry�r��z�{�\��` K�*r�9,Jb,)ʜ��@PT�� ��Ca��h`�,E6
>> �N��@�}��K4�H\J�*� �4�pX ���4 
�`<(80S�=O��K|����d���>�;�q����/N�Af�ͧ�HQW�1h!2���j���.h�?���؍&Xo���'=�I�W���S.� 0L�yv�e��P��(2'FPA�\�,Bb����H p�6� l$.@�
q�h � !�G�F"�H�($ c�q����}<xT�����%�@cQ��9]Ӫ�f�P�$�%R�L�%h�����iUᱦ��q�j���j�������4���\=����v���z��y\��X��)�a�X@�����{��6�T�b��p�-<2HT<!�*�Ե@�@H$ ��(DPl��0t0��C$��J(��!���@\l8 ���0pظH������A��)"AQ��AHP�q�$9'/�kP9L��16�f��i���������zp��� ka�Ze�g�D�&"�*V�L�\POI�DB�ſ����Ee���� **B.I�$5,���`0>���q$%�#��Pt�D���@���:�00>A�@x<8t	A�������a�P��ĆR�&c�!�QN\`�Z?mI�d��)�y���:�O�-%�(M\���aL�Q?*�2AY�B�c�e��Q �4���S��B�느�@w0��IC'D�!C�8A�N�f<��H4|���Q�p .�A \G����Y$rx�q �.�2�� �@2 JL���S��XJ
H�������F��X�M��m�� ��#�[�m��lA�wST�h�
���r���_\.vC���#2S� 4���;�zu^�= ��F>�T} �N��?��H�����>t( Rr�iչ��Jl'�C��8xgN�J0�r�C�	��8��"}�!�|�#�w�:H���eh���ͦ���pA�Xd�c��	�7=/���/�(�|8X0������8X��.љ��ײq�H�aP��#��� �� -�H� �� ��ć ��  �@�9��D�h�0� �`�   �mr��
 ����mGQ @����X3}�~��q���E4g��]�q���C���֒
����CSX;���a��v?�1�:��&<�F�@��â��� %"BE�C(0�9��0 ��a3FA ƀ@��@Rx40 c65j9(@�g� @ ��ED�����	�`&AB�����G0��%�B���^�@
2��`�t�D��(Hz��'ti�<�k>���Qb�d���54P^}�#V����"��O P�i��,.>6�Bx :}LT�����D�PBT8�`0  E�G��A�Ā�D�рNq .66	"�B��b�H*:�`B)�!>�|��
`�3/
���@������|"�F]�}*}��\F���=����7W���Q^M�l~M�fߵ������~�� Ѯ|�	V��F`$ )ܥ�  ��c�"������"TD,3_� ��25�Dx(H �	�Q��������S�m`A�(���@ �9�  |"4 .�F���I�D�=
0��GI��8��b c ���Vq��eb�:|LқWy4�Ͳ}����G�b����M�q��-�����p��,���zǫ�ӫ�Q0��0�ݒ�)H4�ӲU�!�H@t���a�!�P	��*J�d��/Yl��)A@��� &�J� ����6�&DG`P&kB"� �8�|�+� HE7����!D�@y���8�3,�Ҳ+�P�Xʙg�"e��'��է匙�ޝ:ML��L����w?��;n��L];#fv�9 /K���S������Yg�tT�`2��c��r�A��H�8)��N�,kmN��B>��?Q���_1�z�e�O��'	��@`3 @�FބJ
nB,0"���
��`8�!.�QQ�E�nO��T,%�3+���e
d�Ü��+����+��o�������KX�9��8L�k��Xz�y�jگ�"��w̄͘��>�eF匣qe!P8H�� }�$�$O�@�
@�D0�UHAP��w!�\���F@��F��RA�Es
:9[j� �H+zܴ�C���Ȃ	�у� >H��1LO�Bp����9�8���dZP� JTX���Ҍ�+e�ƛ�����养��� Xx�oM�$�~-m@[���k�+��>3;�)��物���N�%"��b6Ah�D?�h<q�YB� �w�q"��e�t���>L'c�χa`:x's��r#�,�M�(�F��y��\nw��s<�z�*��'ll4o��6jĉ�8�a� 0�L�.���{{�}MC�]ʝO��}�����Ϙ=�@��b��v�m0H#6�:�jN���Z���0LZ�YoS �1©ˡwگ�Nz[���AE"�aZ� Px���̢�� }�E>K|���>p:�� K^j{]��N��v$�������g%���}�_�����d%N�Ck�����̷7�}�}��Y�_�M�_>q���\�s���]oן_WsF��g�PA � C3&�y��)�^>f��5o51�1]���1�i�&eBB�R;p�o���4���H0  !9�
++yS��]�|�Y�F\�2�9S�(��� -�����L.q�a�`d�\g��e�K��P�ũ�"b���Ȍ%w߀  D{�m� 
 �#K�Qd(�Q�ݦI�Iⳃi\,���&Q��M'O��M��j����\�2��ä	�%y���2@<V�.L��-q7��F�O��O~I�
*�CV$��39�O�|�f����� o�:�%� r����.�Cqf޵?��7QF�!�Ѫͭ��b"��[f [K.�r�8�vi�Fd��4�m ��=� �b�(�	��P�K��fK;��9DRB'�����̏���^��漗�k��jD��b�	�,.��v$�`,0����qT�\9A�4] }<�U|
F#kx��8PbԘ���
�G]I���?:�R3���n�MO�����K��l����"��vs1�2�^�i ��}#�)��+h�F�`I<��::��D��0 x9=�{-�x�ּXJ��D���H�(N��Ć�sK�ۙ�`��`/�$ƙ��Q��VF�;5��"ˠ�1p�Cg�Aķ�|�
'�8*u]1F�!����3F� �����#xI��n'�X�cD�y�e���&���~g'���d�+�~w��������L/����]��,-�idem�vSR�����7t��T1#���	�G�Y�G���r�b;����֣��-.����i�Y����|�r2]P�f~a>�O+�|F3�8�hd�&K���@0�|�� 
�1����M�Z>�����P
`T|S���
9���G�� ���*��7�42�X��Բ8v)��l
�*�c��7`:H,��*�i�g�&��%r/��-Qt�<l�À����v��(�N%��&\�%�$x�Zn����	��cr=���g�QfӍ��� ��\���M���@��ԉ�g#W�'L���*.E<�8����< ¡K5��K I$
H�Sstм}�'�Β}�΃K�Ed�n'8��~򀴍7������ ���sɅ   T[�Aѻ� Rc�u-�{����mXۙ�	K�.��&  �r!�$�|�<?����\���8�#\�|M�@�Q!�E��_8��)��2�?�.?�c|�An�+� H0�'���*�f;�q-I c�@01�҅���@EBA�La�	rR8x%N�"I���F\��(3T{��1�l��v+#h���@�nl`�L�Vr��n}`֒�f�� h�eC�5ܣ��a[��ZK灈U�� �%�&��#VS(�"&2D����Y�td��]�+���V���r���E�$_ G��7� b+o`��8mx|�$��a��l��Z¡\E�p�"  ��"0�P8�`
�&��6���	.��t��Di���k�X����	��@  zX
�/�X�g���4�����������G����#�����ykЛ��O���+�>o;?��\N��� P�,��n@�Q ��Zӛ� ��芺 ~���]J P��]A�>9�@��;   ]� p�;  ��`*�;L�����K�S�v��~����&g�X ��iFP@����[$� ���������
����]�.��Z�%�A]���*p�mZ�S���D2��W��y=�Kl�1�[Oxڲ�	W@ih�v����h�G�-�8�]���)�����kwR�<�Gs@d��{IG�{�2�Q1�;,���ΜIm%$����w��{�a&���z���^z��vG���{n�	}��2zD�ɩ�H���Qh]��]_<e�<X��w���04(Kd�>��F������sـ�I[P4F�r� v����H�)�)B@����hn�v���6���,�DBy�>e��w������c�LF�i��U��ZO4	D�*�3�}ڎ�� _���/拏�oy�X���4�m��1�G�( $/��Ӗ#��,�R�3_\��"��{���6��ApIn�-� u	����*D��ɿ�;P!��K���20�B@]@3�k�P�D"@ p�4��A�����܈J��`����&*Bؒ5�@����  ^��h��]o�[��z�e2\�"E0q�/��:T��ʃ��X�m�9��� @  <7`:�.�����h��`�M��V� \���M%�����3<kN���/$� @dϴ�A�����o��P!�� ���g��݁W_�0��a�֜��~A 00�%��Ò�b��C�5c���}
x} �
�j%����|�W]{��
-uj@g��H0�i��24k;�-/��n��]�{�=-����� �4��?~����_��_x�}� b�5'�:��(�  $�M	!�����_��~����.��������Ƈ��w^s�ȁ�w~���9b֜�j����=��H��Moپ9��jvX�+�,��������t�N����XPA屩�q�}�}�m���e���}�A�������D�h�f���{���WO[Ġڦ-�B��ק�~�ژV�r��7��i�,�4m<�te'�f/u��=�ơ����9���$gEu����+��_�vp�`��h���~��E�aE��UÁh`�A8#4�b�r(�ȓ�*B���N�o�7�#4�^�c��@I�8�BbvB�s0�
�b��e�ΰ7p�|��W1  @�@^wL�3�-:�{�`no1��|���T\}F28��&a.�BI�7��5f��籬5��Pv2�r�4G���wP���c�=Ы/�����B�� TT�F2.?	%"B��::�0L|� ����iT(>��ѭ9�f��[}�ɥJ��X�.H���4N��d!zR:Lb2d�~#���A@ �uG�@�g`�g��^t�������ff��Qƙ��Q2K_�QMeB�ݣ�)����fl��K�����ϼ�ݿ�?��w�9�etw� $D��
D<�Њׅ���C�8Y N������@aj>��Dh�d���Z��d���(�>>�S���s�Y��^�qڕ{r;�n�Vq�1h}����D��=8��������������X�#�gu;�C�E!�ݎ��C�%��t��'��g/����wUGij�w���!3��r�^�{�=R���+�S���ѫ#2a�g!�0�A��(�|����丑� fq5=��]�]ot�~¬;��j�6K�_&C�=���8�-�� �vʦI����r{  "y�1�(J� !�vv�4�k���_ޟ��D���φ:�Vt��C����
��٫���O��������wmQ{3߻=�ܐcf�@����=�O�(��׆��(�p�0Ω����̻�-C��WY�s��A8��q+�!�S"��o9a�����c�`��I�y��b����`Ѷm�h���! ������c�dF�[�i�*��>�7|�ץջUĔݰ���������6���Ș����/�7�W�L�aӖ�ug]I����/;g�gb������YI�ك{�Y�{��.����w>/��4!�������2̭�8�HQ��F7��`s�.�yZ�-�P�Q�	�Ã_�ϴefX��}�A��?6�m�b,�%�-ѳ��HO�[=T^�Fj^�y��j�̌�k���x�<����"�w�y�g�G��P��M.�ʾ��3�<&=��*Xᕠ⭴�y�%�k:��]	������Q�a0�7��1�:�d'�y���9�N�&8lnot:�'[����d���fi���v���\�rg`K�� B ��k����rr�sޠ.O���lآ����5g�2�ϪKT�˛/e��p�f��n�w����Ϗ�>�;�"�>�z^&��v���*A�v�NPɳ����]�jG�x�,��,�qj0-��s�(����X�U��j�y��-܈˵<�����a-B�6jg���ʃԶ^�dt� ��Ce�ĕ�΁-�		���vC���%��d��-�}~Z�t�a=�M�\�>LoY}<�y�\t
�G�, T��4��-I
�+����ѡ��x�B�pp�q Bl��D`  A��#N��!Q 0T����hL�`�+����`���8���(y�������n���Z���s������~���ɝv����8�y�ܟ/�;�ϯ���J9j�XVh�{9�ӳ��t�z�^���)�J_��q���{~��l���Z�����j;�<��y[�|��f�7������sv�cÃ}5=�w�u^�v��P���*�Ab�b��\ù�����'09��s5��Q�P�+,b��)��)����O����n�Cd6���j3�1�B�1�Zq��K/	�� �B�4���Q����N5>E)#
[i�"�z�)㑤�*���~����O����` IH�E�% @� U0:&*$�a�]K���B����)���׵@�{g7����v�3���T���2uu�>e���j�$�\f��tN��/
���L��M~��7|���ڙCS����U�^�S=�r�0T���%<�t�S�X͜��B���q3�!iB��ш������wSA#�/��ް.�)����q��sL&���p*ڪ�uz�����*����JO	Z�N���^��Șe���	M�&JW�n�x�����GD��O�mҢ��ȴz)�@5BP� I1���L����l��b�G ����Ĩ�ibL�E��CDL�ٔ82@Ad�2�����M/>18�ב D�*T���؜�ql�T\=97s���2�j����l�1Lf�Hjv2�E

obqds׻���[����N��c��3��\WR�����3��琽�!����U�Iv�[ǥ}���a�{�+�n���Cæ�$��ٜ������8��9���5��+vE�2�F�`��aKdVGכP%����MHf����Ĝ/T�I��I���FD��ݫ�+��Z���B㨢5��BȐ��"x�Ӏ��� ER���2=Z���NBس.�hlc)*(m��� �-@��B���^jd��(�H3L�� dq�`Bd�P�ANk䳑V��&$E�^�/�_ r���~%�z
3�g���C�[X�}l'���K��Q����5;)��ġhr�y�w��u����S��~^[�g^�1��hN�4�ChU�Z�1bu���^��g�wu_f�H��Dk��������1���1��x�[἟���O���noT3L�6����bR1�00�Qo�5K���|֒�u�g�V��׬<a��Uݟ���ϭG��L��A�h�{^�r>?ؘP@��Zez�$��8!��i!G@Y�Όײl�Vu���b�itQ7g% �:H��]�D��� t����bC'�B�6������ED#�!����2�5��G �Ġ����uM}8~�5�e-�p�L�M5yj���g������찓�&=C�L���E�<��\����v��wz9��X�{`��㷿 �5�WiʚC�+|-�8�a�u$:qΧ��袉5��$!h�˙H��^a{���|���u 5�J��?�߼HS�f1��]ƺ~A,�80z[��jƜ<���o4���/�����v[b�x�3�ډzF���^4����L��l*��I�q��F���tzg$��&��p!��BH�԰'�s$An�b0@�B9�"���Ԑd�H�@�3��v %(�tyϰKFkdP$�����c �X,��I�k��Jv�1��:��|�.�P�&��*+Ӻ�g��[��t��ΠX�F��9��ngv?���c��?�Q�����ЩF�G��i�j~����a�\��0%̡)�����>�x4cRSE'$"�C0�a�H�T@{��t��Y��A'��#����w,b���ӉlB�}.�9U��$|q�@IU�/����ۼ2����h��m^N*ٍ(\7n�rNA��I,�g���v��Od9�����ܝ�����国X�!,�y�2�W�;60���q.ev��t�`F�4m��x@t(]��2I���h`A
d�kl.�oR�t��U�������������6�"n������]���L��J���ՠE�ƌ�B0(�aH���ݭ���y�L�Yjvv�~5��>�~����Y5�ZN�z��7�qau��Ĩ��!W�s��|Z�l�	�A�bD�)HSFE�7�/8}�bjS̒�y�n͊lx����y�ʧ����"�� +P�y���~���׹�Y��[sbI�*E��D�/x�e9�3����nd��3�(��XL�L���3!2����	��2�� AD��B�$
�tR"OD�0>*� t`�2�/q� O0���D�0$�o�# �X,�ɜ�7����[�l_�k�@�U�+MG2>�i+H������āj33ȯ;xw�*�]߻�ݚ$�}>R3��]Fj�;�˻w���"��s�]�Y�G�{�HV(t-��b��PFg.$�EaDTi�  B�7�y��n�L�i�����^�vV ���k�J �
K���$�zA$�ʑK��(�R`Qۦ��=yn���ޭ�s�=�(�\�o�ߏ�??���[�Wn>#��~��X��\�Я���;�g��Ʒ�(�d���ެKD��Sx��{����N*s\������NT�{,�)CZ  #a�8���vYN���)���2�.�f �"�HtM�T�"c,i.���` �@��fv3���4����k��y�����K��g�aM7]�������A�%����8�Ӽ��Z ����  "��5�jMm�� �����Jπ��]cjτy�/ocϯ��	T��Ιlr�&f�,O	0�K�rX��
'D��+�M=�P�	ʌn�q��5����:�N��D�
��؄24O�)��M3�'.��h���<��v�&Clټ�*�i������ ( ⁀tQ��%C�n(u"bP4|1
p���<o�¬2���O��5D4PBm��KH$ 	����8�6�E����<��g�D��e�g_�����j�e�G_�f�:�
kb��Q���� 95�m.��ѳI7P�0�X�74}�[L�.��D��@F%�)J��f��A�,�ϥ����`X7	��hO׍���!��@
�i��8L�@!Dx�� �C`d�� � F'u$ B����D*&�d����
6>����U�I$ ��9O]7;;�%iFuf@���z�Rr9&�4<���{����Db�p_g��t��|<H���L��ػZ+eV��9����ڦY��/�D�+'��#���q�n2۬�.����'�� e6pu�"�!�19�o�T�a�.�.:[Wg��\O�L$U�Z2Ֆ!�O 0L��B� B'>�"�.0�
}��8�FR� ���U
i�|lj0, �������7�1ail���I%���&vl�u�'<�����X��wϦa��y�E��oyϭT֨P��v�R����ϼO_��m��t�I���X��<MI�>Sf:5I_�w�G����k�L�W������)@>�uz!c��!�(r{�����.r[{ /�wy%�=Dԡ���d����׳Bq�ѡ �i�N;5v�C&���A'G��
5�y�m6X���-FXi��,��$[�B�:�M` ���{G��8�QZ�Sk��<�$��㍿��W��Oނ�q��U�S\������V�}#�|6��P�-�����"�^�w�������>�%`	����1ݩ�����٤�&d�3�Z6����J��L�9�`�>8'(����[ݧ�rM�!M%v�HXC�;��	��ņ3D@�.�	���d�R�@�GPf��W�Rh�cc3��IĀ�����`$��A;�%D�	��(�mI���M:\$�<j�a��?���FJ�� ���)�+��	��n	���H�5�iG�nfL���b�F=����o����T��4�-ĤL%��Cԧ$\"v�X�uc�+-j%Tw�4�%�r��nN�� �h���I�O�Lb�X0j  %Z % (�DZ#����	&�E�   ��ƹ��>Vk_a8to��4!����Җ͒v�|��%}��3��&�	�&峤%dT+G?����%g$c��2�q"���q@	�uq���ω����Y�BG��\� xd��h:�9A�6K�ضK�� ��iF���@"*4�㡑â���F# ����x2�'8@k����(>I�6iM H$�Df����f�&	��� ,�e)����O�D��N����yV�f�<�!�^�7�<k��n��P�֦M���y��F��2�.��&M,¯����|�ӂ���|Miw�<q@�%1�`@�I��d�q�3b�
�j��%#`�_��[��s� Б����
 ��+V����C �|���n�����"9ƹ����bx�{�����ޫG(YbH�B�9D�2{�!��٣GE��D�\aa��P�f�\� �.ͫ�����m  ��-%��+2�� �d��&�o��,��ͷI���J����[��1)��M�ۖ� ��M�FB^N֒�i�w'�����p��3��ݧ�,�+/��&>M��1J8x�0X�m���B@   �:�|CN픤�7h{�X,b��|��(B ��G�w���-�i������ג�Γ���4�&6h���S���r�X,B�!t+3[No��_�����ǯS����ņf��㺯ə_��@ :,<6$���s/�%�) m�#3, !��O�*
!  &^�[b�?*o���Q���dA\��T������nl@C9{��[f8է�g�>�/6�} 9~i���o�P�gC��L��
V�z���O�;  �@D�_?V 
m} ���}\D H  d�UQ=�[z�3܅��˒��/c�(����UԷ�0��bu!g�l��yzw��xğ>/�M�u�/���g�x9i��&�(ɟ��+��Fァ���@ �?p���eJ(��q1 `Q(�?Ϋ�B@&d��Lջ��R��ibRN�%Յ�F��@�=�t��K��A�5��'�ت��?��@m�����s�#�,3w6#����
�qpP@(��'A ~�A;u,���i}�X 
�@���W�7!�O=V?I�Ol�>I�ʮ%��l��cSj���Lv �(|�����w�go�����XM-��P�d>����3K�G�I�zz]�`"��|�������tHޭ�DCp`P�cB�}7+/�^m��m.XU��^��y���!�� ���a6l�2�
8k4��4���矾�Q��Z��z���I�	[ԯ|�u%�����+#����̏�  ���S�0��+#A� ��'y5�H$t�c���=��,Y�� � H&��o���}���haI�v�d��� �	��k�/O)����n�^��+�HQ �c �t�{%1��И�皺�6�  ��t>�>ҫ��@�L��G6��T�Kc&w\]�w��~rv�.�"VUZDA $ ��C�#Q�p�"� �	�"�a6y*tQo�7��bRb��K+*O�����^�/h����@�Dv)�j�\B���l9m�E�D^!�O��n����\�RR�`~���P2� "ˏy�X{Ü&D	`4(�Y^.ў��?��lC��^�! ���!=[�[|��̞Cu  �}�=|�F��j~�0�<�Ì�� Z�>���� I o�|�ǅ "r��ᬔ�@��!H@E$d
���/)��ړ�ݲ��C�����6�1��#�ѡFg3.:y0
�k���ѩ��x#=2j�� Q�� �D?�a�E����֙�G��|��,�	���¼�vw�N 	&�����#���a~B��\G	��a.��D��`�/5�sҟ�,�����ކ�_]�׳^���w᳒=[v�����N����E�G�$���pX�y�ĭ�i�R~
�j��_��L��oUDP����y�#r�9�F2]�����O�d����y�������`�x|fr)�{��PӇN�X�dh`���4gᠴ7̉2��n\P"4��7�Wc �$����5���fl�\�]����Ú�HQXk�.�0�/S��*� J�3³\K�86����f�+�m8 ǿ�g�=��Si�i!�.붍��z����k����� @��+
Y���(�7禚����
1c<���̝ &s�a��m� �aq�B�Rph�0�e��ͬ�M�%4A�_4��v�\#�j`P�E�[�[���%M=o�޺�}81�b�rrQ�����S��ϊ��J��G���q����c�=�~/�����-��iM���{�?�>�5�j�n�M��'!����5C��M�JH��o5����r���O{3���f���\�~/9���5�Y��i�������=�\����C<SoUF==N�������6%ۆ[�.5���W;PyUQ��cX*�<E`�  �e�N4�2 k�	�N�ArF�}���  b�Xp@��54k1cU�ل��R?ӗ�w������Ȉ�%��Ѐ_���<'!��-�04	�h�+��<�����c`$��>\U�Hwk5��[n��TS"��$*xU�(Tda��BA��ǡQs��*HIW_%�0"Қ��ɓ��{�,��,�A�'E,�c �:�x�W�t	V�ѩ�kx߇�w�~�̭�v��t����0�������#֦�Z��(�׌�!�q-�X�(��if9;Hr1=<��1.�H.�1\���V�x-�=�;QA�b3��<�w������`�� ��! O�����iV'���ݻqDl�<a�蠥,[U6t���m�c�1���+Я�凐�3b��r���xЌĉ&��c��2T{����,�	)L�3�)�e�D�ַ0��xl*1�%	D�y�b�`��(@iM�)ٌi7{�bh�Kz-w^����p�	1a �Kgf�ʘ:�͛=��gӗ��显aݹ�e�,/����B��z ���cn��ۈU�
	���q����lv���ip�`.Uj<£@R��;����i����R$�� �A��l�b*D�j=Hf��̀a0X� З�   ���P�j�������8;u�v��E������1O�l"�Y�PH�z�6a�;��� ��ʽ�+�|,����Z��ta��A^v���ф��fW-7�p2�VPAռFN�@t�Xd	�ְ�V�_�hO�-A њ�Y.O�:u��+���L���d����g�4#��W�jLL���Ʀ)�I��M��=������cI�ǒ@�j��5"��{3V%���̈́ ��01
�$�D ��$1,� "�$�+:�e�����D8(y�� XʦHi�9�� B  l�!�n��{<aDN���Ոc��R0@b`7����4z�t-~ʴ�WKu�~ˠhIP$t��z�MA�Q���U����g����w�k�7R�H�+"�:�K�Ɔࢀ @�VO"�-%�Ų	#�Z��i���ާ���N˜э?_?�Ї`�����W%�߫����?{w��d����<�で����|.9Dhh]҄[�4�j����o����5d���j��ED�\iH2@8:5�8Hԙ���-� �i������kr��'�b��a�X��C�d�^N���=�k-Dq�,��X�m@�1�Ж���A�{�I+�Yò�������L^RB�H��#X�m(��:h���_{)_ØT��!�+ʖ$�C���%�ݑ�N� ��GM-����c��^N��B K�5)�pR�����}"���ۯ�� e;���Wv�J>�����3?�sz��__}����O�u�Ag\� Kh��Aw��+�%Iݳ�~���Aոa�+fud�,7g�,-�Dl6�����E��  �	�Q�h����ڊͰ�m=��p�7B! �F=\��,��������C�JC�W[��!�d"Qw> TJ��Y�PB˞�+��B����,������`?G��!�����1�h�<�e��H�J�<e2���-��2.1v�� �ptdX�B0Jk��}|Z����=ה������%E�a��S�_�+�1u����O���=�L��m}{�[v?�s�� ��s	,����Ӽ��ʭ�e�1^�()T��<;$�B�JL�$�:��!Gba�
l��� Q�_�/L��Fc��A,
����]�56yݿxJ�3ujT0��}*��(,!!xWb�y��Cn�C�w*ed)�*�����b�����Eyr@hXj@��o|ӕ6�Dz� �bBA�1�
,$���F��#��Ң&j�ӣw�n�d��X����4¤D�%����
	b��~��<�S�������L�J�s,=(@T�.�5�;gM��j>�5�!x���4!��a��* �!@�����3�1~Z�2���6�V�o�--�h-lN�+����Q�λ܎��,���1��.�A;����bog�8�^��=���Z��[�`��H�p?@?G��������Zz�q	�RG����s�`~�:ߙ��^�׿Y�3�^�ռq�o�e���f��/"~�kŻ��w��K��q��ݙ���Ӷ��v�C��ao*ǐH�����=f��9qO�7샐r�b���9ߘ|�l�?���7k~���m�;�]
|��'ʿ�x�B��9TphO��E��/ӻv�v�g,�Yٗ�s������<>�<��T��_�~?��Ή���b��o����#y���|rL����-$��E��x�ѝ������ѷ��[�a��1�9��~r�Aͧ���Q��CF`���9�>/�Y��{����Ǐ�Y��+�W�w䗻�Yx�-�5B�	쪶��[/x���h�}�^~Oh����.c�)��ҥ5n�He��.?h矘Q��:}=���~�_�΅|l����㋟��G��瞓�k�N/�>��^1��  ˁ�0�CaK�ޯw:/�7�?�O� �:�}�J\z��Rf���l�O���j}�mGh{W��<J��֘q��������Mv��;� ��5�v���rr�r�v�Pg�>;���Ց�,!�g��0��hl�dG����m�
���2F� O )��(*!�#ө��:i(t�0�F��O��
čr�:�$�QL:�@�]խ1Ѥ�@��:�F� ��ьd��m�cI(�{�6}�e`�2�q���7դ���H$�����Ir�d��w���￲��ی��?�9 �q�EP�D�K�`B鐀�[�-(C�� u� ���z��vc�ǧ���;��}�n��j����n�7���������`�C�Y������    ��,��2��Д�A ��bB����e�z�x��x*�����r��-q"}V�u�dv�\?	���"�F�Y��G�k9��WV�L�������j�5(��͟A�%��n�̓e!�!�h���o�X{�0[�asЭ��W���5�R��z��*;3��?Ou�A{�gN�D�m݄
���;J'�a�;����M��S�ҶS�v/;(�Nv<��f͜�a?�N��U{�g�Udw@t)3��n��y�f�V ����4N@�y[G�Ff���b��K�u�c�2NVlLh)���[<fM�Ƿb�O�Z�te��l��-Hw�gVV���k����Nʸ}��IwW�%�L4�Cf}��;tO�d�R��Ǥ|�l�X�ȪцH�}�C�z$no���Ej� ���`9���S�־�ܯ��&Ӈ��so�ju�p�f]._��$�}����7�1BXR`�D!�! �7��z�g~�6��~y5;]���s���'������z�?/~�������I*�K�y�x�`��;��� ��jIxF�A@h,8( l,|d$x%)��iS)�*4��c���^�=��~���e��2B/�����Y��v��|j'5:s��:�Z[�[�ۊ��V�������o�@@  	���(�@��Z[ۥ�u��,� �6=��=�8�6�h�N���;V3�����Ǳf����n�M)�}��rQa�lqyvP�ɖ7�m�=XK����:յ>��/�Bn�1MO���s��ۻus�����5ЇG�s�!�D2,g&�'N�t��Q4�5$�n%A4����?����mM�6���o�e���83��Fpg���D�~��۴_�bej��_�g�#�X���N�dc�t�PZCǘm��]u���}{�O���C	��K(�V9�^��ץ���wl|c�Gd�S{�{A @��7{5�� ��ߢ�Es�J�5Pjp�o̼ͭ��_�����WA��/�?�?�R�oN���]�ߜ�����~>ݿ��A�8V��_,\j�}~��N �ymJ!hH��0y<B!`��`!�B���a`S�Š
	�I��omO����4�ޘ{kE��O��I��`���"�X�uwc��N7�ꦾ@�^,w�j���~����@ @"���BM87�h�;ԭ���I�
dI�Q��I�S�JK�y�T���皞�y?W���j�;�<�ͧ�{��7�S9�Y�Y��ɘ7�����vg�uv��T�2�M���[�����w-w�E�������v��|6��8i曝)	����˦��LӁ�,j"����4�y2��#9&�dJ_�5ߒ�N�=c�>^��K���l�h��ŀ�+Ou�Ȏ\�gB�VM}�剾�:�s;�d[�e��^�����!4h��N�"h��g��! '� �/�TP�&/p�,ȁ�)(	zF"�"����� ���?��@�P�a~?~��$����'bh(�A�x��.46�I��H�% 0�	���,�w���uzvU;����8�@v�'M�d���l��Ht���v���T�\���;��Y�� 
  ������� Y��N(s1(�A��
pψi/0�- ��2;$K�J����q",܌�.��&t"�g2�q��&�$�ܩ5%:�;3*�.�g�8�u��n�o���#ӴQ�s������!��D�h;ά�Ť�q����h����t�W�e���)����,�&,�x&Z�bS滪�Z�d�5��u�t�%��۝I^����@����f�'�n�0��Z˺�se�{}���k��"��fFU#���h��6���!���9���}޿mz���3910D��"p"?�qU��:�ttP��`�Š�p��R�!�~�9��7}��ٿ��w?������������ݟ��#��D��̿�������1���0�A&cN�p��/��i��<L���g
��  �M�8>� 8�� Oa�&��@gJf���zd�YE;?)d);�B*%Z�د�kds|�"�L{�f�pT������̪�sT7K�g�׫�r�c���-��g駔�α�)r8/; ���O� K��e$j�9?��٢6i�\:yd�\c�/;̤��{�{_����t5���ϳѮ0id"�l�����F���ӵ�k���<.!kuJ����n�ܮ�{�� ��q,3_)�@�PO[���;۾N����H�rT��D%�'�TCٔ)�T�􉾶�����Vzw��x�*�2O�҅r4�Œ@��k��~_�g8��{�0~��F{���~�$G3l�����bX:PyȾM�}?�l�����Ŝz���z_�^�ؓ9���9�GQ9���9�x��Ȼ!��8�DK�l�$��_IާY_��<��u�k'[l���_��[��c�������Ɛ��KΡ~�c߿����y-��X�hF�xd!P B�x�0ay��K�x aZ���я�29�>�������Ӂ|
`Z��� ���jKko��{^��b���fZ�$Z�F6	K��W�g  	 r� ����8�)����ZNB X �,a�L/{ھ���FF@��i��b@"����~�3��,]��ώ�1���W3i�vF��1�&eY��z��W_Ͳ�U��aX	WY���ilPW`F����i[؋ArLb"�3p���'�+�CU(��� 1�2���(WoNɒNI�HA��X����59&��L��6�����LW�s�6.Tf�5����P��PKd�>[�#���Β)�s45чNS�B�H�cɠ��ҽ�]�����}�2�֯�G�zA����aٜ��V��:ӗ|�H��	8�!�(Q����=l�/K�]�`_�?��,|:���s���Í������F�*��Wn>��+�_���~Q�i3o��4�#�_ ���<�f,nBZb$�I�2&>�:,!8�<N��D"�hMD��'5��N��&�䈷?Ic&D��Cg��.����rF.�`z�����|��vd�ᪿ���0�v�!���o�us�?SR��d�=�D1��z'��+~�ץ����Oͷ?��;���j!O�l��ܽݭ�T\�����ˁ|���`*>�g�����28��ۦ��>���DSy�7��o�ҊK��q=��l����sܖCdr���oe?��x<�����W?5ӌ�����oZ9~���f/c%oiV�67�/{�'�����1]v����q:��>r0��^�x��CR�����}g?�{ˈ�Z��7򢸼mt��<ٜ�\r����H�ʇ<�S_���m����Qz�������&�ᴐ���^�M~˼�+�X����L�������Ѿq��Gc�ߞ�/�·_�_��������u���U(XRxH޵�C�դ{[����ȫ���H��x2���#(��;I�0^%r�����i���*��{�z�:]�f��e�@�^i��Q"�@0��f��|>�|�Y�C����G�Ԇ�C'h��{����@�q�`0%�$w�w(���%���Z�3����V� N���L2]��������<������AU��F�����֙� �g�*g*�Yw�I�@�LG\���RՀ�I�"����"t*
��ؔ���AbH� M%dA3	�m]`��H�����送T���8����Izv���Z�<�w/��1�2��1�B� ������vs�f_�5$XR��o;X�BV���y[��?���Y��O�{Ʃ̟'�����/��5�q����4�ܾ\��xƍ�G�Fm��2��~K�Ky:a_w��g��<X�6�{,��3�!O�]G�|o���C�R:���9Z� ���;�1�}��W�0�i$Ȱ�U��y���p�(Ry[>�����}��{�>�����la;3�G\|9o�7o �_���ڎ9Sb5ˠٍ�p�f��� ���O+��1E#�'(�݉��4E�:�ph.c)�~��iU;�f�F��vg�Yq����1;S��2E1�;�}U,�Z�(�U�.�LtAK�Qq��U�
2S���G`��
yq�0ǝ���t�)����u`C	� �!)�DI�~�b.(f J��ݡeH�#�	d�`�]��/�7M9/��JW��	 ��#a̅	@S�b�-�]��-�LW���E�n߾��F!��]�Tr&�L'���B��h)��s��d���  
����>w����E�e�Żhe�,�����&I
"n�p����\"�>bo��ދ�������@�\�Ġ(���TjcpM3��� �@�������%Ƹ}�VPʗg)�vEI�%"�bH�4���
�@�Qm����h���I��2���AEGu d
��P�B��(C4�U��j@�)VW����Є����q8� A�	1�¡ ��h5!�Q���E�v�0}yPx<��ƴ����s������C ���>/��L�2��!B��� �qh���.K��A<x����v�t`rD��VV0e��H�h�} .��Ft��݂�kM��b�rBQ="£�R)C'�����bN��'"Z�q3��L< >>��eqb2� m��Z�k���͢�D$��h�.X[D�d���
zf�4�(	��0qQQBz��߶`�J�b�E�J���ug�a�;�Ia<(��Pʹ��Q���Q��8C��:��8$B\�{���\Ȥ(0$����A¡�� � D��n1̙I%�v�hq��A \0�E��&s41�w�4��D?��X�0�:@Q�D��Y�P 1P\D7���:#H�n��i�u�	� �]5���L��*|lhb��j�\WRY��������x����^q E� �H>_H�	%��]����a��� �!@R�ѫXBS�i��+J-�Y!����8�~N���
kW�Da�M�! 	�c���-
����,��%���L7�.B���,�$	�`�����fNV��A����E
0 �
r��X�k4L�1u�� l�(p Q)��kLH �*е9���� D��]�G��b) \��� ����p��Э� ��� ��"��K�8-�8�&Ӗ�C��O�&�V�hPS�i���.%rM2���A	�EC���w1dPp	c�!�aC!���2<ܯ��\�x`���J\:TlXd��a�A�88� �8P�@\2Q"�T�� �=֠�N(L�����Q�!K��(9x��#)���3xV���AY�XO/�~T��^�mJ����D� 5n�u'j�B�=k�P������BF��D�I�VǪx��=	 �B����!�k�6V��[]�b���
r���P��p��4� ڌ�-��sr!� �������9�E��g}< 60*���C�a�A�D@!Z�
,C�H2Y7w�F!3��i��� �H�����./A�.p��Q@�A>�x �ā�p���s(��@���[�9& ��Qs��TNX�)�B�a��BB
�����r��p�gj�ފ��P�O(u$�*a*���]!�ѵ2��AxI��j}�_$�������`,�-⺣��"��kc�ֵ�С�����-�/�bD�an"F�v�I��*X&��5c����@@���pR �B  4�[�U��F�S��r��� ` ���W|X �R
�B x�pLDth#`��RL3�&����K7��@�d�L���6����e�L�2.'���A�x-���`���@�8Ȱh�"��GG=E���͡r��}H+��OtX\l���i�$��}� A�Jq��(���CU���ֆ���0�G��C��I2jR`S�R��+�,q�ƀ Gs/-+;�rA� {r�JK-e����;�:��cԵ����ޞS�a�IG��h�i�$���(Y�@��51�EKU��b���mn��� T����h(�N8-@Շ����Td(
C� ~�T�7�
� Z�q�� �#ؘ���oP�D���vAsF�l�t�P�cZ[$�� �V���FeS��[yU��SDr�	+V@@B�R�/�,<iK
M �l�ٌ~���l0]u%���>B���I| ��|e�G�̼�y����[��@)�Q���^�?�~����|��O2��ٟ��θ~���|��a�I���ԩg��P�cc�v�lM�!��Ԏ�+b��>�?�|>������������_:����-�Y.�_��?�`@���鋟���]����*D"�y<�j�wfS����>���8�<�|�m��ooO_&S���7g��N�U��w<7�J��I�p����|��b��p�W���/��U=��٥��{�����Uû��   H�Z�8���ID�ƫJA�`��E���l��[��N�t"7:Bx�t��,��ZiN��z������8�VG��j�BS�c����Qt�xD,<� � ��\'(�f͗A*�e�+F	@��@v���@1��0���CT�3x��'9a%�GU�Ub����D͎N"n�75^v�Yn����]s@hL��b��I�pLR�AHX�0�Rn���V��x�hՙ���}a�e�(�r�g�铛��jЋ.��oz�r?�=(�i^�>l��k5�_��zC�_}��nm�M���E��:����=�d�4��;& �&sj|��u�@�o�D��S٧���?'�  �yxY`�q �x$�JĐ� ��A�v���j��D[^����!?��X9$�%b�\ь!�V}�Xx��r��<G�Ք����G"�X���	A�r����߲�8}!�q:�L&��:�c��*�N�<m�c���3�0����N����!kE]�2���`;[	&|m��ti#��y�;�h��KJ4`q)�L��\��l��`q\����Lv��/4oN�?����������n'����$���*o;�*��s���L��R߽<����Wa��B�]9�;�M�#Ŗj�1-'�I��A���7_�^�<�SykG;B���^��<>�ߐ;!ݤ��!
	���pB'��vva�H�oP�Q��"��o&����ЂH*��T@�M]��w����M��B�)�:]N��"00�� �(8� ��yK��l�r��$c,<��z�{Pq9����f�ɱ��D,a���J���<� �5FN�>��h�:�&Dm&��@�^��Ӝm]�vSI`��(	 H����A� �hSp��r�d4DkXƼ����Yo/��K)wjS���4^W�m��7�p��[�~~Rpvn�MY�$�l|�e�}5~��j,���Ddc���jU�"��!3�,��	Υ�U�Ru��ΎF��ԑ��(�$�l�h���kT���*NCG�D�c���b"|�v��/H{#�v�i2�5�b�6���0�_�}	/�/�@��ݛ���ʩ�n@�PP7�LYh��A�p|$! GP9[�`v����3YSf���D+9v�v ߣȉ��}���8�7��AV��o��NfHm��E2�fWs[�✘���ٝl�k!W�C��<����>�@KШV�h��*���
 	T��0�-�*(�C  �A�>Q��y}���p��bn��y���~��{Ô�o��V��-_λ�G$����_l�?Bı£6�W]Ϙ���g=�WW�;Ϻ�M��1y!�S�)�@�㔻pV��	J��7*$�\L_��/�� �D���#���{�Սyl$�$��*}��M�T�k8��-���ogd�g�ub�X��,b�$�F��R`�p �����䪾+ZV����[s���~=$���B�����(4�\c���ٖ�C��������`kXv�˴I!�n l��+��:S�r��N���� �

 ��钛��yj�(s�C��D�u��ߌ�́L��q�t;(�u�)�����|�֥zV�I�>��pv���l��Y+ėf�=+�_�_��l!��R��S�5��Řԙ����ʸ8��ҳ��xg��Qc��\I��pJ�+{�Y��'�b�di�P>
ɾ����``��E$�ã� y#�~�#1X�[�HDRD)G�����[Skʗ����7e!I�~^`�_?�R��x�P�/�MY(���(0��E�Yx � �:���ڵm��k���W�)�<J�'M�ɦ�&�y����v�������� �xS���{�V�P&d=����E�1]:�[ɤ�.��l    A�q�+�VpF����ƴ��v�����#�d��p�r���m��/q�#�� 8M���F���훷���G����!��o�NݲI-�����ohU�A�rUqL|���I�Z7���<"��umi{�p���/�oyU�s^d�]ӍK�O��� �@0BH?���v���';h��퍊�)���޼�4�$d�Cc�Z��x��O��x���hy��,�������]T�b��ࡼ�!�`��O���� � �  q���*kb���zWc�fS��n�N*�a9�^bfВ��nZ���Q��,�rF%E�N/q;v6Rt�t��-ױ�mo�ز��� Lj9�@7��.�4 ��s�)	C��6���U׿~�����,�N��A�g�۩�wZ\�2�)]���j>{1�bY�����G��w�,�b���������:��;s��Ȓ��
�,6��Cm�?&����q��g�Iu���M�*�ظȄ�
 8��A�&"@!��r!�P��
��P@0�X�z~�Z)��F�.䌘#��
�aA�#�OV�
$�#)����0no
��v�Q3U��
�?0�5U�p�juu��&�DG( 1�0�x����ab��SI�U���B��ׂAH��c���)/V�yҼ�������'>�}`��P_��W5�мzMR/h{f0��V�I/"�5������=g}SyL�|U�?�?7^�ٹ�M��r��Ûe���K#U8�2������f�y��|�yg�]������|����j2������P��C		:��R�R<8�)�#���P`PA��یF[���8���pv��Ⱦr���Ո�Nv'_/8��Ͽ>6�^����^���8ҿ�گ����G�������3�#'��ή�}�-�����F<����L&��08m�h3*d�{!��[83p_0����̬�Zr�����{dޝ������{E����l���P�?���,�7�2�4Ҙ=�I�fÙ*�v:���D�N�J%�4�=7[��]���>�����Ί�}���6��~^���_�vr�?��V�q�����ӫ�6Y���?�[������f�s}����������wO����y��6��ڿ孮^����lo�⽿�f���+�⦯�b���u�b�|��?����m:�Y�^{���GA3~�/����{����O����A`�  @�0���v��  mn���0�`�[�a�:[¯\N �QD<��a��`���Jc�Q���j%���['�ta��
N�4,�( �,����φC@Md�*B4�{�j��݈&���HR����>|����n�Y)B� ����\����g�O%gt��B���
FO��;������u���հ?�g��Tn�/����i@����l�Z�`<l$�����#j���{�.�I�h7��ER�l�0�:VS�^�*X�&�F�.j���o|�Y�;n��J�*�N�6��B�����;�YT�Q,b9�u2j�O;9��t-��|�nJ�oi<;��`����Q��Qlc+͘l���B��:GS'��@�..�Kj��.&S0A���H�|I���'��A�6J�V4*��<4    P  S+HI�0p��vG�֟Wר�p�X���gu����,�� �GY�&�=���I���6A-�,��\�U��&۝�%t<?9|�s^O�wo��mua��	���|g�͢�3�әm!�7G���Φ$Ue{���TxP�P��=t7j�����b�d5=(� �R���<d`C��H�L��$o��r�N0���':� <�c�U��ZfP�����so$�����r`���P��c(pB�O��45�Σda��X������#�Ju+�>s1@8H�A�@#}5S��/�Gs�̬��ۜ�������|C���6}s����H�*���A��Om�3��i�����Q�xT��6��50Ph�>R��g-��؝�ħ��;٬�9���<�a#�@�hL���1� �oH7CRU	�\v|ӑ�j�t��c~]c��'��;��~`���֒1I��3g]��B��\��fh�.��x���bP�r�A�nv�<��s	��
�|�N���Љ0L-t ��`�IE�,�@�ql�F��q[A�φ�6���RqWH �����쪺8n��Qժ��HW[�x��5�VjHs_�P|*H5���q_���ݰH��LT�VEϘ�]L喪�Έ�RI�$.Y��	�І�ݛ��N2�7s�C�тE�I��H��� �p�h��w��4�Z�g&ctm��	H!�P��G��gcB��'�Z�$/��&6rW����A�@yx<!0����'��q	�Q��"�������F\�W�Gm�`�܉"$3: �Չb'��	�����#�Yn���E+��G����{9��d�HT�M��q����8[%U�v�j�}f���EA��C��;����\�YL�*n�l���XH5�����H�Z%k�����h$ٍ�����v���́�"�qx��cG�Vٙ}���:;J~5�)�݌=*Tw�@�?yd�u�߱��6V�v�9�s��u0
�h��%��V��a+�YI�r�������L`4WR���Y�C5���2F1
��|�\T> ����T��# H��5�E�0�0X؂�2F1@��BK��djT��@�d�]%:�Iɘl�ղgG��i�P�d,	�Œ����zi9�\+��)v� �<�rA_R���t��@�y��%�~ǵ����.�^f���e�nr�S�]D��>�D�Sk��`	���Rw��Y�߳�v�$1�����[GSI��\�B���Ƙ����3��H4ə���O_S@��}�y�RØD a^&��ݐ��	G�N+t�>>��	��EMC�7�1�~3T
"�Q�e���B��1����`�����������7��M�JV{�q@�mj�P�$�{�͹�e����ϣJr��Mz9{��d;���z1�L0=�LRgt��\�t�ޗ�,�92<�|��D��v�͖MyF�`_���<Os�}���KX�\�����\�9�r0:{�ίFR,ô��2�u���^����6��˙�g�D�:FWH�&0�"v�X�n852#��(�tр�g6I2�(�"����A%66>Q0)��:נ�*x)��4(� X��
��U��Uߘ����������r������g��w!ӳ���Supը�I�f�� �m��c��SS�����R��n�$�  @��Km�݊���S��Se3KP8�
>gr���$��6���q��M���飒�ٗ�9�?�YJ���|Ͻ��5�8i*����gc��}��J"r9�t=c��IF1HR��X9I���D�~�d-!0�����>Dz2�H����_��D�΢X�t�����������m;�XD+!"�]R}�������+�o��Qc���7N������<�3�o����n�I�z�i�=z�q�xIC��	_1f �NMĥ�Ve1�����Y̹��%�7r�ܭ�Dy�&�A�j���s\I!d^J꩑��i��LA�N>&ٮND5j�U�ͤرL��$��_��Msm1�Yκ>sZw�PlT\��DG@�@�g�pꤠ$tx ��8yL"� ,��@�4| >��< ��E �+�M� �nD~�H�%1�Ա'��������$&P��ܛ�GA�r�%i'o��iO���G����4gh.��г��g �%�س�"A��--E�!h�2�F � �2�`��-��H�E�
2�Ȳ�	�2Hs
)6����E���B�qƭ�$�	���P�0_��>��}�1̡̋ ��φ��s7Z�v���?�aS��W�0�fl;�WM�}��!�ʂ��$ �
^��a����LJ������FL4zu!A"ɺ����CE��1KM�K�Eѝ���� ��L��&]k����d�k/�O+�b��Y�x`8�A%g���c�/�L�S���iQTu
��bj�8��D�(��ܯ(38�4m��qG�j�����ғ�X�D�&�2jXu	�+H��h&G�θ��!����z\������ͤ�;�nJ&�|�#d.'�S��gNALT"�(��<lB ��:�>LLTʈh( �I�!P <8r�TS �A�84B���ذpv� �l(   J�����o
Rj�4pOP[L�J���Q)0�J6d}����J�VA/n��rK 6æ
��Ӳ�(	��q�3����7�I@ AM�H�������@ 	p���U�Z	_�!�b�n+�<G;���Kn�������D�
�C�z�5�`2:����H]la7�"�a���l���������AiB���5ze�����Y�%0|���[>�2sGB1Y���]P���q�Qz�
�@��H���D��n�*����(.DB߰��RF���=#pM�=d�2Gc���7����_'ġ�$��H���E�D�1�Q,ǔ$m���X��T�u�t����ɢ�.."y�n�J^f	-h�Y�C��X�%TcJ�Z2܄�X6 2]���lugk�����Eɀ>��f��O��ջ%W˗{�],� cɐV9��>��Q(S!I��I�81!!:9L,�bC�)#�@�@L�$.)q�  a *E80�����sn�Cq�	 �!Xw�u.X`�D(�dzכo� X\�P,L��}�:�C� '���B�Kʅ ~ņ�J�WJ��8n
��nQ���Gb�����µK�=x���6��@  @r����"�a�ޏ��l_��{�_���zzI��09�0_��Ff薅,�C�"�'k�(ukI� <�����$���kf��C�Mf��<c����;�g@�w��c�,4�2�G�ݏ�͇��Z���N������b&�5�pm���-�PV��8��k!�N�J�T�L�Һa@��fߴ�p��a����iJ�̮w^��ʫ𫏟v�����:1���=كs�+!�8o�
�O�o�ʭ���+�+���qg����a=�<�ٵ�U��"O�E��m����A��3��󰵚�����"۞o���sg���Md ���c�7D�J�` ��?�K����w�m���b�b��J2���6���˵YM��7n�{6�'?��>��~5���������_�������_��
:�V�o�[�3�wҿ�u/��J�c^�쇙E^)*]삠á�����cS�J@Ԉ�A� �0@�E��	SB�@��G�8:���L��G3��tМ��CZȱ��yT�^?���L ����茶�� ~�;x�<�� hX5����{���;���ǿ��p�wLj ���!&�&%�v��i���B��R��ti��\s ��[Rƒ�f�m A(ʢ����K ����-6�f��ş�[L��7N�'?;����Ǘ�?=�.;�f�����.���"O)L:{��k�� �  ,@�- 	�GPzQ���d�iĤ�!����� !|�ؠ��D�s2�x�+�)p���*Ƒ�����e�EG"��F�|���[����� �d#�Q!�{�|.(3��h�$�zW⡲��y�a � �0`��� �"S�ѝ�P-��N=��aظ�����'t�}x�n�����c0���k,9W������)1�ةg��aWu�!��L�-�|����5���<�?��c�d��'�\��g;eA$�R�O���|�B	��:x���N����\ �0W3L& � -H�H#󫑃��l�}M���4h�}�J*�I�@`G��iJH�$��' ��_`F4v�m#���" @��v��8�t�����q���*�gqa��L<�g��t����O
�Vͻz�g�o����5sk Xe<  4�\5  �2 Xs������%�;���f�y
�� HJݍ���śf޵q"��)2&Ѩ�+�@�엿j�UC4w�e4��s���%  (��|�V�"���"M-�x��%q��pXMr�".͔�d"���k��!������у6�b�S�,��'?B>�C�e �ô� ���4RA�A��.8�,M8Ѩ��8X�t1�6�ر�V4$d80���(a0�i��|�XT�s�=��v%��O��l�!�1�qv)!w���9v�����.�l~���:8�)Q+���� �y|��|����ߨ��+�5�i��n�O���<ǫ\��,��	�%�2&�M�Gr3��34l:��O�u����Nna_�e.�������=����}v1:O�i:O�_�z���!z�Nw�<Gw:��K�P�У�Cl��>��@���M& 	�5TB4(ʾ�]���:���8#��ㆍ�w���T�/Oog�Ͼ�������,������&���_���^G����Z��u�K?��だ ��+��KEp�5��+�.�����F���Ј�5�:�B��Pr��4�}�D%dh�@�GY ag��+q�؝��;l�.)	Har�R[T��ಝqH �`��B�%A����Q��v��*j�%E'`��fV��1�J��4㩤�\�d�R�o��K�D�?Tn�O	�J����a1��!@�$9	��O����@(�V(A$�@��_���������db�S=�=2mJS;�� o�*����G��>��SB��1�1�f-��_�����q���FR�V��QB��4\�T񈱆��H��s�2>�9l'N?�q��v��`�B-���R�B�;;�4��Z��A�/X�J����-D��.6"��NC ������1��� �}��Z"�_����}���=we��dT��*t�q�M(�%wK��� ��{ D " >   �컞  #a~dd{@~����D wp`>�T�3���w�u��Z*��:���r�Įk炬�G   �U���:�Q����KC!����S �� �&�����B?�b�f{YT�o���J걌������q���ܵ�HE.�"�د�^��3��ե��l����!j�Q�F�h�T��,, 2�<"�>F����S����A�D=!�:\�����9o����!:�lPo���(ޤ@..Q��(�`��Wq�J�P��ѣ4΂���{}!��݃�Q� +G�`h��m�����{��?q���8,�F�A��X�FIc�!��C�#�D�<B�0!��E"��� =�E�41J�ԑb�K3���l#P��ش3�<y����u�ӀG/�8��jԙ��w����}|>G������>�N��oѻȒӨ��Az����i�@"�w���zLyy��   �GaT #�����_ @=�پ�|��/<G��3M�]V�T��T�jhy��6������(���ʾW^�
�"HXc�F���� �*�+`e�Ur  �S����W;�d���ɣ��FCΊH�� 1k^���ܳ9�u�*��7-m��*f�,hS]���/�]�����z��w��8�!0% ԗ�B����Aݸ �8`|h4� >2e(0eX0,.��ИxP�",2 �����0�	�*�φ{������"!\ 4V)X0,yD\S  ��@�0�ׂ� ����b���V�(��b���RT��U���`i���Ǣq��P��>Q9�����?m���E�і���Dj�v�:6�41BB/q�0� ��(�(�� `Zq�2"
��C	B`�z�p�l��`k�B�h�HlD�6Ñ"��JB�
�2�W�:+;��������jG:W�F��k;���v�%%�3P�Ud�M���߿{��1 tFҵ���E ��. �󣆜 � �8X��$и�F �)Yu���"DC�L<J�>}Q<��G����'7����ɴ@P� �����^��%��-?�=�8+s�2^ �+`P�a��+OW��m��n����7_Qo�1@&~�~/�s�>�9�����䪾:V�����Wo�B�D4���R���c��9�r�_��t���统=>d��A�k]}�"<��.�#bA����`!�@
�0.		�1A� "x���C���)C����.����c�AS��w1 
y"�`��(�q�PQ� h )��� ��ߎ�i	�̱��T�PIِ��a�P	39㥕W��Q5�E"�G�J�L����P?gi�Q�R�s��
�F������ )j�1�<=��b/��JDpx�A%O�BF8\ 1$`� Xx���(��ah -iDXT !����um�;Ugh�f[���>���}�&�{�Z�j  j�&MO�v@�p�.
   ��t?
���]�PdD���q{J� @=��| TO �Q��.���ܺ���R
$��e��G��p�a�I�  ����+   �2�?KS��Mۏ�Pȉ �

��S���I�2�� ������� �6��C�܌3��6�{�z������ļ�똞:�ד��҆7M�Z��`-(��z�/�ް\My)��������K�<���0 �Ԗ 6.6��E�`l80.At, I̤� 
@B)��Ç#グ���0D�i�w���
���^
�	M $�O�JR w�RAxt�I���@@��Q� 6� ���(�0X,�)
��z9f"=\�ۥ�2��e�4��ڲ���#�{"�k	j�F����e<G�Y��}�f��R
�)�A�8.�%��|��RS���aш��L%<� � $���B%��G�aj&B�����t#QC�qd��(����p@~5Z#�ĚmGw��0���%�� ���T��Ѹ"
���T��>pJ%"y9��r��2� ~"@��(�ǈD�f�8�Pk�Jc1r��Y`K�71���ϣ�L@�=W���Q��,M�Q\�v��w�_k���6.��}JV@ �a�+��ڸ!(�րA  ��V�h��/4�@f+Z[�������ܵh�/̧�>�����uj����mx��f�P*��Nh�"2�����&���ۼ��O�P�9�+�v0��
@�\�M]ML9�Pܧ������U�9,��9  P����(
�(&P�KJ�F:G8 p�������{
F'�9�)� � `��h��*��0��C; � t�&�;oL	��Z�xa�%(� �����_@ٿ:� @�W ��$�   �� ܯ  �vQ��y�.��0�骻 S�0������n? ү��� |��� ����O��x�!���ۥ�}��������IΆ�^D��  �}�^�H�bi�	�bIL�x���(�I�Q�1����-�]}���]��5�>^9��X�;��޾K��ۻq��t�>П��:�������X�<�9_�����W3�-��^jB���NെF@@� ������v=S����[ql|����X�@!mdBzv��BP P<�@ @
�; M0�.�T ���1���������M��!�H$" � �@ >�o��0e��H���������B�����*6!���1��2�<�7O�Oi*<gF � 0��)Pe s����P�Dk�E2�sr�| ��WJ��aS����R( ��$�&��4&�*����t��O7�X�f.����f ��d5)F��Z�&� ��bT
"n
�Z �%�tRF4�b�sdX��h�u�	�X�̔_|���J=S&����,| ?z��7
�4&;��s�3B���x�R�3B;Uf��*:x�NJsxk4�:;�1JBA� �%X�r��h������q|8E.U#8Z���ACM$"�@}>X!��!���SA�a:X�[��85� $�ú�Q"N���v����B�f\h_}�����6�:3J��Ph��*+A�PE�DT�=��AP@��{L�`j|QBT������Xƺ>��   ����o4��S�@9b ���<B�Z	x�W)h'�L��E�"�Q��b�AS��gFa	xRR�-Aخ�{�.�I��2����)KL��'[fq��&�0J�"��JAA��#b�B�"A!`��E��8�GçN�
�pƦA��Br�_�r��� �D�H bD#�U�s�L#�������w3��ѡ^B��Z_� RQ0$�Ƿ�����@����ۇ�����p'��ݤ��f����](��x�pt!�'�@ ���>1/X��vo������Q����Ǚ�@M�D�����EI�ǹ����>�>��3i�ѴmS�[]~^b��B��x��VP#5=IW ��.��G�����N������]�U��(o�`�c�i��,(Z�CY5;��-���a�ү�v�[�d�	��DI�(��t�2D`R�b�r�H�x�T0a@
� d���7N1@Y�ֆV�|P�B� ���`�E�(�6/��ۇ��C�P��d�,g3Ch�������d/Q��
1��ʁci|#��2�G�nFw���nϚx�������"� �]�'�B}(�!���K3���%Ϡ]ݕv)}��A��Z[/!�3'H�ĳD��:��������� q��xh@	@�H(	a҉WGM�B+��4a�` A���	��Uy��N �r";�e\��W_߸��<J�F�r8� �"��窻f��<{m��쥏V�&�(�YS��P(��$�V6�⾟����|b�ot{M�㔦|��~���+3{"��D�@�Cv(X����#Dp �#<.� @@0"&��,�FY@����0� ~sɲ���if5�����ǯ��q�Q4泑<(�a2�/QG���#n��i4w��\�Si�[U8�>�]"w!�LĒNa������7��=_�vȭ$3�IVT0Sc~�=�ӛ���Q)Q<�Q��B�e�(4"&�@[�� ��ApC2��YF=�>��~Qb�� ���Ơ���e'=�������C�Q� s�1� �b8��'B;hby>�4vӹ�}(D�\�]������5s7����{��}}E߇����̓�S�5e���7ɔd(ٟ:-��#�p0B�!� 9��!8`0!I�$��1�F� ��'.k�A��������E1���4��fc��
��_}}���c�Y����3��uGJ����Ё{��'�_K�tN�O0a�(P�W�9������O�ޘ�o_r�lfң����6Gq8cśS�������"�"2�P�`�`Y��:%t,<B�I@�2B!  �N��U�m�S�)~`��	���K7"��`F�A@;2�����g(�N�F�9��T�_�����<����홄L��[��!��Q�\nl$k$GR��e~�\�mvg��m3x�~N�KE!�<[�z��1�?/��,�KaD�:�+�X��N��H"0�N hb������C@L:����}�����9E?�#WA#�`��^$*g|��W]ߘ`�@@xX0<X@�#%��y�'�vg2IϞ��>�߃i���p�8�����2���5Ho��.I�d���w�3O���3��/�|6�G�C��Os�K��y�gqD�E$�P8&!�S��s���b�1 F'��2���V�7A}���$t,�.d�~���7$��0B�����ǯ����#��08( (`�.5���].�V�sG�.�E}Ϛ�{*��u���׿�O=�V�ų�|�����~R�[��u���㆞3_�O� ���=���?|:��M���$8,c����y]��� ���,��*A��R�P{��ǝ�&�9�� [�N�oSC4mk��@s͵ B@�� �:���
!F�����	[���m{�]�s��\�i5������y��Š&�*&>F�t�L�goe��\��rV��=������z�s�(�� 0����ǀ��7�   # 0� �^:��0]���}f>�x�Lb�)�m��xfv�֤�e:s�>T>ܻ�LG�ӆSԓ�Q@L��p\��"#��ѧ��#@0�����
ʓ<�) t�2��<G�� ���-<%�bq7;h���� t�!��߾��?���=��jO?{�#����2����[ٖ'|�M�a	ېl����A	�[����C i!�" /�L$,Y6�#����j0ud�(�{F�o���[�8`�<t($\4 "�eզ\ќ	�-�'��ޫ$��fPB��l?�ן�_����~>q��v���spq�(���L����p �ޙ�0���"�H΀=�v�[T�0�"T��(wA��9
�:�,d>��X�K���F?=��"��9�&v xᭇ����ַ�)�]��s^�����u-�vY�{?5�'?~�Ʊ<�IH���G����a�I3��^0c2in��k� *'��� �B�r�J!�=�o����oL�6G�@��`TI�t��PL�j�(�R&�����d�7o������/<���U�\�
y % f*=24r���C	��	*3�}��!�Z�����v;oϧYc��.��bS'Bqg�4����a| &�(;�lc!�x������^t�6|j�>��`Ǘ�=��=g�̧N{��#��<~�K	���T���l��Jr;)Nc#�\T�4�4;�	�3��T�jfc2,<E�X2�~�]�}�is. ��&R宒�!b���K�0�w�.�mڻ;'��@�{���l����Oq8=���;o�ID�e�y���G�^��)|�y��j e�.C� ������SD��p�Ǧ�<>1L ��,�!�!��������{����?��Y�9�}���k�7��d���I�c$���c����3�1F�1����A?��ʤ��>[�p�ٝ���|J5�4�:�F̽G��x��~�O��\(hhX(<@�l��U��S�P}�2��w���n�����)Q���}��� p�I���=0�*����DG�"%{�Q ,#���P��2�Xx�@8�DR"�DGǤ�>	t*��Q&"�� y�%a�y�}�������5_��}������\:�S^�Q��9��a ���(���QP�0��C���I#a�[���z�ŀ,R����I2@]�{D�7��ǯ���4�� �C�"Z�&�~u�f���@ӿ�iRF�\����[��#��%`(
sl�!`K���4c�d�tXb�>D	���K�2��c�$9B
�1
�@�8:u0qtt�KDulb<�CI�?���o�<�[�CO:���k���㒉��� fq�����Vn��'��<Ct�#�E���8��ɤ��蓯�O1s����l�{�H��%�#`��~��[�2m΃�@��({x�v��h�$�JPgR����Rk���W-�)���\�f? @��₈H�bMv�Im��-�@ ���&	�3� c�$�԰���<E��3H�� ����c[��B/������ӷ|=$�������f���=��;ZM�z�;%�Ky���p.���XE���t�K���-�F�[�%Ѓɞ�"��?H3�f������?췾q�A� �� A8�+e����D��� X �|7mH��鐤!@:� V<�:� ����R�v��BD@t�̱YlL�JK��B��A��WH���y��
�R�+qQ�T k��f��(��!$B$�J�BA�r�$��.A�?��s�E�s�un���>����}v�)��.����=� ����y���0�A�����,F����4��xs�. ��yH?!��{��������N���l��W��s�÷K_�f~���� ��Sǀ3�����UY5d!�#���w�}�V������������e����9��6 �r7
��AW�XQ � �8���:��P@�  ��>W �����Kd�k|�]R�H����q�/��� j0L��`���$�|iN?��A��P�vBS
7y45�������2��9ۊ�f��0$
*����$��AA�H" >��fH9Y�漙s(u����oGW�HL�5a�� �
��2��Z ��P`�O���p����^�8TT��|�p>w�CIR�pнnA! 1 0@�8��  侭��o1q�s#2L��D�2�-V�� FD	�F��BP�Q� $@�"���0�,��\��l~��9|���tU8�` �F�Q�� L ��`A�t*!!��GH҉��}�*ڋ7I�v��iZ � ��ʛ��$
��7�#����X��;��`\�/�NV���9��(���f-�q8H_�9����=NZI�^�<@N��D���>c��  ��PI�B�0	D@ � �B#���M�mו��g|��k5V�e�b���08&.!��X�p|B�N��$���N�	ȿ���������h@���x 0�^Q�x�8�09���~�έz��xw_��[äq�p, !F�aڨr��� A�3�@ @��GX�cD��"���RP"Jʐ�GI���  �FA�� $ ��B1�t�$�О,�d�4��?��C�T���f�5(	�P
@ 0 ��L:�X��P�q��s�(��g��W�����;̇ѡH �^��9^� �p��O�]=�o��/���L%.�. �oҌ���8�Զ"��D�_ʹCy-��@�O���0��L�J�ҧB`:��hP � p� �  ��r+..>A��`R�����77]��D����$�L��P"**��   �D @`8�NeQ��<91Q�	��ۡi��YrÀc޿�U)  �	cҋ��!p P�|���� 
د)"�d5 �8�gHQ�&F�A��	��q��/���0��k=B�2G&a�-���%2��� ax(`T!ξ�˔q �f�*ƈ�4/�d?���I��M��t 
� �Q0B$DD�Τ���C��;�Jd	�븴݀2 ����Ce��kQ�].��{7�h���9��C���bI<.�.TT �r�&��� ���H���(@�8�ܷ�3g� )k�!'�IY�3� ,}r"K��| ��DǄ!�$B<,b�q�19%q�u�*]��X��.֩�p B" �s8\  ` aZ8\Ұ���Q�4$�i�xG�x@ c���3	>��`x @�V�\h�V�17x�в_Zqx�q� ��<������9(�a���qk�?�io����IR���N4����&	�3�+v�&9�H8�zqЕ�Zb���A�� 	:�� ���k.�uM�����B 3_�M�/$NBL*���%v ��`�!<p�� `/0�L?D�� ���1=�?�.�?���������K�����T��cZ�#�M¯^0��	r�.�MCz �io������"������߻yv����m�p�� @(T��	9�^;�9��5N�%F��ة�H'd��6�Pp�0$E���S��?O��1t��2�,����t�x�e-M2��SN0`,Ƞf�d`넱8̀E/�7A�H�Œ�W����r~�Y�^W���z~����#O���8Z%pp��Q3kf��ۉ�G����=�;S��%��d��R�<K�bTQg�șYj�Iz��@�b��PQ���{����J��i�(�0k]cf>�83�0�����a�B�D� .���>��g��Mwn����养c������Gq�����d���[�N4
���A�wJ�H�]�2�X�Sl���AlJ�Q�XB�,���c��JJ��O���T$ô�x"À�����BT,|L��j.%�g��N�Û�s��$ۛb���7��판!� )&�偓�l䃬E%��*;��ic�Jq��'+ ��b�N.M�S,��+��Q"��d6ѮA���ħ@B���"��� � "e��O�*�X�8`�t6i�.�=ì�c�ۿm���ĩ�q��`���f]g7��o��/�Gf��z��X0.I=$6U�2�����`;�Ф�<���|�3G�^���p��Z�3Kf�-SGgL�1�@Q P�0��
s�xJÝ>�N?�D�����E�=��O�|+��`N�� ��r>��b�V�Y����jD���e�0�+f`��q�4�.Y5��1H�T�H'-}_�-����N��I0��N��d��d�M͜������(0�Ѱ�1^J b���^�c�(�e{����Z�h6�/�d1a5T&��cj�ø���'q8���s�Gљf(Ѹ��Ғ��L9�oq7��
�9 ��`���.t5G�*SI���c�g�Q�h���a��L���Q'�b���� ��aˣc��}L.Oi���~��E��yΕjG������x���8���&��1�x�7Ml��O����b��(�݆3�X2�Z�$f��DʌQ�lG���IB�$I�qr�������>�ê�6;�>��������P"�]2Sy�S�C�O�%��F7�Yγ�]�Ѭϵ�R`a�23��C?���?,��Uz}t7��{@��;��Z�oS���/o��ܾ'�C�   B���z��D�W�b�,) `04=~{.�E� �f~3i&[�D�z5��W_߸Z6/�:IF��r63�Ƹ���rҶǝ���&�C�i��:�U��g��:K)�"�s�s:���������7H�W�tr��͍̠���3�5`�"���h���i�d֒�fN,�0A �23�>|S��G���a|U�J�~�#���g�<�^k�U�ŏBW��W���JD �(hx�h� |tL�)a`Aqi��g��m��P 8����%��(
�ܘ��F����S�ʳ��ty����1 �Fj�۱� �0��Ы��1�������b�����B���0����Y�rr��cs<���
�r�2�`	7r*��5=1F!�q�Z �?�DYg(���  F�L��sԌk���~S��Z��+Q'���>)y�ǫZU?KņaÑ��P!iB(����Ĩ! � "  	   0�qBtt"$�f"��ԇ������ee��|r�4��W�|P,Y4�q#��Ƥ�:.I�l-�� ��Nc�� �@86*-8 �-��$İl4%v�D<{�����o�{1�M�Ǝ 9C ���)��%���|~H߾()e^���6͝�(���R}��������
HUc0	���8��8%Ա��� H$�!
: � �qj��Dx`T���HD� �����eaj(�8Pv2��1`�	e�  !B aąS�� H��.B�c��(��S!MH�,X�LD�K��D%���uP��D�¡�o-��!��iH�0S~�b��K��7ʵ�?|��#ȫ��@��?��2Gꗟ�c%^�`��ľ�%B'����F2��@�1��!�щ�c�@  R��'�8 �|n�L#
�@Yܾol�_/ob��ǻ9���ɯ)�*	CÈ�&������Ů��$�B��!�����Љ�(�$��}UL+!>yR�`��f��[ZK���3I?{� %3��CN�������p�������X� �f���/��O������W�x��!mԉ��
-��Pa� %*!tB,8��}�H �k�����d�&�CD���,�����_.F�A@;2D��mn��Z�P�04b�a#�`���tb0�G�9���(�Ć:��h�0 s��j�c�Eu�LG�Q��zCS�j��o쀈���A0�̴���n-5�;����v� �U��R���1;�YWI?�cT�Pf��`� ��#��a3�xp���d��`�"$	���)�c ��tƩ� �Q(���.`ֆj�#,l�7����P8X�B���1�����!$��C(�C�
�E�@��&<0.6Dl%E\����0	Q0m�@ ��r�����Ǹ�C   <3�����1��x*O���
��Cgw�~�\�]�s��!ϯZ�����t��g�@z�;{@��&�χ��PQ9�'���_&��!`�> >��`;C����I ���c�iPf��@ �ga��q�,�}�G�B��o�z��-��쒼���}�3D�cR��e�4L�uT"��F�$�	#N�K
I�Щ�H�"vM��J�K�Q�J����|5f�P��)��!H��p���]/I͉%'�)I)p�L���������������9��W�nﺾW��>�~�o~�����r������'���wv/��p�=%fs����uV��u�lT�xX'@  (B#QH ��0���'M�N��@�q `����d���ٟ�J�����$����IүA"�Ȋ���Tg�L(Y���kfbjO���C I(g�����
 `@a|�c������8��s���.��>B��!�� ��G� �-��҃Q��Dp� �`�-�������YnU8�������)��r�f̽��O�>����ʤ�7_����'�_��#�n�� H$���b�%���nSa�'d����Ņ��������7�S�p%�f%q�q+��)�<�Oi���8āl�6�br9]���ff2�,�Da!��%n�i��
H�N!���V,��xl?��9��= �
-�D�>�7Pc\@���X�2-   d��m�	a�.��N�NMc��1�G��:�h�*�n�Ϛ��Ջ�l�����oj5���gk]��g��K�n{��8�O��7%� ^�	���)��I��y�la�����$���� ���.f���p�\J��2ʛ8��c���6~�0��	(��m���9��/I�Yfr'&oa?d5G��	e��e��'.iv1����͎�>ߘ�>�x�1R�����'	�T�����kTm�m$�%L���0��%_�bOW ���?l��-wa^!&�CXR�)�y���S8���w�}�_�����)�����_t���s-Z�>; @�!0|��q�q� n�$9�wp&�̡���F���2�&:�dy��$l6p%Cư���9�8�!��+f`��/���|�,s��
 OӁ�D<��܉�O}�]�v��s��w�hc��u� Ɂ�������d�����$ ���	���4L��J �?ԚB�����Ρ��eq}@ ����G�����넟_;?����Ο�^�N�ƙ�iu�>��T_��#��   ��,b�,�`�#x�a��n�^,)b�!!A@H�	#�c�nfQ��kȠ����$Nc|�����XD��8�ml`��	`�	�э@!���8�X����B!O;ü��p��7�>����Br��b�����k$�����$ � �i��>!'E��TXj������ޯ�V�K�QV��J���g^��]��������W�\�_�M��W{Üvߕd�AťJ*>���.�	�8�8.!C� ��j�����@QHf�XK�yD�L	�M?G��z����X�RD�/l%�M��0� MI{��b&x:$x<%�u�Dc7��p:_�R��>����?���3��$� g}��_��v��K0iX�}GOÈ��)[���nH��?4_Hkc�#��d(�U��MU�]�S������z�޵���L���ۏ�G�=;�q���g	"�d�"=Xla���0�^fr!_�B��"jT�a�"�I��(:y	���a��@�!1�4�I�s#��4�e��< d9��&�#����d�MrRJΝq�y'_�4��7���?�����{���������z�O���  ��{``����)����
J��R��Ny�YBD$�?���o���)��������n�S���З)�M�o2�q��{7\k�<2�% �������N~�:�he3:'�{�+�B��g��^.g��	�#�� ��O��a��~2�t0������b��w�d�>��c3��5������#�̀@$�B�?AT��|��E�T)��|c���cA��8�Fr $~�`�]�n�E}���F}i(�I@�D�B �j�"�PL �Fc� �(04"��@(�
I��$� 
@@H8��M��bQ"��"�?�'�M�$��<�CN���xrl-�ј�bi\	_��>;{@Q� ��̄~�߼����E������l��6��ǹ��Hk�|z������ǟm���|�����s"0�E��R]n=��#�Y�L\�=�_�r�q'�^�|�g�5��ƣ���n.c3_�([�F*`�g�X>N���{��X0���م���Ŭ�+�w���U3c`�����/�.k�lJ�6^��e ���͋�(�&25���4�������
�O�.����C����o�P���;<C��E�>�|1= ��hF���R�����3k���m�߷]������?��G�.�}�Gʡ����v:r�c������d�Yj6 ��f���sm�(�
�f����ľt�ț��c^ٺ�Św�'�H 
.BG�A` 

&
��$�� ADA�А0||h�c��(  nP�����`���� �R�Pd�ٜ$a�U�/ffB�俘����s�zi�?��P�'�B�W���O�:�b��@$
�o�\\�<�vJh��"��șd���R�	��al�r,d&�s6����4�	q������d!�q�х���d�CY�S��`%�ib�'Yg.G� ǿ��8�Y�ET�0@�1L���?�K��gAR�_]ߑ�������V���m�  ��ye�{��t�~�~��W�����m���>�rR�������7sh�ʡ����.Q!<1��Mga�lwV*{.m���$'\Te>��K���}O�p;��_>��dJ�aP*�cA�Щ��R%"�A	H ���t2DǄ� � H0a��Q,	4�<GQ@
 L�Yz�S>�`�3S�����Cg]��{c?�=p WU�z��ލ��V���� �s�q��H�i�A�F�!��d#bcd��TѨ��(I��J�� �xxHT ��즕}Xh�'�`�A	�P&�Bi$N�-R�(Pf��H,�0`j�!$,�wb����t�,�����������vK+���q�}k�v>_�O۞���w�:�r��	G^~��yJ�{<���p�B!B��Q��P0�	�Wg_��	G�c0�����Ӂ\pJ��8  @ �6�8H P( ��I�C���I�2qm�@00�S�
������}B2@<(Y�P("�7�a�U0�����P ����������Ÿх ����y}_�=��(�?ʚFs�l77|��<����{K�~s��  D I�RCA���LJL��OJ E%F�6�P� �T��GG��bc�p	!�0J@bD t<4!Ţ��:P�	�av�.�(c�L��m��ޤ���Iۡ��Tv�j2S���5r�����k/ɵ�e�����>��r��G\��uh�����e8z~G^>%��AG�C# �F�O
����`R�p�#�Yϡ���P˓��bG&�!  �A1� (�0IPÁဉSCC'KHC'" ���%G 3@âL'�:E)F�qa 0��P�HX�*a>}� ���2��c<F@5�Q6a	B!�:C�ٯ�|-1?b�J��aeNs�R���|����,�Ge~L�T��|���Q� �@ "���aM�p��c3F�G1�,0:��̠N��J�M�����Ј�B�Q`ĩ"P�h#"� T5"*6 ��d0���I�� 05�ДJKa6Bz�S�#o�������~zYYֱ�s��<c�s九�^z���h۩��������r��zw����G!�BC#�H�	����B�������D�q#�Ⱦ�$c���L4F�h��|* ��P01( I��KZ%�A�I]�$�#!����*�h��a�����A� A1�$0JD��0 (
`�#�Åa�� 0
���~��j�Q�揂Z��Վr�~�/�:/j/��k�w��]bf��:��?C��`00�
Y|4j0.���I�*��� G��J�� TJXT�HL�����!� �O�CD�{�L��ba�i��>�t�w���&?_Jθ&�)k�s�ٮ����cYZ���g}c��c��Gu[���_N��O��ϱ���P�y�?�]'F�4U"lTl � �1'���o6�/=o� `��ɠCن���h#@�P��c@+I�!F�� #��4�D���#A �A�H �!x�!�L�	>���ce��� ����OweUX�nzn��h/s�ۣ��ϡ�����=�  ��$ H�D"1�ӊ�J�� �8�� �d�6b�b`Pǀ�S������� �cP�F���'F!��G�b�Q�F¨�H` �0$X���4&�`1S��e����B����w�?o*�9f�s�Q��?�B���ύN׾e�Z������v8��O��ȈCy����˃8���G���1q�`H��B0P�T'�X��r.{.�ƺ4۸��V�)`��5��Y�M��)�8q0��G'ƥ���1"���S
"B"�!��pB2��TT �Y�g���0 A0��2�����1ƌ.= �:η?HL��[��R��^K.@H�QqK��zo���W��_�@$�� �Q`RA`Q���FA#�*q^����LD�a,8I,"8���*�� DeN�4
>.�B��B3X��`����/cz"0���s�³�>��%d�2x�H����	��'���¶㨎�=���������v=�rR��x��?p�����ǏG�#�6*>:* '�#=�֧�ݞ֏TH�>�[������ @��{���c�\3�P��	��I���5B��O�'G�_��MT��Nc�F$>eм��� ([�C	��K��+�3	��&E�m�#_�kJ<r����T'ň̎.�$��D4m� n��8z���-*(`81�hz瓜.)9��CA�CFA�[\İ�C�"���ث�_r�  �� ��N�wr{���G��`J��O�Q�P�a2���pTDQ(�`�	!���2�
C,�C�L��O�|9�����O/�ϣ�����a�yݿo�_���sR�[B�?�|���k��B?f̧���b:8;j��(���f�ǹW 㸜D�k3�H�2�ME|Ą�_�1�	��,��y��5:!�
:\�d0ɓCА��$13�����UpB,�d �$h���* h�s��hd����Ѱ� ,CA���1`m�*<�� �`�89� 
��E=��(Pl*X �bB��U
�K�D�N�I�NJH
��#Q�P�HT8Ԉ0���US���̉��������Cw����S ��(�4)0�N@@���BY5�D���B'u�R5F�t�2J2HS'���&8!.����)
 ��:S0Y��l�Fcq��2$ՎX	@
C( L�y���#�L�G`��#��]�4 ����c �RB�����Pv�
�	��3�:�N���Uh�2�gne�����,���~%��	(/�$�A�uRI�F2��k�d���!i��T��**F�#����0�]܋�����I H��Dqe����"���蠀��7��3.A��G
��>9TRxhp̹<t0����(�@`<W� �Q0�� qll��&i
��p(ؠw��$�E�0�L"  ιf	��Q'�G5�9�I�fz�`�0URT�p��vb�$d)��\O/)?�O�@#yb�v�/+c=�2���N�T8.>� ��Q�(�F	I
DJ�"�5P(Ä@ �3�� L�eT�5w$X,D�t����(i�$�26�"8��W8��P8ɤ� ��2`Ą���9H�xlbԨ���DP�� ����4;3��2Y�3o_]���=ݛ�m���(�&Spbf0��v9}��9퐶v،ߊ$v7���&�1��a�q ���׮�����R"s��2�V"$CtA�0	p��3 ��8~���'	��\N��$!A�6s�I�G�Q����j��÷1<<d��(P��zL���0�C�EQ��r1�  ,,~e���pHPGS>IB��� �0!q U �/��h�b�����ObS$���j"2��W%�@@8�2 �2
�0H�KD#@�$AL�����������F��`��B%U_���%�D�x�袈
T��#j�<J���\��@(Ĥ�*�"��X�b��	G�JTDb��aT@\�$�����!�qv���9�_mp�b�1=�[a{�4���\SiM���2{1�*�˗��^r�Q��Uw��_Q���V�O����gfe')�~��2(�!�ЊK��|��0�\�1,fO� i���,�h�b������{��8T8�O���p��s�ZE�n�F+m�2��:r02|���x�;���H�3����38��8�{ͅ$��s�����y�W��>>��0��  8�%�Z���S��S|�+��at�8�&o��P7��@`Ps��������)L ���W�D���a8��8��E��� `��45L�$p	I�	`H�
1 ���� 8`�$
��<��w��(I�&��bJ-���� P���4�$x� ����~�j�ŁAd�$6FDGC���� �H�����NsO]U�Ϥcm\���R3kd[�V;���=tfq,7��j&�̮GUfb����,�~v�a��Ɲ$h�=uJ{]ldB�Y�]A
�(-���d|���,�s��?i�C��7����e$�e�A��W�A����B(g����\ͯXE����p�����I8(��������>l�<N/o��>�[����M��ꑸ�KA��8�/YC|���Ox�<��m���0I�A���\N�8�S�e|
�2������N<"| H/��QޅD��GI�ub��p�AL 3�PFG�h*$����P�64<2p�C"�h<��pj(�X�$ �&b�OPƒ��t� �Q05�]\(��cԊk5	0],2���F�Ā#�Ld$0v!R.��?��G��8H���$5򀒦S�F'h�,`jt�M�$H����Ꜯ�h�v�w�2\��MSƅ��uL��ts����U�홒�d���He�	�1fJSF���P'�K�2��8�������O܅B�&�,��J�d D�]�ɧ0�!W��&�&���/��������(s��w������2o�	�1�; ��=\M/�
��_��`�@��<�s8	���t����xBE�>`F��3\�$�j�Ǽ�H�v~h������ɰԺ����� ��i�+l�7$���>� !���%�1q�H�a�1@PTB$ �� 
#@P��C����P0��@ �F+ �/�҇8��u�7���u,��*i��,	�b��ac����@���.�s�;\�\�|.���~L"�`|" %�4S.6a�aN���fZ�d7���[���-���zmhI$iD	����9-��1�m�6O\��w��Z��9�c��F��`v���@��ri��u|�nf��k����y�.�,�)�h �s���0���d��h'�>�wp����(>�դ���SEa��d�e��@�q)|��e/�~�r׳�����l�k�q9y��L�"��TB0��8�z��]�����f�ူ��3ki�x��Vn���z�. ��?��1H�%Ll��fq*�eL|fr)m��^:�s1o�cD`��SdT�L� P| :�� �H
��N���pl|4|� 4. ����TqI��@8���A E4��&����N;<�(Wy��X�v�xv�d�
EP�X��xɤA�
���bȿ��?L�����@T@�����9z	���v�"����L0$C��X�x��Z&� c��:5RFQ��$�3�t	�9y(�A���D�0@E�Ռ/�0�W]�-u�c���b�%� �a	�!�4�G[�D%G�!(M��������i�b	_� ����Y�/�4~�F!+��j���Ӊ�)��n�	@0y��j�^�Ǆ���9���h��WQi��E�M�sIp��=�G�|�w��E��9�;�E-���K��q5�G�9����X(����P :��8�/S���$�O��O����у��pT8�����࿼�+������bo-��.������A�	�Ƞ��@�D��H'� `��pƿ�� ��8 G��SG��a�a�Å�
��#46�)#�B�6�QQ�/Ǘs�2�s T�#L��M�f�-�R��\R�����Ͷ]k=V'�9�)�4�k�{z^�y�u4��p�_���z�BLfz/�N��4�0ʴ$�+p3��L�f�������li���=6c�����pA \D82D�IC�"�F�����,GA���5ZM����}5M�oS/qSk��Ț���!q$��݉x&T�	�+߂;��}B���x���_�=�7����\�s��+�i�����v��4����N��C�>�k=��D����A��|Ѕ�L��4Cܙ]��e@J�`1D��0L@�fJ�Th��(:���"MIϿ�K���B�� F�a����O2���³�Q���\K;����8-��Gh�\E�>�6�@ c9���Ŝ�b"wp��C2��a��#`Ǖ<��_����$��#eMDh�ˇx��Ʒy�_�ol�| 1~���D D��0)���؎���(��A.&N����:�qn.n���G�>�D^`���܍�L��N�j�	�8*D�@P$
�Ce�%�@����
� `�!!q(
*	�(�D�(�(L)�G��_ŷw��Ե00�đ�Rp��u�� c����F�'�.Ge=�9P�ap$w���2*좇<�(�d����:7�d�,1�?~AD*�>�1k��4\�y�9�N5m���̧�.���y��h�}>��8&�x7?g���1�k9x_��+	�r�%�L��B�̉��s4����M��f��n�	���H�A��(��`?PA���`hc?6 �K�,�9l��!n����]�$�$>fP2� ��w^�R$��n~�#�q{�$GP��l�p_�*
H<�Z�rj|��L�\���y|�{�D���BΧ�/�/6��i5��I#@��:^!� �E��9��#R�|�&0[���Py�L��
��G���|�r��r
3��}���D���-���?��NF��ѐ8x|�^ɵ�b�`�H+�x��]�xģ��H��=��{G)�g`�J����8�`BT�0FB�(D  �>��:!� ��8u* ,� $tU$��	�h Bt S�EP��jJo�xAh@jle@ X<�{x��<�L6P'�Q<Ʊl�	R�䑴a���C�hbBm��(\��l�C�0=�
�_�)JΈ%�f��.����X�ml�k6s6S���9�f.g��������<L+�Lz�p�9��9�]f�5�f���
Op���I(0��b��v[��33�ߓ<����6�1�-`l�����i���y�f�,eh?�l"������ϓ��afR]�e�̜g�����0�q���+'� d�����:��>>A7	�X���a)o�����ⱀo��B�����<��*\��x������m����)r#��v�	:<\~Os2� ���6I��q"�#��q{#��#3�3x��#$����<��`�H�n��tr_���H�*����E,'��3<�. 6*����ىJ��T>��[h(T��A.���[I!��2q61?3Lc6yR����0�N "��@��`t(���!@( ����YI b�#ш�CQ����   1��w�<RSH�C߀:��83��� RƤ<�3IPNa�>r�J�[i`��,@� @�(�F#IkH�� #!c���%�)y���:��=���� �q9װ�4.�hr���#��Tp?�(�+~L���H��Wa��k��U�E^7��0��XN!������Ie�wAfLva|�la13�2)V3�([X�D�a��XL﷕�e,���Gǐ��-��j�����pq��ntZ�c3����@�b�����8��H�y<����"Ħ%�#�!K���	����!3XM3�M��L3*�p(�Q��P؈�@
`[����dn�ZʊBI�� ��%|���$��,�:ʘ �Q`D�#`a"񉈙|@"�J�+��* ��o� ��>��:���g�ri{iG���
`�MH���0" E� �c1>� 
GE�c|U|��3� AJ�$�q,BT|"4 Sʧ0_���� ؂&O��ظ�}V�|��@�������n*h�PjP�H A���*M�$M�����L��_��e�%K�vxh �0�?p:Y���Y (Fs	�0�;؇8�f��"�rg��Ky��! �A��C�|�?ϐ����r��[w����L�Ngc�ց{dʔ��I-��P��&xt�HNiLX�Z0.�AL"���c婤��M��q�Jγ�@���2���\\FqH��J�$�0*6�t x�y�ҁ`��N�D��@��vb�h����l���7	�G@������M�: 9�d���Q��X�Y$�U
��.��w�F�!1 C$Ш`��D�ȃ���$�
F0�,"���Ј8���19$��ݕ�W�b�N&e��f�c`$�|����9jHlTF h0
F'#��S�0��B⠢R!�8q
8 ��ŧ�2���
�q*$����0L�������p��~�+�$6h@���8
VS0�o L�b!�$5)�ᣢ��A@tb@>Y< [�N@�^�J��ēa��;{JB��a�E�F%BӸ�(��C�J��Ɍ�
.�b��9�����E�5�8�����8�_�_�c|��a���m�œ\b�HC rbd��۴�J�F�`5PHQA�j�P�P�@h=�"Q2�� >, ���0 】��׮c���PD2L5l -�c��&I���4�0�c��QA�i��O� �@�q����LBb����3L���ᝡ�`�����!J�"^	��0�Vš�Wp3e�
!pt��B��rV�%t40��6Fh��fM 
 �R��B�"��)�>�}<�Vj J �?Z���A�=�&�,�xCc��&F�0F���~O����R�B�P` 2H�$�0�Q``B8�h�EcF%��\O+c ͼD3���]�����0����e�+�I����ɑ��5f�p�t��y��؎���b%���@QЈ�$�EE  �X��A�u�Y"G����H��g�GX�F�egs�ʵ�A��<�#�}��v��Ir	w�"f-�e��C� �N˳<Ï�a�l�p%�R<�"�䠞T�?i��3�/:ZB#�0���A �B#a�@!��	#!���#�a�I2B�@Yw< :��Bh��$��F+�h��1�`��4eT(����*i86��v�x�3J@!5T$!I��u*.
�	B% ���c'>r�>alL\h�������l�A1
A��GC��Q $�r`ڈX�R`F�b��Dp�B� ER�b�ή���4::����1a�qU��#h�D.�����4��NZ�'/��s�0"Z9�c��!�@eڙ��NF�!�F':��1��ad��K�ъO�_�#���4�L� ����Q�H ���n�Pr��By� lp�-���&���Ce-_��1$	$E"�tQ�aQ��@0�֡p:�|��8�I�,cأ�g�rL�]��|��<L
�n|����d��PTB�qg��N:x�$���un����9��x@$��������Y�ѥ�9˜�3"�l�ن�ȋ�<ð$��� <0.2><,"E( �h��`���F�!����&����5���	ǣD3u��(l�	J�n�iB�C�cA�i�@,���F�6��h8�*-T�g����@%�@�O�<U8@���P�b��Q�Aǃ��%� ����@�Y6 $G��6� HBt*�  � ��4!)��0Jvv�&�4P%� �	w	d��2��_��u�s�K`7V���b9��-,�A�|�_ҽr#cV��U/AH���lJ��� ���Y͑��Cc>��NMFGg�:t��P�%={����җ���y,��nظ|��������˝���tTkt�0>i�l'NʹP���l��P��%	�ċ$ֵl]=�dm�Z����M�(x�y򯓿N�13�P=O�X���������]�ry���h��[vy����H��u��0�&|�j$Qi�m�9/�?������޹ru_��%�mw��$� k�!��%������:l*,���������#��er�5�\2�4�{�$A7������~�Tr'g�!J��2�;�3gA�y�v�؋�0x�5F�<��<8�̂�W�t� 횃�����	<Or�a����.	#�3���C�K3���yO���P"Ѓ��}x, �� w *06a�p31�  �Et��RP"��t��F�Fc <�H* 	 AJ	� ���MH��!'����=�/�Ty��]��ulA0�  @�o�l�|��\I��9�SX�0iF8�uh̠@�0�c6��q!!k��g!�'�g3]�2�"�c-;��8�uX�HaPe�8�$��x�^��Z�@g%�����M/�\�^�fyL�u>����(<�q
�f��R�d�&�Q /�yB���&��W��Hq��2�GB�-�q�R���lR9A��Z��I���'�۰Q�h�a���`(u��c�(!� ��r�aʑ��G���qK�#�F=�&F�F� |[� �a������0ab� ��x�Ƣ� *�5��/@(@!� FM�@��@��
��+����w�{�O���B�2�n,,"b\�6�1�Eg$΅��Nkx��Ⰵ%`��q]���2��//q?+�"���N�p
7Q�m,e�c�2x�85����(*��D���$�K��;�q	���p:/R��^f�B��\�,n�I�ԍ�P��1��pHd���}%���0
1b�+쒒�TLE��a�%bIN	D*%Q�ؔ��g�VM�@>��B(����X�{z�9��aC"̐G�qp�A�P�}$tz�!� �A�	pgP�G6<"4��ɼH d��ħ�A�:J;�a�m�´*��C��T�H$� b�	��a  � 0�8��'Q���(Џ�C��\�������$U�ID��1�&���`3�XM�*g�$
9.��6Vpϰ�:=���R�#��J�<�Q<�8H(]l�����s.�G)��gx3]|���  
-T�a���0����~Ĺ0�XL�D C `�z��3w�R����������Q0�O���  %�%����`�JlLB"l�� ��H$��
� @ "0���p�'p4�)���
/̋����	�+C�0D|�'�󜈉e,8,0ts?$N�c�.�J����@r�S Q?�i*1�A8��4���,FQ�@ $�D (0N@�D��Ǚ�g���%�#�ȇ�C����ą6���4��@�2H'%f�#�F�a�s��<.f.! �B?[��NN�,I�b�9�F�D���f#c�YA]�𰈠hD"$0�䀴B��_�(�.BrL�0O����t��k��Ө	a�MGO��c�H�D� �AD !� 65$i8 �@(JD��G @,:��6��I]^�* /���/�� IJ�6@��\�E�� �ccÀ��člA!d7���:(APQ!�,=� � BQZ���
����HĠ)nԙ�U;z��Ñb�� ��`Nġ�aaq
E�
6�~�Q��63D�N������2�M3�Q�c�E�A�y�T(� �h�6f���8{� �Џ`����\n㻄t�SC��0Ujd�lD'	A'%��)�T"A�G�����k)TF��%�PPс`p8��R���ÉHl8U I|����q���i"`08�,"`�ф�r�
+l��-�p�����A��#�b���I�#� �4� Qz��p��O ��1�a3B�0��'F�q)�U���hrt��  PR��H�0�    0�i��D"���L�=0ť�$� (�	�9�=�b�1
iv0��f\�d�88 ��}Zy�U�������a�|��x�����=|��<D�t���U�̧�� �i��mq��\ę���xG�y�YD��x�5��79�,�~�n!��X����j?@�^��\?�=�Zd�5�	,	J���QC�` �� �@� 	�@@$I B��h̠�  "3G�Ø=��b�
kb���0����"G�ň�)S� e�X��`l(�A�R�%�@��#⠷?V�Z9���R�ƂS&T�Q$�@` ��7$G
A��s@5�a����63F�8�g�f?d)7����N�o��'y���u��L7�2Os$��<I�%,d��f��NV��ù��"2��vX�^��E��4�`��ǉ��#��yvr������6�e�L��Xc�G��s��A$���1�a��3��!�,���)T<0:A�BR������`�A0T ��@Q �!�=�G�Nm��#g�eR� ���A*)���Cl%�p�(x� �`�q�j�@F`X�p�<:����ڄNf�0�P`� ��h#y9  �8�qf[=r�}T��}j�Ͻ�Y��ɐ[
Us2�w9�?���g,����=��vh$�HF�C��P$J�����C!%�M8�M�ϩ������:婂9ۯ$KU7T
�/U9����$韘��qn㐥
A*�D�	�(A���IH�m�}��9�xuFuN�rRD'L�]^zZ��aS�,a%�x�M�#OҊ��HZ��<a3
�貲��x���G��(�P�$ @�"�G �00 
���(P8H  ȡy�":�*C�Ǳ����U��V�Q�):=zb�� ��t�3�ϿaDݽս��  ��/�����c�;��g'��f3���Lni(�
��Z�ÃCB�D ��������
����_�dȑ�HC@` 4h��"� 2����8�P ���p���/�X��8d�4Q'""FH��EA�  �EŇ�E���G�����%�Z��w�Y=���""$�NfB�]n>� H0@8��tC�P�P S� %�0Q�10Sɴ�|����m��t4iK�m*J"�B(0�"��*}!b96>wn��
�oiv�2�y���|�7���@L��x[���'AE ��A5:<&<&�]]I4 !@f��4@�q �@A�6,i�p���<����G�ǃ�� C�S�HaQa@T�K� �T"��Dċ&eTn���P�y�y8$z	%J��T�;H���ј�S�(�D�$_Ib����4d�M����)�G�%C(1��II1S��V�������G?��3se��������:�C�b���� C�ApєB��] @���D#�I��F��  �0p�\Z) H��yed�p���ֿL%" ��)�a��pQد��  	#Bi*��AL��3?7�ч����P��c�Q#F���`��)���� % ,FB���`���{X%x�
�����"���š<�x��׍����3��Г�Kg���<�%F(c2�������`\,������˓�� @�$e�|lLHN� @Æ����1��F���чH�Ad\D���_�A0 J���K�R�0�K/�
@A�Pn1j�PlrZ��8�$*!C�z �a�qh'Wq`(00>S~
����c���B��r|Fzo���]�T���D�����Qena  c0T[W r��t�����\�܎]*��� S�� �l�� ��A)���  Ė]_G``#����/���
Ɔ��$J���!����_���@#A���Ĩ0�K3*
4 ��$j�S��
5L,"�e�;� t\Jd�c� \��*!��)?(�3����@ f
*s��q5����E�6�d�IPB(�an)`���آ&��m�A��k��	t�� LP��-VT�C .
�ݥ�a������ p(����P���`\T"$6����/bc�a  �6>����Jc���s�F�: ���3g���  �1$)5��ч"�`T\,8�~ Zp� \�u� (���0�'(�BxJ�� �9��w���O��e��d�	 B�(��-A� X�-���.�; <����2`�@�NT�0-�����[���D��Ѭ!�c��F
�$����~�1he��7
�4R�%�G�&XgY���"`DH�6��l	��h�!�w(:c� ��RB��^c�X  ��!��� D�u����'�K�,ybT�j�:iJ �����1����3�(�qX�`�H`*�j���-�3�O��GB�-��.� @%��y	(��&tCn'��f=�-:sud��`�0f��e�6��HM��~�W�,  B �K�zq�! vyug2D���]�QB0�XC�&.`YT���@m���WN�L3! l�#M�1\�}l�_9�.��N��i�#|�4��H�?�b��H �� I5η���0!pZ��?<-�;� Pi(�K�Hѓ�Ioc�G(��s�"�JלOa�u�Z�3�LtZ�I �(iX ,".���ǆ@�C4�U����c`����Pb��d�(!�R���!�*vE4�j����o>  R ��ʢ[j����7e
^r��̘��t����(90�(	�b��gSЂ|��� � $ JI!�$�|<���@0 ���D���x�]	������A젨�D-�VO�� �a��h�>�%LȼA*�xZ�R��y�@wX|�m<���ejP'eD�� u�E-��iC�%p�PxX0����)0 �OMOhldq�($!�.�F �� �&H	��ćw�p�x@X����B0n$��x�
������Heۧ"��`�ǅ�@�"4�AA� ��ccB]q
jP��u�?����G��ƀ"���@_F��K�k��-�������mu���>�o�:�7�})��?����5z��	��+}���'A�+��$���7"��W�P$1�P�5`�«	�Vj٤5���B����̦Z�1a5���G��<�oQP �xh�@0!
�CP��'�cd�����i'�*8��#@�ɓ��R���H0���1��0h�F-;�� i ���DBC�'�a�����H�������Ň�aD����Á�b�  �JF�G�S&K�d[ο�>��C��`�X�k�'��r����\o�f�I�9���Z]�*�X��*���5�jI8!�6��%�H`����b@��!��ƅŁ�a��0�"Rn��9�� �(`X4$ 6!�HpUa�`q�o�J
�@��aL����`�e0��|�޷%��K��!
�
G"ш�Ñ�'�a	.ʰ��T����a�1 8�ёpq���G�i�d�x�� ALs"� 
�6��������0�,\<���p ��N�;'㖃}������Q���2U�aR��!��R��M3�C�"�!H�(�6a �����nDL �!T2Ck�%HM�HXh FE<T0�2L�:���Ԃ�p����!��TA��HA��d��DDG���� D R	�0HL��D"���k��	�,�ҏ����?G���l`>>%�9�[�f2�`��X���%�9a��Q!g����=��9Z�a%��>)Y����;3?� �1�D�D��ʄ!���������s��:f�Ը��!$x'���~�a_�
t��V��PE���`s5Ǒe7�� &����(�%撡���$����IQ��<�)܀C�ݸ��9��\��<��Tr94'҄��]������1'Q�}<(����(�9�������g.��7���C�q9�،�����ɍ��Fc�Q�'��l�� &�`K>��^��>ɬ<3�_t��F��`f��޳ե��a"a���I� ��4�)��H�E�%8|$L�Cr2$�ăR@�#��G�aB8��(h�x�  ���ߜ����� �D�s ���O�k1G���8"�d� �� 0� $A<D,xx\J�p l,8p�𸨩H(c(]VRT����0���8 ��� (la�$}x́��)�T�Q�	B��"����?L�Nfu7M�F0�X���%�]$�/�S�.!�h'�y&>"* B� .iD"p`�� @P)TX��!xlbE�O/ۨ�0><.���ƇA"�@�+
!�(z �xn��� xB���QA
�@
� .�Ba�����a"� �.H�X(D��j�1(&#2����qe8��	
5p` i��-<n4��_�d���#ԙ�J�?�.��x��s��g�1N�>e^∜,����Qe �t�m.�Ʀ�o�vWp�3L��<E�G�̓�ȑ\��<�\�śIp�P�	h�"�%�p��zN�B��I��.��$��>fqc��|�Q��vr4���\˛��b�Dx����ĝl�E<��ŷP���8�(�3�d��&�@F�Dw�e�O�?�
���g����d�I���1�� ��ȧ���(R�D.q�h$���9��<��8��|9���:��{�<i�m*����1�/��������jZ4a��ġ�L�(R�%<�Z(*!�fb�`�i ����IX>��1Y���@X0�"xtR��� �	b�C �U�D5G�ߜ"��2	wR� � �@��ܠC��q��֥�>	�`8Eb�H���h-�����������E���PB� ��Z����u�ldVo\,�Giȃ�|8���	�B��EV��>��aH	F#�`\�D�ݛ��۲<r����-�w�<q����!M�(J��;�b��,�;y�H��L'��% ���� ��
��$*.AtT´��0%&��$&. �b <.y���  �ҋ`����ss	PM4Udfw%bx@\X$�{\l<<
:6x����S ��H8b�5������L� l<DX
�]���$��pXN$�cڷ��45��������گ�i1	v��&�h�y�BPb��K+3�8P�,��B���4rY�
����ۉC��e|�9�����;��)������#�P!�1�4�}sk�\�<��L��2J����4�d_`)_�+��!@�G�����q�I��\�ӼI� �p/��A`tl�r9g2�;8�:s7gc��a�{�$y��YM�>Z�����N!����X��������Ȓ���Qe& G�KfaR`�X��0��2���8�;�r�N�Jb�Oe%kf�=����	K
FYz��A�0��6��c�"�� A��C؋��j`����eH���~��a�0!�#�%:"� �Z��U#$�
7�os2���P{@"&<)��c~��H��^G��o|V1��ptڨ���pB��PR0P��d��a  �FG��!@?_+SC2��3x��0�,	;4$�` �� SdUv1��`�41���c�BF@�@A���zG�6V1CM�#O�M��3��|pw��v�g��h+ALZ4 ��� 0��`��QO��� � "a .��"M5����`��ѡ�0B   |��I=��PX�N aR������Rc�̼�D
d�B����`8D :.� .!�:��H�$����;[iAG'�L�k��C��$?��r��P�-�FD�����R�	�*��ـ�^<N`+� /k�4b�|:+>���줋BqƘ0��|AH�z~c>?���(�I�5>�ʏ����y�����q��=*�cR�ơ���w��&$�4W�̯���s#H��k�Y~ě�`qI�.c;<�e�i�*~���n�|R�PL��S��`8�
��}���ٟ�`(#�=�����"���p����Z��#b ^�̽l�R 	0�|�YE+qB�YLd�F4Lz�i��a�4�;ic�Y��I�^�\;��m��`�9q��%'��!D�
V�
�QL&J���x8�����E��b������e1��;6p*�	����;$���e��~�OA8y3/��i{^��v�&�`  2 q�_d�M�L7d!�vQ�r��z���d6�S�	��e �E8Syp���AP 0�<,M|PC�nKf��觊bqx"���drG1�4�ÿ�E'q8�Xh@���ç:R�����MWg��B�f��M�1��Q��h�{�HbɸvO^��6$�e�@�@� �P��!���)`q�+�=��sb��0"QO���ݜJ�Z�<>
��^4> �!����ȓ�p\\ �j�T�XɎe�@}��,�aMs|G����G�4 �6����3-t��Y��M�؂C&C��n���*4���&"����(���r!	�k/�bu!.)x䀴`�,L�ʑ6�����~g�s�x�.:>UZ�0���|��P���S�!��0>��P��g�,�\I;��� ��g�y�&
�t��]���X��x���"�� 9tʜ�8���+)�����h��3��D�(|&q9��B��4���8��9�	\�3�}�S��F��G�ﰐpI�'���3��9�h��6�����܌J
�(�����.�i~L���A �1@ &��L��8��L7R����IS��{����@c��Gb,����l$�� "��q��aOjY�s#��d,��9��V%j뙆��N��s]l�t�a>+��	x<F��)���Y�6�rJ?d�R��z�}^��0ws������GB`���?� b��A�,��8|=��r���h��e$G���-�p���M%}�b!� ����b"��rnW�Vז3X2�����l����H  ���y����Z������*
ZP�T �8n�F�e�8��|1=Ά��pّ�V��$?]�Ly3��dlTB@D��p	%���M�ZBu��Y����Q�ZF�d;,O�?�a�J�h	�slhD&R�,!�Ӄ�0u�J`d � N�P�X���Ji��6�$�`=,�ظ��� 0y$X��E6L>�*g4[ݎ�#q�4�f�$��)SM�\�\ ���F6��i7�̣Ԛ9�4�g2#��n	�.£��1:Yw4%��z��pSR�d\�R@Ѐ�ʄ!�Y�o9�����ɍ���I�r�s5s�6�g1�\E�3�o�~����¢���a4a	�\��|���'�|��i@p)�|���o�# ͟y�cٛ���.��H�'8L?�y��蠊Zn�
��*��js�
R`Z������U1��9�)���Qɽ��Cx��3��F	�*3��P¡ʙ\J��<K*.::�	�o3��bF���ҋ�<���l5&%_(t��"Ҭ��ml'Fev�#K	�&�u=�d�Q$�����J�V�u�n�_��Zy_@�w9�_���y��@�<�KI�7s7ۉqw?�19��3͹6/J܄y�ߜ��8�j�� ����`��	iR�v5@9���f��!��T��9�G� 8�-� f,yL���K�i��z:i�B+>KP���f�~'<3PE!�� `@  �������ߙG#q��/��[i�;�Ĺ���F�@H,|� R��}9�;ϬN��h<�%��'C7U��!v�kH�
�:i"���� ������ �}8�YF�}��3�e4���bs_u'CT0���`
��y�8gsu\Η�T��fX&���d3��<&g�.��4Vr!>�=�gw X·� i�Pj��/���<�t����T2���,�;l0��)��ݦu��GUΜg//6�f�p-M��K����=�gw��v�����8�),�"��jJ`=�ѩ �cIK�8�c��q�P�ʯY�Lp�=�	2dؚ�P��eA#�	����s|���x+`�� ?`=��,��Ӝǅ��;��g���̧ԋ�A�t^��|s�)��|�:�%�{8����>��X�~�eDX����  ��x�Gi�9��g2�q	=Q�/��0gS�q  �Q@2�b�A�0��n�c�1�dp8�f��N�b�3I�(.,�\�n܄K;�I+{�EN`�&�K�������Y-��0�A�$(%c"��n$):��D̀��h>���}2L�����wjx(�$I	���J�D7"�(��{��L4v�= 3'se(��(v�`9�Iq�y�-��ǳ0����`��AVʥ�b������:g�y!/]���oN��
:�c�u���L �%0&��]N�o�0K����':n)]��t+u�9���Vk��ҷs�l��/9p���H�9&�N�\�d��#����{�$s]eG��z?�����@r/U��Qf�R� �!�X�m�
����H7�c��i�6~�#@f��E9�~�lG��SOCΦy0���+�\�o��2#���jF�9�@�=�d��y��훼Md�~�������*Q`/�9���c��" �$�R��t̽����krϋ���%��跳�t��e�L���dV7�í�M�S]�����[��
��x*����sk���9��{=�k��~�?��s$v"��\��7r��>������u �?�b_�q5�0��p���|�EfJr=Y�A���y�J�#yJ�=�^��K��߂�����Z���1�������~�܏'�������}�����hr����+�v>����-+����sg<����9��г$��If|} ��EG�Jt����p�}�ۢq�|��]z��K|�6���oQ��W�����O�?����V���p��+��>���mf1~��d�|�N�5g�����><�w5�u�Td_B���`BH��pg��V�pF�8�4����di��|���,�<�b!���bq:��f5c���:�K8�V
��g�h��|��u9�<"J�����}\�I��\�Ml!��|N �6��zN�p'p���<",���!��	*��9gӹ��(�19$|J\O�ie�y��HS����Y���0�x ����?0O����9���{�<L
(h~s	!Ų��C�&J�`Q�S�A�l�f	�j��(�#�5W�	�8�I-'��4��}S�1�9\�G��q&��0�=x�4�Tp:��|ıм�h|^!�9���;���9"g�_�Rļbf /J ��oN� BQ81����-@�Q �h����0�X�t��(����b�_���������3�Y��������*N�+$��W�4(6�gB��s��&�B5`n��s��!M�6Z؂G+e汙��D�a9t3��C�A��9z�l����a���:T>�Q��a�a�`4Ǳ����kum���:gpCr=K����q��L'�4p��k�l]il��2�V�%��$d���,P�p(�q��@�^t�g,����S%r2G7�XI��`Y�S�M�Vs)��V$ � &�
���)4��P��#nY�s��`�`,|<��Z��ic�<��T8�ݙ	"�M|J�%d"t�?���K�j���Q�o���i��r6� 3E[)2�fZ`� ;����C��bGA��3��@7ӄ	"a`&�L����
  B� ����Ј!p�$`T�$�O�M88$��h�È`C�:�xĐ  e��� ��"��8T��)�0ɓă���N��d47p�J����A`9l�i\F �Jˉ�KYT�P���"a#�Sas��`;��҄� f���;��I!9�����OQ�in����\i&�t�_�Sl�{G��M:5F�|l\����H!s"[��/��$����$ͳ���2�E܂ �}�� �T�)VA1�i�Y�i���y�aΡ�g��g����f�Fn�,_�\e�s<��7���W`��-�2v c`"�(ӹ��#q�q�c���l"X
d�g��_�g!$zqh"��'�,�ϻ<��y��i���m�eIja:1�'���@��R�'Iuv�� �#(0�N5T"$�:�F>y��s�a`��,.�Bdy^�5�v�M���{ۛ
��T�t2%�|r���2F���|����ͥ5U9˒���H�҉�CA�c��HSC(�>a�h��Le #o���l�^�2��11�,�� kI���� >�45��)��JCxA��lq�i�A�:|J��r&J7Ul���&�Qa��/X�1.��[8h��X�+#,��0 <0
�O-9 ��C����#PP pT,T(��se�#�H��c�!���@��A��!�A���@B�$>TB8:�D �`�@	I1D�S�F��D�xH+�����"Tb`(\\B���`ُ�ܱ<�"1{+�D@� &2�`��Љb¢�1���
%@��-[�X�00Ss>���p��7TJ�,��h(Ҵ''�Ӄ;a�;�\�p�?�.r�~��\0�1�����	<�I�ûu\�����1d��u!]��x"��䩤�l��&� ��No�?3���`����K6r��(�D?�P�%�hs" qHǌX|����� @����T3�
C�ĩ� �3H/��^T|t�㰜l<=��XOu��vR���P��ER�)�|�,�Z�I�cy������GX�G�S#N�9Rp04,.���#�sp�xH��9���g2�%���d	OS #�5�sm��J�ٽ�FC��� �6J��*�R�15k��H%�l콻|����1T���1�1�zfb d}#tڨ���o\���q)O��s�� wڴ�,c\k��fJx,��	�hbo��ƃ�e� "�5�h˖�^ffw��!W(��S���7%D��	@%aeYl�X.��H�i�f��L]�@v#B�06ebX��P  TK�@����	�.�R�F��sĈ!��P0�� ����Q]�E�AL(q(N�F(�P
�� �	���ȡC� �T  ����0(����"1D|*y����(@ MlX�p	�"N�*AlXXrT1�x�\�c�X��̞�#0Q�� 5P�BA�@�e�J4<|�^R��R$��G���Ќ�,�P9�Y�n��Bʁp�m5'�cf_�l����'�k�MB��3��hL$��q=&��m��>��cd�!PEAd 4��$C%J��pq���< �,�z�������m9
����	9�CE�ߜ��#l# ��J�<s@+���G�S��C��L�'1�kx��7b04�
��l@��7�KD/Q[�((j�$�N�f-f��
��oa�Y��
~��At  �@�O��		«��F>��$:  ����Ή���������tK2��-ɰ�H�1?sc�1K7�w�B�YX�����$�q)�/�2X�|<\^d4��	�m ��j�3ӠIӏK*3�|����"(ɷ1b�2��no*Q�G��^ԙ�~�j�,u0Pm�K�J DdPw{�,���f	�#ݭ��@p`@`�c���C `���gd&& 
�� �C�A9B(*�F�Gb��p$��1aPb���Q'Q B �0(B�!��ȡ���c�@ ��01�b@��7 s�@X0w�� ���`���#χ���(�;
�(@�� &"E0At>:�����B��jT��2��O#u4����� q���M+1�3��[�n�´�-�{��YAkIZ�ɼ�`��X�8
���<Jt�%ńf=uLX(�1�"6AX�N� ���Q� �� S�E@��]��(�F\���� ���7'0���^S��G�")X2<{(��Ϝ�(f�+`}(10Y<"06UN��4���؈�B����0E�x>gm�!�h3�,E�߰�=���-@�Elp7��b��s��]����&B�&K��#�`����i �*"`��s��������FQ�a�X���"[3u��f�.K^�FC[$>���|��LM���.��Y^Am�-&�ő��"��ǡtGQW��ՔTF�3�.*Ǳ�F�Xf�F�B@�#�W��טL��<f�o�� 	���@�*r��0`4y?^lS2��(�7G��_-|�/��M��}l��/���O6�NDh��,|����d��g_S$A�8���7�h�Am!AA��	"0�ƚ͡D$D�����	��C�P�8����)b �(�IP-@�_#�Q�`(8��GG!@"�@p !"ap����H#���dĀ]�(**!� x�&N�8EX(
@B ��)� (@��!��<�s4D��#0�'AB�<���"C�D0�Y
�:>	�l�1� 觃��{Y�MP ѐS�G�|���Z�V�+����h�%S]k�@��b���M%,!|��� �䩄��d䈡��#��0e��hT�q�1�a�g,C@Dlx�ֆ���c%�p@ʠ�`�91� ��:(��*�&�H�  :<��Q?ڊeMd"@(����O7�2�l�)s%K��%�C���ps�r*���/v�-�)��^M��&��s�a~��Lb��^��9����b��f;Y 5rt �H ���$[h��LOr8�0����#�j?�=�c��Km;�Z�z�D�r���u�d�33I�6c0��`��ӝmo�r&���養0k�B4�]�,C�GC�O���eg&��]{�갌c8�}��@%f
��� a^b��q�P�@�g*>�0�Z�RG�qg7��f���=j���{>�\�6�2��3SU���n��HgP!C��{eB�7-�����?��}H ��㊗�FuT\V\.">���0�PCPL�@$>eE �0 
�	&������"
G��<|LLT( ��Ai �@@  DP �b��%D�a`�(�`C�����	=$�H8(`h  ��H�vj�����@ ���E @�^�>4Alt��p�a 8� (�p8BG%�E��%"MH�a�@D�ĉ8ȗ������<�͞��zN���[k�l�ѭdʙ�|E1(gS@�2�6|88� �C�4F	\(4h��� BP�p0���(.���@����kyPN��P� &~��F�^B�z�۴� D��I��c�?����%~��n��Q��C��������"�F7u'+Y`.Qjp��o�H0�K�Ġ�B%����@0k��cXO3�C��x���1B3��\�5[YI�V"���*y�/؏v&�p�f� �}��:�}:�D�N�Ib����BD�������[cH*���3���Zf�>�n��Tg��kك4`簗����<âni���`w���8�XL��13I�/�o�b&��l'��0ղ��j��-�	�F7ۘE���ݯ�D`*i�&NZ�fe�3/�e����3,A`{��dfrm�YBI��� �Y�tƳ79*0�S�����P
r0��Z{QB��A��DE�� ��)���҆�S�@�	  �(xL"401LJ�  !��@@$R'���  Б@0   H4L"�8�@<8�:��)�q��C�����#a`�AŃB��&a�z��A���@8�sx\X\XR�`��ш`@��@4��h0�� �A jT�HA�����"�b������~�����Ä� B9hA�.dT�41:���Ĉ￐s�y�re��L;G�CD��, 	�"	<<�]
�2���e;R�؉�^�#�&P � ?��7"\��aF(�1��u��݌>d�����ٚ`�9BQQ5�h</(|[�
���P2�~@Xt�TP������Yu	I&W�KS P��05�^DE
���y��w�!P<\��Q��h�0Q`��SC�Å��^�[1�~�y�9y���������˕�'�ü?Gp~���O�>�ܸO~o��� �M-i L��T�c!��J����]OѾ3΂��C�p�T��@�s���͹�֟��9��B������B�B�#������7�Wy��1��0�G��o�p�8P�I@� :�9�N�Y���0x���@$G
�<����J�2{�$�����K�_�\0��T[����HbPL�b��4�;l	S��U+� �iR�iH(�SMGw{l��<���Z0���X��_�@�zowN�1���� <����`��0$	 A@`A @j��P���2��Y�D�@8x6" �N
���HC� `y�(,W�������]tr�V��g�P}  `�@|0����Ex��x��Hd���� .< �]�NJc�4`444T�Ww( �1��q�h�d�G���뙇D!`WS	<�pD�RI"Z�p���x��y��!�S��=CR�8g�{���f
��<��2�b  DrF?�v�Ba�c�i��(�#LD�`  @��$��bQB"��c������q,c!y>�F�M22k x` i�28��0B$1�=���jKT�}���R`<4��z0D� *�% ��_��E� A� P�ށ 	@ ��/θ_�t�����<E�=#��`f��.�SXV�Z�ol-����c�A�;*�` ��g��Z%m}t�Ȟ����B�p�������@1! ��A�Zh   f�Ai�A�< �/Ⱦ Lx����'�?F@�[�(i�H�p�rx�E	��rd�ę���!�8x�֮c{̟?�{l�ۇ$W�yF�+���A#Aa�@�׃bq E0� À��$1���`X�]� �bGB" $��)H$ �E�'N�0Eh�����e;��c"�����qC)%u�I�� ��fa BD! �!C�ᚬ�'B�O�G˿{��(C��Px��cp (} `��Į� ��W@ ���ͫIQ����M�9#p�#��SĂ�g�#LO5�ژS����󛥇P@��=^R�D���c��� B���+M���_	 H00� � ���A�e�4/� @��*�� ��M	�! *��>�{�h��*d���r�4$D3B�h�Q�c���  �.��`�  ��~�@ȷrbB � Ea&�\e;�3�����]K)���ٶ>�?��\���>3ݍS���=&�A�H� :
�KP&��u~��r�x nۿ�ڒGn9��r��S'F�^��x����I�|4Q ��,�%��oF�Q���;���� 0 � �!8��4HM��,��e�E A� �@$	�/��g� M�-�	��cH,G���G�.8��E/��Nu3�G�0b"��_�"PVE�	3 G�~��v�Q��R@r� 0�������Q�g8��w�tC�x���D�W�JlJ���J��X0p�8'S�FP��/!k�Ѳ
��r�yq ,dhT��qx�Dq�N�D)������ l0|B����B���%��:�9�$n���yj��;�L�c.��G �,&
�I""�(��`��`Lj9t8pv��U;$�Q�x *
�4!�M=Kb���0�����t	K��!L��t��f�WW���B�]�2nq��>�6�.8�BXN����e{2g�2�d&�w>K�k�H�D!BN���J��	�b) �� <��a1� 	�E6�_5�{#uHJ&/�H�c	�${����X�8D@?1hfcD%�{��DC�Ã�7� @ $��R�P��|�'E �D�x�@�,���)�a:e�XPW~�B�DI�4�*$z�
���.Y�g'Ⱥlt :�i�
C$U�MLVU��rb��D�$p�P@�O�"A� +���#�yT#HDX)dhe��$"yRԐ�qlÀa
��U�EG���%$e\��Hꢣ�0����� ��0X�B���H�&����&�#��Ix��`��e���?��A����M�yG!��#�������N^��E��J�@a��"��Y"a��L ]<C26��D����B0�i��,q�7y���[7�9SG��(v�� ����h�F��CXB��<��G�}S&�j��9�2�p4s�����IbRō��7Mﳧ:l��r��Ys����B���0��{��� ��&���Y�F���W|��^de� t~32
A(@�`a�Ԇ�T�L  ���	�aew��#���y+Ya�V�Tb�}���fN������ h �.�q,��@��D�a��Š�͠㣀� 2L�.m��C��@u�q,�*R�Eieell*���� �Pj���)���6��"�S��Q��aXC3q4D�V�����Q�8n� %\\dh��fbс�C�7 I�<YX����\?6Ulb<{��KQy��x���O�p	:�0�{����4�l A0���2����� ���k������G�+��?2�_QYE�	�1i% �2�lr�*��l1 �0'��7T
P�~�p���c�cX^f�}ёl��2�ݑ� �Q�N#��0�����)dƒ�-zؗ3x��|��w��|έHP���E�p7Gv'��l]�����89y��.���8���9��q	=�ᶹ?`9���J�p*���*ElX|0�����'Q�@�B y�G�_q�A����3�;M7?[�1�=�.��tz��C���x_b�[cY���jE�՝D�H��F2TPB�!Ge�v"R�N�8����B�E��V�v�T�&"GJc"�F&��䐪�r�dJs(4(���'K����i�Ts�/�>1څ�VK&a��!�J?:�i���H�`	ݸ���!���M*�D;�j���ʑ�A@Ƨ���ύE��Gك~p����s�S �(�Ԩ2����rN���|��	��V 
�Y
b��hf6I�]btR$�b����l��<I	�$bk��`�k(7Q����.�.K��^č�'S���	�ŒqD?
�˶���}�-y`�q�a3�(�06�#`�ĺ�Ta�E&���qic�v%(Z�����{���TF��|"��h�d�	�&��N���8���rA��q��i� @����� cB��@�f ��,N�(�٥�  Q<�	���5�\�e�ژ|�^{����S���l:���&���D�ɴZ�j?��A�L`_n!C�!���P�L-	:i�n  ��Tʐ"-%���;l$	�p��Ԩ���P2�A >D_w,.)X,�d�vfˍ՘Y�P�.�_bK'��k��Q�e�a�����#� pa0{� h�8�٘���01 E�l�"@��œ��[ѡy������E#���Jzy��l�qfR��,��g;'���9��8I�U��3Bc,e�3	��nN �V"��� �Q��2%;�X�=<��2��D�D!�ho@ (�P��`�u�S�^cL�a1�36��5�oؒ�f�A�Bg2��%iB-���4HO.�2���*沉U<͍�����9������ѽ�k,8��F��:�<�.��0�s(����V��^�C=��,"}�m�b C�� �f,�6�,N�ַ,��	�h�ܭ<	�ĖT�y� �ត���1�<mgM�莔�]m5�n�y�:�E&�6�S#��锑�'�D�&U��p��D0EJ�T�e��I�c�
v�o%�Q�@��ޤ���&�
�'@���6���[�j`�N�(��΁ܒ��bbM���f�V���0��e=!�$R��K�Jئ�G�$`<>6�E��SB���&����_�2�Z\ <�b��1�|$��>��*T�H�%c��M��byFQ �C/�$��� b/�f��D��`1�,e-�,tJ&�,%	�7y��|�K��!�S�8i�P���#[<D�g��Iɥy�e�����I��Z���C���C7Y�i�n��FT�L�*��9�?��g��o�#� ����\D ���>���red��sw��&Ǒ�-�ɉ�<C��hg%��<M��y��D��-�  #₁��|2@Y� (
1�� �D��hN05<�e����-��wv&��>LZ��g�M��B�`�nݡ�y�<�v�U�H��D;=�`�,`<�v���IT�g4NcZ�w�E������'�n��;����E�{f��vɳ�o�q	��BjH��y����0���^�bf$5:ۓf����b��.���"�e�L�`�`c������� O��y}=J�������-���K�qAP�m|E?qX�X~�ڠ����ac�`�!p'ߤ�
uZ��g&[Hs/�������.�h��g���J�n�b���f�邢��baLbG't(��6`Yg���p��m煮��CC�]&����A��{PyFW�,֧3�����L+*�l���E�f_�4H��-9!,J�1�F��Y�;،� llz>�& �_9jN�=��,��m��s����X˵,�0�<L&1�$YL�:
��hF�dӾ�c@����7#Om������Pj� �a���v听�'ߩ�K%�
v��	K}��L�i�$��Zq'2϶�Vr��ө�`
<���}��nk�
�\RO�<4�L "N'���Msv����ф�ƞ 6i2l���l:�0���'�aO	AkR��%�jЬ�s��U�\{�8i
��Jt�ٍi��J�X�t��6��`0�M���f��m��4^�El���,��2E ?{�0�=���y�^�����l&���0����2�0�0%.f5��yN�L$%��y?{�Y�C@6��0�2ir��FeH��u@�)���/A<�Ƥt8�	�!��e!fI��E0�!�ٚ�"��g^~�ݵ�5�"9���q�^VN����RɎ���5�{�&aK]��I�r�����Lf��:��D��M�43� �&6at��&��c3� >�Y��\���Ͻ$i"��U��^��$g
E @@ SF�#��~�s�a,�5��*&��~�ACS��#b�B����PƁ� ���	���N�;��x'�dw�sSx�E���)��9�O��Z	�����K@������2����7�D�/�2q0��� rJ$H#����i��G9�饋QlB,ꨄ�P0UR��0�Ye,5�b�QV��%��8�/T��5��=���d_��:�~:�0��޳�M���/�}�˻��{�9�?1���8���g#��_�n�7�=4�1��9��J5_?na�v�{;�ggp�=Wk���1�7]�sta��f�����'��Z+g�Ӯ��{���6ۊԻ� "C���~���K�H�]ׇ�/ӥ�!�S��vZ�~�R>�e�dOO��&������[>�������������>c,�6��|�ߍ�ޓw�O�?��pޝy���ʷ�|�K����ןs��e�=ܰ�	���ˀ���-�^��χ�������
��`�w8�|��L�Bf����$X�G/ϳ���|4
<�*�4��ۘ�v��7���^TB":8���x���,�|)[��׼�-	%�KEk%����C7�^��W��J]�� &�V(QV�"`����Z]�VkfT5QT A0�Q`P8�����,�c"�G!�P�H8E�8(��@� H�B!�8PTc�K
HT#�8	� �+���*a��DH�Ѝ��� Q�G��$ ��'�G�" O�n"�4�M+�?�#�NF<� =rQ3����Bb�ۇ!D*WLL�N��g	d(���G'QR�H������!F}��q8ϲ�T\T�8䈣�@��)p8�������F�c� ���� 
b1�.�.T`�5� ؂Y�v5t�(hF���"I���
��h��3h@Ŗe�ң�L��fzC3�̆�N ���6�!��.6'ڒZ-�U�I���9��c1�I�Q�&׷��֜�|��@����Ԥ(�xxmu�>|�6�D;ۓ�]����o%���gN'��+����QG��q�I���|�,��ZL�w�e�F�A��g��9Ѐ;��0g6�囙Y� û$�Ne�a�̢�!�� LB@ BLBTJ�(�\ 6����&�"V٣"�)�$(��y%�$*�������������dTz�_����W�m��6Re��;�(X::l2PD�
�A$L| 
*�! p���ABA@ L�$�A�C � EEEBA`  	  �@�/�P0�(Q��7�`҈�
&��!B�����Sb[�"E H	Dǝ��s�̴�8^y��O(�L�d;�w0D�>�S��<�x����v�Io��Q`t����\84b����!��ȃ�A�n�0�L�"3P��`HƠ�χ�:����ƤD��@���}'=�OU���`��i�_���{�E�U:����<9Mz���� �icIS�+
�t�i��bg2We���]�	�bI���н�2��0���-�!(MW�|#�ʧ����+钨~�gr��Gg��$�z�k����+�̫N鈗�D0�{
1]:m��T>2��Hmz���H$��cr�ر���͈�-��J%�F��;�tb�p����?��!�h�h�L�o��F�C`u�( @�xDIb3�D QP��08��D�$�"rX �C��х)�0��`,�B1��^��x"f���kW�kEϏ	OI�z��]��J_���T���}4J�F	��"`�������@�`t4\B, :.:*�"�(0 
 B��A@�# `� � �3�h��;����Tgkf}������~����C��Й�ZN�5��F�"@�4(��óRݖ:�!��,pB�INξ�v���"��9F�<FN %\B��	4n~���֞��O�o=H�ġ�8�z�V�8:��F)���p�G�1�H0	<<"b�i������V�n:1�D�� ��nh�sm���G���-�M��MU����B�O���eֵET��l!D7�^=Y|}�y��`���c�\%�j�����P���&ӭ����eĩ��[���vB�|��K�/�$3ԑ�HѢ��6'���V�E����9\�X�6"q��>ٽ���O�^�<nϖ̘� k�{�&iŴ�q$�ր̀���N
��-�|��R#�f�N��3�"L�`�����Ƣ�C�"�(0
EB�@0:u\��h��@ ��B0X��M���^��3�����q��=Mto��g�%��T��;�Zb+���p:8�8x(" ��J� ����@ H �@E�C"P DT��Āら��p8 ��@AD��˝D"�L[��y�ex�Չ�m��2;I��0i�$��،��(iL��NLf��,,�PaKi��t�1TQ�	էn���N���N�d��FU{58/�I�!Pos����@'q����-� 
:
QT���F2LW�]�B#sYB'6fC��a�FH����% �EQ]@��3��Ha�z\q��}[s��߮��f�۹�Κ�F�[:�\�� ?!�(6!�=w3@d06��0�ed1�ig��2�iR����f��|�,+!�:ci�mwi[{$��0��Ǣ�-��a2_c ��z�`p�J+�4�Y\7��HCS���N=�<�!fE��<�������	$ݲL
�٦�X�n�:��/�ףl��)�P�A#�����|�,;���4�L�_��&Q1A@<�)R�EF�� ` 	SCEBa  �h�� $�`a����F� "Z/��w��	�.:����!�����k��IF�!�`��%*�R
ݚx� C P�`�Э	�� �`  ��BA@ � "�0��CE   C� a0 �L/�/´%��&b�e}�&�Q�3�x��&8Ga
s
O�q ty��x�s��+|G�Ca�A�N.�s�ֱ̮�\k�;u�}��I�n6«�ET��^��v2+���f2�J��첄&{�5'����7��N��n^Aq��hf=)��Kw�C�C��0�\�b�Ͻ�&ΛYf�;��E`"���L0.�y���0)	���������
7��[+����>v��frcwk����0[�f��rmηL�ķL�����[MJA���l2ؚ�f�-����L��̖�����	��h��Yì�)*��wz�-�9�e��<�YTl�B�|�6Q;�:Zt��L�$S�[�g��G�sҔ�v��<�ss�o��둴\7;"���dOS����&����y(3�{;lc'�pp�!0�l��s�,����eE����G������pAp���@ �M�2
!A`�p$E9 ����z��"OlN17$�
�	p�C	D�a ����m)8���G�5 �?�C���xP`h:� ��@ ! ����` 
E P�p *�	�� 0���AhhDH�  @�-��I)B�E�O�1��(0�2��ٴ1�x�/�8�#x�縒���Ve	_Ѕ��ӹ��>s��u�8}=9ao�^
��W<�r�<{��o%�>5�ξ���$��a:��v�ir�'�o������Q��7���Y��~����_eaxd�����шSBrwr/71���$`�1���7���ThGg%/ʟa\L��������G��~����_8yN��lf��ǯ{f�}^�����]ӓ�c��p91�p���E��x���e�Jf}�$&$�lA?Lp;:Q
ak���Ⱥ��	�|��e��n�7_2�)�ʻ�4�w�r�ks�A[rj�9���Ԗ�Xb&���n�͊�/���&՛L�:��R�l湙\��:=FO�i��j�鰦2��<�g@珻��Iw��VM�C�D��$��������J�R���Qo���d��p �P8� (( ���`Q��b�A�D�H0HFI�` ���XAP�֋=��n��g2��-;O����	��`E�r,��Ж����� 6�8Xx h �8|t|XKAC�a0P� 	  P0 �
�ćA@0
� 
����}�� T�´�$����j;�JZk�b?��"P�vv�d:qց�1���D�0:y��d��fZά��9��@�����v`��J��ճ�����Z�c�٭zWC�.^e#AR�D�|	����N�(�=��'{_%�����Ip$���/L�".�?�'�<�Ġ�ʛ��t!H��;���"W��Eo�}4�B��X�ф₴�͍�a�</��'������7c��ܾ��ُ��:��5�J3��K9�s��JJ`�t q��S�*���N L&K� ���YVh�l�Y�[�"�4�5��3�n��԰��h��$�m����((D�P��=ge���q6��5���|X�d(��!I�6���L3��H�+3��IS�Ć Q��$A��-��o$X�Yl���">e U@|<l026$
A��� ` 4 C� B������ ""�Qy�!`Ȩh��>��ְ|��'�u%�<9�s����W�'!˳�B E!C�q_���zM眡��~�Q2ȂEA7��Qts4E�Fw��G$B����7���#P�Ge  �	��D�p
�=D3H�� #a(`|	 �0�@b�C�o8 ๦-�yU���vk��9k���式��V� ��}EY���:�M�
�>�脑XO5�la�������y�|��g}n'o���/Ui�ۓ�Ix�~� �Kx�����~���9o(/�\�1�:�s���V��}<���n�*���#C�o�8F�`�c;�~>�����������"�d���ِ^�Ra9���,�2��c7*1���׵Ϋޏ��z^zO��������9��������������+���=������0�>.��� <  KX��-�}���-�8�iOX�sT"�����;z����2a�z'������o�-oAo�W�ٔ#͗��-�s�$4?4�=�h��d`�(N�HI�h�[6�eʄ��GR}�����g(��w%WO?��������3�qS��b��ޠ_��X�Yd�<�s������ߴ���_C��鿾�Ͽ��3�����߽��5�瓜/�gJ?�q��1  (h 6.4<�C~�{ P����s@�� ^����}�(B<�9U.���%�	�co�C�T$��5�F�BЂ�������+B��� س>	<TB��P�� HT��,<l|(�l� � E�P��a���}�!C��iKUv�q	�&�t:g�5V�ƥ�
���=�P-O+Y��'&�A�Nȃ�.��A ��q�hO�!8��[4�C�γ���V��[[^��[�u��7�q\��^���8��Q��{I!����/� ����8��s/y � �����w�e1���u�$(�ͧ���#�G� �"�������Jt U,z��ŝ]@@ ��q� �g��A��|lg�x���J#�c#~/�8>��Q�pqqP�z#��JH�26� ��`0 	@PM�QPA�!P
!@#đD(Dh,8Y�  	 �fO[ꦑ(ERG��qߣ��"A�j��N*����n(|B�(�a>�HA�@_h�`[`�q{3J�5��� ������Q����~^$_�ZX|��{�>��H{>�i��ba�g�>�ͼK�y�š#�	IЀ�Ȧ,�����Y�d�Lu��L�@������*qE �(�� ����.��`r�}UJ�`�'9��0�w�g�].@|͡�y_��))� ]5#w�ă�Ň-�� hh��N@H�l6�F@��q�hHJ�s�(HB�F�A%��⒀P� � 3 �D  �1�PM�I��x3(��Q��Q���B��4*�����f���ig5�g=	rl�L�*� M&÷P�lU����|��s��5�������Z.Ǽ{���1���[�3��)���>Uܜw�=�g�a�fC�~y��-$&N��O4�)�iv3�<@��줕�Sw2�g9ʓ\c�a��aY�  ���A��,��L�Xj��a�8�HF�����{�$����Fa������W J�
�"*< ��c�ArSD�0 
�<b�hD�Ġ���C�&��OL�&9(����LH�MH���@��	 ��Μt����dC��)��L�&΋��f�ʰ� {��I%��Xx�ۘ�gl�{�q5leE$a(�l��	�Y<^ �a�W�a8�-��H��)�n���,���F�Jm�ݵ��~��9o�$�Ƿ,��$ć��G�ȵ��b��5o�,���!��;��V�丝��D+	���/��
��@I��� �Ap~_�,������U�(��1�䶤yr��
/�{��F�J���x=�T��N<m#�sfuW��-�H<�ᨦ��c����D�"&6t���*Foc)m ��<u:�I�P���d"�#@�b��D�>� ��!p���hc+�BQ#���(o��Q�B�fr&aWV?]��d�ش��mLd2���Aa2�j}����I%ӵ�aap� ��C)l�b��)A5t���?�5�g� ���<�Zy#`Xl�������8l�1^`�N5�v��@�Ƴ��h'�Nb�t$�f	w�z�!�{�� �ɴQ�D�ⷞ . ���.KyՔ�P<��T8���y�I�#7�����;1kUd͜�0 y�d�/_��ܵ	 ����u�RA�^3�R�	���l�� la+�h��>��(#qige����b�c!����f!����0
�s�$y��N�:�hH���1(�!&"x�`�E�3�es���*4!&
� B�3
�J
	H�j��E�T��؞��Ł��GSLh7E���L�[��د��Ќ��X^���VB�OKE)âc��_��à��CLB#�1�$[�1B����Y"b�Uy"��!t2ŢC��  ��.�^�^� d,c�0��O/����jN"8c|��^�����^��-5j�&���X{ &���*&���(���Q��ӆ�W9����<�ʊ���#�`R�� 2�}$������X�JJ���;���4�Vrl�rи�S�֌�(k�F�sL[�Z��(0)u=d�X�J 0e*I��4E*D�z���QF I�:6 ���Ѭ�	V�3D��
��q,$٧�-B�z�p�Ԓ!�m���AzBy���� a)kzKk� 嶖~d
� �'�<�7>���1(� "D�B�2�8�%�`�,�%Z0�E3chd!Ta0\�,z<((   ����,h�',!1�e!f�"
a�����x;|������s�;7��u�׍�χQr�:#]��U��6$B�a���X� �����<_q?&:�a��ǻ��(���$r-�[�n�e��t��x��k�~�w�$�fq"s!��cP��#\F��\E�[����O.��gF���|C��'�����9hIOyC E�,��+��Ѡ-�D"!������K�M('/D��	!�� Q"��'M%����׏\^��˕�ڏ_���  RR0��X�`0�: ���05�h�� >	�`��(�.� -@k:P��g$���g���5���g���p5#�I��ogB��ȶm�ުf��?��t�;�4�+r�Dq�0���c�%������Jd~�$��>�Efn�r�y!G#�az�}оQ�00���X0&a0J�pxH��Ѯ�NU��]R���h\�q	�aSM�-�fxr^1"Y<$l҄1����C��	>����{�����W������l���3� ,j��¦JV�D"H�/ ����!��1�R8qv���B@;e814,< *��pġ��FC��R�S''��@��� (1|0�D�a �#H$  �����!Ti��� ��u��Gt"B4BF��C0mE!�r˘o���I���+���de���.�oε�<��� �^����J )��Tp�b*9؇<����zFy�f��X�w�C^� �0G�>��ˡu�_�U|�*��X$2m��#�gh����(���6�b7��/�qY��QUs��<��ϱS���A�af�Ȣ
 ��  `��O �  ^��_�H  �K�:�K�N���q{%}��#������S*���!=��g\B��@�n�C�
OL*�類]h����Am9cT�JPm^Ӵ�F��l5!DD4x&&\ ��I��(62�4u��w{Ci��O�	gq&C���F�<avRO���OFj(��C}�$�.>E$��A$ l�	�!?; B  �Fa(� 1����c}L �񠱱0@t���E!���Dp0*��� h(@8�z���i#@0��E�$��4!1�  E@ DE�C1!�d� H#§!$B��<*A!����^f�		A� <tT$ DD���#@$&���|v�D�������<��XD�X:� 
f���	#��2O�nv�~]�r�DX��z��X��S��&��%SV1���!;Q��C��J�<�a����Hq6�������>.d>��\�X5Q���V���<��W���b,�f�H ��RN"ţ��*j܎�%��s_����q5�V�sμ>�����.�Lhfʈ�]_�+��_�,>���׌���y}\�tx$=ne��O�B�>W+��ֹ���U_!.���͒�� �)ab�#�����<6�J<X
�D�m�u4��N#������a E2�t�D �
 C	� e\8|d|X���� ���&��w�x	_�YE<��P� 4i�01�3��@U%Vb��a� E��XI�2!6���Ϗ�� 1tt <&����%���`t�)�8�����Á@�, H 0}�e�`��H�h B��BR�¡���5iBF1�   J�6(��:�8BH��؎��P@t< � ��
F!"���@$>>��!�@@p�AK��b�H*:�ń�=.(JD��GXc��B����̊`2�\�0={1��ZC}ۛ$:::,<�����I�8:��}��y��`6_��Fy�ҭ���ʼ5_��s�Y]�A��P\z���)�l��r3����WFx��
a����g�:k����WM	@  ��r@ .�,& ��@�1 	 ��04����͝���{�U��8��Y���0�'����iw2,���zu������� �   DE�H�N/M�؈l#|_J��Z��,��4W_�o�o}���H6�s�~
��fQ<��Q�G�:4��B�<A >�If��Ŝ{�����.�(� ��Z���D@����=: b��ʲC��� O�>a��QK�q���<� �g1<
eA�V�P^Yq��mm����qa!���	 8�\
� 9 � srI$�� dɡR�F�N ��11��Q$ �p ���1�d`H �J��	������:%8���@P<""&6 @�`�éQ'�
A	��q8/�!�p$
- �'B�"@hD8(�DLT��,��ó	�T����y�`�0D(1�b��N#�e��ûks���d>*�3���������xr�Vs������]!�t?0)�f~�,~���V�i/�y�gp�|�ݼ�|�ǩ��� ϐ�:�߉�.G�>���<�w�M06����P;=J���F  ��R����k� `0$ #��,M(�����m�5��P洦�}��ǥ��)�LdԊ�+�M٢i���Ri�w��4��P���`'�F-9�@8*��t��ݓ��r]ґ�ؙ��U���Hjd�����8&.ijl�~"�84���@�3������f��4_2�(橢�A=��IC�
�p��P�('FS���O�Jx��a�D�g�(���Ώg1 4�`����Q�ϡ���h�A��&42<r�㣡�@�{s( ���J����{��������@�$�0� �PP H|01 6G��z'�(��PA0�B;9���Q�C�`�R# #a$p�DPT�)��Ѱ���i�FB�"8h!4! �����#pA���$�` AI�
���RW�6�<�,5��Z#cvY�,���l�R�B�/����,�)rY&Q&�Ҁ�0x�����7|H�ޭ�N��A&N�1z�R� F�����\�0K�[vH#6,J�I�����22(�#�d�  `8vYl �}�u��l	�Aa ��<9�P�{³�V]Wg�W����Yu.�]P���i�T������N�W�j�:�O|gV�e_���x��d9�8o���m����Z�%3���=���8��;;�M���J��F�&ϲ�m� oPG���>Ky���st0��$ܤ���6���c�Y�f�<E�F{���z�C�Q�R���h_5_�P;x�� ���X�L�h�A~~ A ]�<6��&��3��
cY��s�T�A���CE.�0��F� p�Q
�A�됋`��5|�5R,�m\���6JT�$Aԁ���DD �T�Q�FH�,1�D�P(*Ga/��c+!�HTbH\(@��0Tt8. ��2$$d�c��0���BD�4>��"E��`"
 EɱX,�PB�����A>��}>�w���`0�!���@x 4��W��l�� ��\ %DC��h����P�C���n��/��C௥��^ ����2Y��!!AH;cD$�:� @��
���}�݂8���2" P ����?   �f�% ��H^���# \ �!��x8�މ�&����U?�r�ˊzG�6�J�2MpNK.���y���V�JQ��^�Sv�P��-Q&�6��؀�d��!@�>Q�NwȩO����/��^�3'&a���L����q6�cdo�R��_�r��1���yg�HV�@bS�F3����:����	F�,����ͤ����d@&w�%��|�9��Pf��<�[<��ë���r�@ �����e�a���y2d,D��i��X"0dqo�2�O
���K#Q�`8跎` 40
�n���:�b(���=����Q&�M��d�<JH4 �>�$)��Je4B
!�y�n8��y����f1> LIA���C�N
� ��#AE�@�vJ:(�#&�BD#T��L<���\`��CFE ��H.Q��$�Z��F��*p�{��j�`DS���`"��M�U���\N��ٍ6O��J�;��n��nt��� ���a@`X���ؔ�X04���#IQ2��xo�hk�Ԭ[<��2Rj�#��A���PYvYT$/߿B   �X
bp�p�__!�`W�s2>�g7��DO�fk�����j�5{�������|��H;��oX�a�1����u$���Hic7�`�^��� mL�S Ѻ9��DҘ�t�a=�d1&s5�3�k��<��F?�u�l���n�ӻ�\�n >�^��>��L�0�"�4��X�K I6!&@��j��D�f,16r��!   Q O��p��^d����U�L�� %��B=	<�?q'uΠ��Ǯ3G����!�s��x�5$8���s�~s�e�!(�ib� ��\����z���T�s!���C<I�s9�8�����U��[�f3�x+�x�[��|>�?x'!븋�q5?�.�]�p%'��*c�V��xZ��#<��xNc&�n���)I;���09����l!I��� �P��?)`c��x>�Q#N���+G�s�?��>�`��DJ�� Lr#�k��VJFC#�@�n����5B��b� ���������H��� �%� �l�����=��;@�
��f~�F*R��ƀ��v���n�W:#]��h?�]��Q�)�C)1zr�7��H:�K�D!G+:H$q�(�$)�B�Ul�`	<8� �#� :��8nJ�H  �D�9���k�1r~3V�*�e��~i�#~S���c����<��q������bOr{n�՟W��s�q'�j�;8����o���I=������@�JTg�}|�o���^7�pEr�0���� �"%y9�g��`3Z�����7�9�^��ޫU@���[����u&�ŖI�����T����ҽL�{|z���M���jn�c�K��G�?t�ߟ�/Л��|�pE��i�J����pR�DMl`4>�>]z{[��tȚ��?;��<��.�υ�$���):f^5�6�Μ���$�3���������|��T�W��w�v�9P����Ê]�t*j�TΚN����9e�F}����&�O��X�����Y�?Χ@hIUqq:3� t �,�h�n�i3G���>̥��8ߜe�cr�T��9�S��M��;̟���i5��L��|��r=9��e��F7��/��s��=�yXY'˗s\K�\����~_�$���U�������y���5��b�d1��s!��J���j��z�!�77���o x�A+(���M�V8v��af�Yp	K��D�3E0���  ����� �D �L:$m��Pp�����̂�Ɠ!L�z`V�E~j�f��-x�[�Y�)yK�����B8�n�D$0�C���(Y�d�A�$�I�R�F3&��c�S�B�(b��^����C��N."�(?����w�7���_�ڐ�d�����p�>\,���A�����x����C�`Q�c��:@�f������y�;	"�IL�jb�
��hRp"+� �&��뵞úE�^�Ն�Лsp��q<��9�m���=v��E�to0Y�d��H � 9^d @eo,��t���d���'���)�`E��.��X�0Uj�ک� @����F^w���:��vm�-U���E�(2/"��l�8IJVW�l�>�8Kjƪ.�s9O~�����
�q��oS��s�c��͉����'�@�@�3$N��1BBt�e���.fq1_f��ay?�g	�^�b.�0���|B�_�KT��@���$�tq�Nf��1�<>_�V�`Fh�9�,e+3�F'����̃��k�3h�� X��CA 9h%��39�O�|�f�������ׇ��!pd�@�0 |  �F@8 �L:8-)J	�Qy���Od~㵫�~q��ݘ���*T��chx�"_���p��,xU�M	�B�`�3�>���BD��L���$� !8����h`��t��3���P,�P,u���C�_&��ڣ_{G�+ƺ1��꧳�o6L2�1�wȍ#8�1�ζ&��O;)`��s�I�eQ�#N.Aߖ�i�2�8�bku��]�խ�9����h���<���M2F���N���,��'����:�;��Et��æ�P����,��
���()D!�h{�\Ιz�i��5�q��� ���2�&���|��2z9*��縓�Ṽ}oYN�y����my�Ap����z�Hs�����5���]3��f�g��2J�'��r\$���O��O'�p���>�-�%T @�3�B�m4��8�*.P�	j`\v1�@����E��JK��Ag-!&ÔQ���P#�B����d9Ҋ��id1��46�X�㌲�Qv�� <�vFɢrKI�o�`�d�p2k���s��x����F�� #�q�Ĩq��{
a9��\ a3�`�uܗg�AUQ,�H�Qg��)�8Q���O����B��j{��ӢW${��N��N'?�I
,"`3�9�4@��E�R�J�e;��H#!�(�I�&�%@�A
� @/��C������㠑t�o�y �t��J����'Ŋd�����u]8	�Y�Fw�C���\B�lVp�R0��49��Y��p���5!�����ӓwO��}6�^f���2��z�����ڷm։�[-���Ε煉�kz�톓�ι��Pok��Up�g�h*&�Tt�$F:)q}��R�6���1�$��&d}��s&��mp���0@6�b�F��e�����>ڨ��lӟ�Z�G�` ����qf�.js<Jx0��3���040�������q��Hy|F)m�~�\93���s�`�����$�!����X{�A�/&P(�s 0	�D'�n| ��F�Q��`0 6q4
&YrD J��@��h@8I0��d.�N^��;H�[<ֳ���(\� ?��l����\)����7�Cȩ�h��i���"r`0������|�(#��14d+��8:8 4 ��?�?�>̤C�EH`JLι�@���W��}����>}�u�K�~�Io��g��tpt����Qp�r#w�4��\�1�:��|l*�p0e�lc�"+ <CD7����\6 �Q���TE44�x"�#b;�}�l�Ԇ:�:޺v����C&k$n����=ܴ�;e?;�8��r�gy�����:]���3��S+ĴFgk�m<���8ʓ�"g�y�=�ۣ���(b�k�C/i�p�� �n��Hw�@�#��3�4������9s����|������r���`36�H�;O����'�:�1���Y92���M��[�f�|ƛ\�vr{��hb3�¬����qLI���(g���@ `ä���R	���0����4s�$��,h0�ce4��\?Zzg�Ҭ/�@�Xr�l�q�:f^���#�<ϊGg��Z5R�� ��3����XE�v��@a��|$E�,9t��a���^��YF?	�	0�� Dh`�4���b:sx
�8U���F\,vc�`&m���K2���J�d7qI�Hhd=y�᳍7�"*�،��@!Zct����q;>6��V(� %@(��� A@���u�=r�s7�7~���ā�ǭ���ez�Χ��|�]��KL����E���O�@�r3O0�����s乌6����ژǉ��h��<�p&�����V��~N�x>�f>�| �;y��È��8*�14t��K����M����8?ܾ�e�:����b����;��t�f�	��3�����S�iDI�*}4�&���m��e�2]�nz3�u�dvʘݔ�����/��t���@eH���
��4��;7���{c^0W���lԶ��mL�$�?k��eR��=/��iJ,����HI��ė��%���<"�m2�%�ם�>I��D~��>*ˋ�$ş�O/tkE�},1ȶ�d\�ןe��?�h���<�3�4�� E�p�ٓ2� e^�5G� <�t��̓魺���zN�K�q<i�ψ�"��}YF�km�C.*	J���D���WF���܃���N/�C\�O�#��έ젝���B��1�����1�T.�X\�=X��P�i�f^���,�,.��,$b;&�i�J��<���߸�]��SI� ��|�Ƙ�zRTAP �A��
���%�$$��K�<���k+�x?@f	  C@�� �� �����<��:=<�׹��
�$��zS�F}����޲������%?���D��:��ю�����%�����I�P�x�����|�6n�̙�|��|��� E���s����!�r
W����0��%8')>q: d|�Q .��_��w1��!}^��U񝊈H���zd��&��BӀ�IA����%��V�p�3L�B�f��HQb�d��_u"d�P��f@E�g(3�Ji��P���(+���s�C��Ovt���P�DǛ^�4|e��SK�g'�H�&J�4qdhvMꥄ�k���i�!��Hj(&O;-���f2� z�ܝ����o=K �hE;�_c��ZY�WO2�����4&��X�4N���<����ģj��虥��lN?�e�K*$����K�-����Қu"T1�}��`��btf*�F�빆�i����ALLv�D��I#��W�2T��i�A��:��e�@%�iF,��� P����4�����I��E�8�G��9�{��0��69n�|沃w�v�>ϑlb-q~��x��!��k�{�!G�� "��c-]H�TT �ʁ��m�9:b�u=F` �@  L:�6�7�q�
� ���0�A��aS���M�������ɩ�Mk�_�yJce�-�~��S�9Nf;'�0BN���9�����a0�Ȳ�7SgG��EB�TI��)|�VN�Z��]`\t   �
��i��@�:��q^{[{�ôj�^�:��61�M�c3(����tj=6 �Z���^�h�����K��MU�$�13��I; ҉�lτ�R8WY�P��K?��J 	1�*b�W�ֲ�y�K��K�.A%@>�uh��@��U�R���L�)%<qlrT�N�F�MT3�% ���f��������  �r﬉�f��Ҝy�w�"����jg��I�,��2	��:��t"���s���=װN�h�����]a�Y*P��^1܄HW8Fg��0!���uL���>�� K�d��qU�����$	y�O� l�-��C�x�w�c�${��y8�@"��9�f3���o<J�r���U�!�"��i'ǃ<A?����"?f-$HӍ��p�
�T�`(��� ~/%Ч�e!f�@�H�C)Q�H�Cnй��ɜ�O��8ϡ��E&B���ƾ_w���^z>��Ϯ���W�!�EJL"i� )x( ��qq� � @^�,�( ��) G����%��3�c$�w������ѱ��~K�����2,���"�0IʪPD����k	4��ݝ�D��K��8]L�!\0�RDА��0DBB� L	9�tE$-@Y����p��C�a��� ab�������%P@�A��� Wh@��z�P�
�>UR�N|\�	��A�ȤIbbPO/� >�������� ^mhL�B���J 
!W�)B88x]
O�H]��]��HJ�>
� 49 !lR��%�L��B4d�-��c�/p;��!̽��9E?`ݻ�>1`�.\v�n�k,Zȏ/�^�����nP���l 	  ��?|D��+Q�#�>2i�\�-���ZN�6*9��B$��<D��sNN���Y��"7W@�"I6q6{�P �Jb|�j�?������J�s��ⳆZ�GJr=
�Fͣ�"`,��+(A�@�  p{����x���; |?���� �?����~�?  �g��ੀs+_��� �}���{Ծ���~�K���q�( ����y��J�/�x���<:ebx�&O�DA!*.	��h�������F�AT,*D��m�B�(]8� ��0 `��:`�(�  9�s�
�����Pd:�?�Ї�Pf<Q�W��C��V
l��:O�!X��S�ҨԂ�%�EJ4�!��Q��"���6#n&.,A�e����Zj��$ޤ�$]H0�@f�jP@�PKI
$���H�����Q Gj�����*���Hb�a���/�z�j��i����и8$ɡ�SO
@� �SIC��h����Apaa�i� XS@� ���B+G�P�֠�B�)�Al�41>D�s����6�6��L�
YDbd%DRSXXx6�el&�� 9������bk[؝�x41�K��<~7��N)	��(#�AƁ#O�$*@ xZ��_</�똣]���0�.Ut���e
�
ɮ>�Sp� ���ha_��A=��	z��_�m� �KlW�b{�E�J�_�w%>�����-oc?7�X_��?t���+,%����S�\��p4q:����܅C�����J��F�T���Y�A�؄H���xQ�(��<=}�9���=���״��ӏ 	�ơ�x��� �4� 0> ����?PI=;����H��� �J��kIlՠ-���#��H>;	��ugS�
r`�Ĳ�Q�1��4R�64jp	0''��f�X���V��>�B(gU�٬�*��	����҄@��c�!� v��7s<*�B���лv	d�^��d�(�!�8
��ð9a
8�D�q\��(���W km����Q��R�A�ł�"�1E�?r%:�8P6C�A!�)��ь�/i*�8�a�(\W�QQ8�I ��)�P@��2Q��Pߏa;�a���f�#�E%�9�V�
EXX��1x�Ҁc#h��ȑ��:�r�`�Q$�WYE+v1C	g��R��C"� �D��и�R�o{�z#�t�ԕ��9��#I�RO�5�u�ɵ�#"bw��bg������;�|�6~A�����ܪ�y����񑼕��/w�/��T|S;�I�9֛�?s�<G��w��C��č|ϻ(Va�x�Y�������6Υ�*6 ��OQ.d/C0f��.�֨�BAH0�I���ivn'���B�>i݌�C`���>`�Yk9@� `���;� � @B��<���Q�@x�j�cjE2�ݗz��%��Xe
���wl5u ?���QhX�A��-� �<x��^�9��a!)����O]w��|�3�5,��xw�|��)���1L� I饁#��x�\��"B�U0�9���<�'(�,��q:�G�����߹��X��Ђ�W���f�`1�)|ĉ���l�e''ëy�"ge��LW�ˁ�@>g4?��$G�56�3����)�f��Ø�/��Yϱ����,*3r0��7TS��jxkqJw
k�A���}��a9�������*X�B�� ����a��o�p$+��g]a��c8��y�l�$a��P��/v-�.��2Y#�즣ٝ�͚���\����6��C�+g�<�p${��c��0pH�@-q�?������� �zZ���`(�� #�0 �	_P�C&���=��m;|��Ǣ�U`H@�q0e�~S|]�75�/��9��)��Rr�_]��Vz�m_�o�jM{���0����RHkQ�F4�f23`ǰ����
n�Zth�\�5Ĺ�O�1D��>�J�G��0�!H��L:�$���9|�
��x�0��͢��,���� C��I���V�+z@(h `h�B�Z~�]�!��<!L &���HDD��"���M� �=y�/96:���?.��9���\��|�ǡ���z�+�{x�[�����ܗd���9>B���${����%.g�.u̒�C�ԫ%c ������9�3y���=�kx�=����&=���_Ǚ��{�1w���ln�v���'����$��F\fw��~,v��=������oSaӈ�=u�A��(�	�,��0;i��d,��	:%��`d�/�M������+Ǳ�5R�3�?�vhf�f�\���� }�j�Oe��)}�9�;9�(�s�<9��=+������s?]��T�d��!�&�T��6�X~�U�pN��]&S�#Lcw�ez��y�}z_!�\�i�Ͳ��g���RW6���l�'���K�����\E�����8��������(d��d7 A�����4*)�J�^�E��iGg�[�T��7*��h!�h�jDJ�����*~[3��|�ם�m�/���ʞ�&��W��)��������R��2�x��UY�;���D�������Q<� <S9�[�@�!k�la=I$���i|�.���c���DC"�`�­�>�:@��<6>��/h;r�Ю�t��08fO�) 0@�(}x��@>��v�����(>aJ��$IpZ7	i�!�)��k��g�|���J�J^k}MgG6��"�s(e6�,��
QK�[�<'�G�� F�f�I�8tL�W*~��|}�U� -cd�� N,;��$���C�a�n�1�UEl�����9;��_�zɮ���������Z��Ŕ@���P0��FB_��u
R�"�-�C����ٗ7��"�܂J����Tb>{�(7� Èz1/�f�ȉ97�b`C�螩�|��\Q�#g��9I��m�
�������˴p��L�Z���Y��""��'�EN?��n���&鑝�i��]��+��A���oԥ�f� ��#�_��"N������됝��V�{�#�s�n��� �as�PB&Ƚ~\�{'�q���.�6z)%z2(UbI�����	Sf
��ۏ�щ9۹�Mu�=Cw-ZУ�.�J��=@K oM�g�wF�p��������f�����V�]���*I:��'�C�6F[�
�C�!N:'����M�*:��I�ad23�h�s�d��H~K?e�s"�3}�����L:�{[
��<(��Bダ`h~AќL�����@PEY�|�@B$���Ň �`��\Mۈ�cq��SDC�#�H۲V@W"�N#C�,r&���>d�1x�]
��   Eu��TӍ�b�1,*/�L(uz>k)֒�g+�2�����*S"����5�v�0��ˇBEcF� ,��3H�6�׎��Й�4glgG��:]^}���pn�7cy�۸�Zx����+(A�z�����e&ȱ\�%���vh�j��g,u��b^�|
�x��)	d's3�r?i��<�Z����0@SD�\�K�}�pJ}N�E��d���V`��;O�:��a�z�qN�c�eX]�q	ג��?�8��\ٙ󁸉�Xh���ӽ븼f�9e>dp��e��i�^�z7����kgw?��u-�dֺ�J}���D��'Ƴ>��c�q%I)@'9O@^�bA  �0�L��hL�s�w��v�ݎf� -�"k`�{d���q ��A�V��
�S�!�/-�����W���V�ݖZ��O��C�G �Z�P�
�r!M�N�.9|b���Ke"b@䘉�.[Y
!@` ��	���G���#@���s;`
{C$&LTǤ�S��T4�����e  ؜�'��M���(��T�-4 	�>�$����g�Բ>aQ!�� v�h�Cg+�G{�M������	�wX(�u>)*)��@��`a�q��-,<��x*�!����
�i������P�T��|ıh� Q���uHM/s���|H<��#$N��Q��T�I��c32!���h�Bn��D�)��%���H��Gi�Kg?��!��-V�؏y����/gA�X�]�����-\Ծ"��3��˞̒�)N �����Y�L��Z.�}���G�p�!0<��wޣH��?/�|׆��.� ����%�<BQ�\��K��ʬ��)�?N�ݥ�?���(�
�M�N����S�U���O|�H��p?���hn�q��2R�aS#59����@���H.y�r)���L3����K�mj�f�Tp��/�:~��ߝ�}�?N�:���bR�����HyShM��R�����A�D2�ЖШ!A��!p`| � ��C��C�d�a��*Y0%��G�^q� �
1�������иxP@~9���h������sҍ�X�Òci�9|�R�|J����7i����n��h��T��^�w���V����b6g߿yt�b�$y��(|P��وM>�a�$daG����'Lc�w��� XR��_�њ��WŒ�t�k��*o���c�����И�n�BK�Oy�NhP�
��M5�6��1	giǃ�	���[2Ô�ۻ�{���C8�'�G=���l'�>$���3��|��f������%���3�V$�sV1���5�!A� ����?�[fo��E��3d�����խ�F��+O�<�����D�#  �86�p?�LE�:Nb4��Y�����b���ԛ�0&�q��y&s]��9�ʹ�!��e���՜�<y�(+X@�w�����,%�|W�8��\�%��zܼe>��b���pi��(.�7�8�.�@�������K�v�j�[�#huO������uS~�{��31G�G���Ȼ�&>�hQ�l�F�_�;p
�	"Ā!��X0ي�[�(��q�O� 0��zNE����F pHᑠ���5u���RA ���<���y�{���9O�w�	�j%��^6������8�
~�ގ�l���E�忷	�D%�uDb�$F�d�����ã��ʽ��FP(���Q�w=|@\(�)o���uTtSCR*�}��a`��PB　X���\,��Ԓ�qo�_��!�� ��(��S�9�Pt �A� ~��~R�tsB���e�s�~f�B Tb�a�&	�����Q��\$FJa,g�5�' 7`� '% Ab
��8��zT�'��0��2F��$�F1�ӌ��dW�R�6И9������D�{��L:���,�NX.b�w��Q��|��hg2:[Y `����Y����t0�p���|�|���qj���j|Nb����[Q:�9�$K�c �	xl L���H���$Y�Y�, ���Gf%�2o�<�������L�@[9��8�xԱ	*x���(�,`�����J`� ���La<_���t���&38�-d����"uo�Qɑ�B<�V*��9�]�����.��Lg�~�#E�7��,�Y�,^�`���,�ݷ�)q�b�qK�����|�v40x,b,�Sf?�b��`$^dsX�T�bǺKt�7�p�R�r���dd��=�P��s������p:{Qf	m��#A �xdR�BnWO�D?	O���W�.N�^�ډ  ��ɾg?N
�?�   �	��	u�������4{����-��c1)f��������ގ��(���[
�2IL�=)X$<8�~��	��$*̹mBtu�UCm��&�N� =4�M�N�<ya`"����Ngrzܲ���G���A��UQMV!6<4���[Zk�5�[�����Q� Qt(L��	Q�%����3�7�E�����;��ܷW ,�" %8 ���k��X�U����d�)_��`�����k�|��VoY�d ���AIN����$J�Z����B��+���ְ�v���Dz������> z�d�8�~`a��_8���V�)���߹�X�0���V����Al�p_�0�UTS�Rz�i�0īN}I��,Aã������y̞,��aBt�B��� ��!�D �&��ב��	�ɡ@��`�"H��� XX��@0�yX(�H\�����Pq����GHI%�%����!F�N�!�����x�)�@��SFF%F+Gc����`<h,�D������aZ(��

�4�JD( ��B����P�p �p4��,�<���R#�@0�dL	��,��Դg��ѯ��3��	<Z�fq�N @&��Q�ﴐ	�    ����)_�o��x��1������iR"G3�ز�h��n(����� 9��D�p �ذ��rłJ8X�ԃS�K�;����9A��6!0�;LLdh|<��K_���zI�d.����prU`�p1�{� ,��-�t������y*-��s���\2H��AÅ&� !L�O`^��c9�|�K�_b?��+�#�����a��k��zݢ"%���sM��[�������v����;���P�`����bC�c����!@�!�[��*"L,tZ(`R�B	�l�`�AT�#jK�(�����Pd�01:	[�<>�0���a`�'D�<:Az	`�`� � �f
i�0@  �r�0h�$�aƁ�D�}�y�p`T �� ��(c!ba�z��a1q!`\h$
�<y&�牑BG3�~��k��%"���QE�<Q,*4."2ȸ;� ����D�(�B3�2�P�`�v|$< I����	B�X������K�CPy�
¨pD��^��B�(ܦ�<�I���?����f�]N3#ޙ�W�  $	a�@�  `P   ��J  ��8f�Q��k�v�I"a̤;w5���@M P�U�JiP�uլ�>��g 4:1�ƠDi0~�2a���O�:}j�̶��Q��K�dJ�Fą�uULj�
�t�pS�������N3= ┱L�">I|<2D��Q�>.f���k���_��o��yu�$&��Fh#��t��AFa'�Id?��	.q�es�~r���W!^d��ǅGŇ'���*��1��«=�C�N� q3�nj���t�kuQ���� < D� e �D	�O�2ā ��@!M	�
�cX4x����1�D
� Y�䌃K�~�c���!0�F �������%4l��� L�0q�>�F%E���a(�h�x���A   @���D�!D�M
�&,
E���S�'" ��c� �Zp���)�"L$Z9�O��'��  H�x�` R�$����@� �AOK@(��AȈ�(x�PІ������� ��`B�K襖	� ��``�ö69	��f4<fΡaI�ܞ#���0���Q��n_����:�O����t��TYĪ	@"�H�6�  �@$�   @ >�,e�H6@��q˝�'�`GU�����`��nM㋶6Yˬ~\ĉH,��X�ׇ8\G�@�p[�gr�C��x�c���q�{���ґ���g��Q�A�ǉ�� ����j_����8Ig�]Ǻ� ���r1�1�/���|�i0���'@. ��ܚ��/����\��#�7�O��S��l��\!&�/���!��gCo�e��������>-�c�	z7��鼒�$b��0�D���}��S���R�MO�x�PXB���!r�-i�>~&��3���
�664"���E��
�`فM� **IR���aPA�}X(LlD�)�L�H�"�]0e`<�D\���(��x� dtT$<�� �CU<4��H"�mj�ħ�0�e�*pq������"��	�����
]�`� �������/&���Ѓ�G5eh 6"��H0 �f,;�PHPt� C/��$�`�`�@��#Ac�AS"����p�рpd�D�3 �D�������I�(*1 �y,0x"�CQ� �E�jc����@���c,B�X0  ��/e�V$K#\^�?+3'�����,b�D"H&���	�H&�q�<RC z�.&Ij�mxb}��ʓq|C�[J�6RKKV�MȾ�L��9�d�~<�y�,bO�p̦�����ru��m�Kd_�����ǣ�_��//*�O�<!Fs&�|G��:�1�[�v��w�o�zYLԻ�X{�p��Zą�qH|˰^�J�B�Ϭ�x���V��`^f��V�W���uz�\$�\����v����ѣۭ��̙���½s����|�eη�\M�yq?���&�;�ުgu����4�(bq�c�>?�]V�����)���� �=#�a��V+�^-S�04aLt��A��@ 0a�I�#��6xdh06��� @4d|�&��D������&e#p
] E �`���EDÀ#J�0UP�$�d0�v�J*�)a��aƄ�@uhd 	�����*�р "���@8"�0 �$O�S���Q�����c�h�ă2&�0�ܛ���F�A�C�H�1���
��p 8�d1 (p��,,� XJ�� �D4� �":�e��C@G!�dq����(+��. �*Qd��H���B��3�j�X3n�� "���k���a/
�ŋ @  `&/��@H�!ت�ex�%����YՖݩ�a�$K��28��2��P5,��)�����N�������Rh��$��[��^�0����y*�gE����C�:�-�j�o���>?e0���5��U��jiE�����z�o��|:�o�gOⶾY����+�Ѓܯ$s���0P󭉳�� �p1�~�4�/�w#�rC.��yc�8����_%�o���~%՜�w��
�~.����	Nt��\��������kk���ϵZS���y_E5��1K����i��Df'i/�:�|�A����&����[B$ٺw#.. �*����f�F�	���A->%R��aC��%K�H�[@�$G�  �H�Q�#F��n�(*e�q1�:Eh��D�& �Dq(�0�T��QRXhP�1��@�������@	� �"@%J5�UX0�C�D�j�$$h
8(؈�X�c�U	�e~�exX|,�� ���$���2A0��Gכ��D�j
��yX\D< �2lh��� �`L����`c@�(�t92H D|h�y!dlhEDx5��	�G��"�Dƣ�> ��e�B�`#-���P$]���'�X���  0&�5 �$�@ 
"���{�yg��yUi�u�9j�m�,>4,Nk$|��;��I}~\ŵĹ� e��s��*��)\�3�&˹09 ���gs?���=m9Wq����'ϵ\H#'��~�ڠ��3W�>��r���z��5�٫gϼ�����i�~X����y�^��%�8�8��g����M��y�\�%����ԧU��m��;����~#:�qk�+��-��������|gs5�������n����IzK۬��������~ЎJVh/�L���ÊF� 2�ކqc�1��<
D11�����'�*�s^�D��;���B��`b�'���ہ�!B�(h�CE E}SI�!��UAD�,�7��¢�c��@〩d;q`oA@|8ll8��@C0�K��Ł�A��@C@���O��g�]�[@:[6	qh&��Ii�.�Q;�T�H�b�� "DA`RF����L>�?��Y��
1��J�4�1:�C���!���v��[@D� 5�4����K߯���_�yQ��V����?� �d&;�g��}�9�$��"=�O[>n�Bx�f ��Ak(�s���Y>���~m�g�_Ay)����-��a�y���n�k1�(�qc��K����>�@�
�6q�^�_C\�^D�v1Fo�bW7p&	n�n
ЗB�
���3�9�ۑ���q�. `�r/�ퟵ�c�zӺD#m���꣪��4��<8ʴr�'��CM+�r���C��כ`�&����_�q�F9)F3w���q�+%������~����=�4
��_&D(�\��Ǚа}Le�D�������K�1T�=/WCjQ�p��yY.����P̉�����`���A'��:`B8����"�CQ�P9d����E'�%� D��Cl����N�p�rH&qM��J"$�ɛD������H��>�P@|<0�ǈ|& 
�24�9lDd EX\<dT���3"O࿝�0�#@��nN�����3�
M(ԩ�ɢⓣ�TtI�IP���A����<\z���X<�2�-�W�A  66"Q�5"�~�spp0�8�h���c��k����P�����0�߃���ݻ�"-t��������B���"o�|��f|`8��򘖨k�O�����z���9�p�^@�f�=�3����y�]�4���s�p!�c�O��2�4p%���?��
n���	�2� 4r3gA9Eb\�.�mը���z㻽��/��E�.}3�U\�� *���s%<g0��i�l�{sa�
�ҕ��oR��@��W�#�� �(<���S�N !�B�b!���B�K��VZ}Th8�2��j�$o		R"����,E��(���"�,��	P��ɀ�2�o�p9�0��(0��ǌHQ��JH�*L�Y�L=�9�;�-#Y�9*��C!��ă���`�c`��G�\dlldl$4�YL�J$�(Є��� ؈�����AG��<țf�<(C��I@�qAt2B��HJh���C�P��$>��K�H��rF�9�`�"REžF��A8 >�"�f(�DU�NF�X"lg���t��������ߪ����ܔt�=�77o�~𔵖;��u	[F'p!��rJ�'��_�T'�^Tp}���e/��vUܐ�F~ű(l�s��i'Ƶ\�	;��Si�<�gƲ`���G΂�ɋ���ݮ�A,�suAwO�i��[����󢸁�XC	��(���˟h�|.�_t%TU�-&�"v�X<'��c����(���Q�I+�>�&�>t.����ʂp��CAhY#p��0{��ٟ�\���#�~dI��(
�.�}lh <�������j	XU��6����X ����
-x8��'���h��P��vb(0�⑁;1�ł�w��ǀˋ�R@F�����D] , �Ń 0`� �XDh$���`Ć���b$���:�0Bb�x,d��;�k���7�G�e�؎$Ɗ�4:�ȍ�Ţ�/���^�C㭬��{y�#�|�_��S���|�Gx���@�B�P�5B�w�����~ l��<�ó�;�'�>4'��[�o9֋I���7���C�Grʎ������)���D�����k�s6Oх=d�=��ƫz'���%�E������K��Jne�I�����,&��<N?fL�.��x���nR���,n%��4�����&(�s��	���v�wO"��p �&r�B��s����|����[��s|����������j�# J��(ҡc /��j a��0��ܚDΤ�&�z�hq�$�5���ʈ)>Dt���
�˚\�t��V ���c1�DPY2x�H`�p���\�^�����5,4:&q�D�=H.g	/�:�,�J#�Q�����@L9���^�O��Z������#�	�P ����Ãc�~
�&J
� #�s �C0��QK%)��lF����B�@���g�THA)sw���2��z������o�N�I�wRV�~���4r�v�ɛy�#���'��x����͋�\c̀U����a�Bz� s;��`|( t�v�gOڨ�RNc`|\X((����JH8�粈v:(�+n^��QT�����J. � iй�[Ά�k�o���w8���Ă���H*�0�)j��s�P�#���+��O�E��U�:Йj`H!+�64��p�Ea���M �&�R�������Ȑ1)�<�_���*��/ fttB�C����	���u����3���N�ͳ#O��Z�]I�˂���I����@��}J�3w��&/S��L�7cB�#��J�Qp� ������Ig�ċ�0"-��g���e�䫤�*s�J*/�O^@��a>FDIb�xhL9`A�LG�=��El\lh���YDĥ�D��0@||6#�˦�� Yx20220����
���"K+�^j�d
�K���zv 
a2��X����?3�M�'A?�����#�L'[hd	c��a􁸂g ��/�ekP�*/����yn3aL�2�q̯�
 �� B1�A����o6RG���%xlX`<���@0I
�0P��*\1rBd���U�� ���N�A�Q��>�F���ȵ6�u�7I��1�5	��+A ��@�� �`1a��{�`b�(��u^�<"1�a��M�����(�SA/a0a
`\t(` ��~�aP&����P�k%&�.W�LJɄ�������M��`���4�1�X�Z���m�"D���M���N��#/=�y-ee�õ����S�3�(|�7�h��<�wk���:W�(����h�9W���W&KO{ �>[���8��fKa���pN=���rrC����R;@H��g��Iߠ���H��*G���X��@B�����y&{.��:=�4:a�3���h0`d���{��`����P�����x��IR��Оc ���,uӳh@`+I��%�=#�"1���@���� �)b��<w�r!�I2���B���l��8H�Bf���Ha�/��f��AH���L�g���܂a �@|| hw<C�� 0@\��aH� Kꠑ)A�!�tL��h@
}�	K V�C�B�]��&�.�;2 �A ���B+������'�&��Tuۡ
�21�d�{6F$K�~b  �O�s�� �D�\Ї�� eՉܣQMO(|H� (��@$�P`$��wCx�ë�#0dL�a'���b����Ar숍��V�`�7�Id�NVR������yv��yo̻�����:ͳJY<2��t,iفy�-�����9fN^G�6LJ3�If;�.&���uݩ�zT�pT3�%|Ɓ�J�i�*�ӎ�(V�cM�<C ��^4ttz��2L"j(@�J��K��,���)����� �x����z���Q�:&0�,.>#ec"1L�1�( > �Qt���+���\��^T�`F�)Gb<�1p���'�D�$����c:X�s\�`�҆�NtB,4tr0	\�"3Q饑[h�G�E��f|nb�1�6]V���3>  �#�������0�Й�
&S@�=t0Q%�}x\DX���7��'FN�埔�$Z]U��!ރ"E���Q�ͩĹ�@WA���eB�fAd���e��a0�`��,���b�1aq��\ ��GV[��� ld1��Q��s����td܄A'�-jMi<��a!N��DZ�>x�٪4 �ɼD�oهY<�A�O�v8q�&h7*a�"l?�u�~b���	
��D���K(W./�orި��6N�<N�
v�3
�^lB䡘B7q$28DtH��L��>�	R��%�Z�=ZYM���RÆ���	����O0�<�D�h�e�ܮ�e�Af(
  �4`��t��{.�y��6�����/y?Nt��k���yEr:�D��x�W����Z6���MM�<�^�sF���`��$�'��$dr|D���p�c7�٠�X"g�j3/�຦;^�4f�]�ɘ�/� J?�7X�a4���f	etn���y���&���>����|�k�A��_GR�`�X��O���
��3@$NV�M��BQi��$��NJʘp|0q��Ġ�K���9���έ�ߚ[� �W�4%!����	�=3���B�Ң��:�	�������_i��"r7N^���.�������˅�k1W�-���~������Nx,O�������d~=,���e�T�y~��?u�U_^����_����s��|��G"��T.5�b�Y�����	���O�Ma;l>x�D"�G�r?7�*T!P����W�z�䚺����N������ҷ3&Y�c�4��&�Ui��A�	��B��6��s�:E�ILǨC�	t�^B�[��?�i� "�g�F��;�����.� �e�1�#RM�7�L=�C������7�Mm,c��	������ �r>�q7�$����5ܓ����ܭg2�zr ���N^�:��v�t�
����@XTP'Νɇ�g9(���,�u���h�8�e���!�Z��fn#E��"���QnU�P��<�<��9�����,��^¤e���`Z�_#�y����(�]��[�hAf�{���yh�~���<���~=�D�G������(�?d�')y7��&&�N^Mt@����J�W��$���~Q�4cJY�%�T��S��9<����j3��o��b���{W?	� 9����nc��
`�a6*#���a3�a��tP��@P��
 0��J�6@��B$ rnA<���P��b+Z-%�A� [��"�l�@�MV&a�e����(� H��K����k��A��r����Z͘`F�B061
 ��I���L� ���vv���C�*�K�>��T�6-c�׌IgJ��>F�H�dy�y�Hl�\��6R(lb#<B�?q����K��`�$�	�*��8�ಘ}�v��P
��g9|�,Dv9�Ỏ���������}6�b�ٻzoun�����}ޭ9��Cm��Q�6/�CsM����{���e��S�ς>����cd��;�K�a���]�1(��4Ҭ$��K"
�8���O�\�]2kc��@������s�tI�v���qC�<�4,V�$�a�pM��Q�$����}K� ��4T8����	*א-'�@��6�<Lh ���j8~ �\
��0�An�&� ��D��8..
"�A���2"3��R�Dt��T0 �N��c#ՌAFP�@�I�P@�H@� �A��e���G������Ѩ����� &�����Q3:�0��J� ����vN�X6sKh�F�b>I�<ÿg�Y��4�,�@  �7�����a }� ��B`@`���]{.�f�7bS�=�#��a^�����L�����h� ��ʽ���ˁ�!\f�,SP�!� &�m-o�:��!���R�g���{�``s5�mbdYG52I���%�A�i��;�<3����gR=2�Ǘ�i%:��.{��h��)s��%�a'x3��V(!
���i�缟"��
P�8`bLE�u&\�ᛶ�2�ES�m�uZx*@���hV� �E�T4Ƙ�I0�vT&6:<;(S� ӱB$O8 ٨�v'�.J�NI	,9E����$a�"�%\�$�Ff
p�l"�M[H��d�d�����:�	p dYCqj��hbF7y(
�*��%e�N"v�2��$9$uj,g+�0b*��� | e������SZP�W����U�Kp�S[���a�엋����X-o����)��u��z�k�ݪGdt��w���D����X��nְw^���!���J�'o���pXH����*��D��5�0]y��h��/C���;�gz`��|�0p�?g][挓��^{�]|v&'���]z�:{`�ȹ|�oy�%p8�/��E���P�L��Um\ ��R��%*�u��,�#1ȵu�����c��cƱ?���Η觉ap��G`y�"
�rZ��V��
��\Ƀ��
�����:`ƙ"��*�]�(�� U�P�<�<�\_�2���i�8��eD�D��w��� 	T�h�9�L&h?�ۄ��:
ɂ�aS��2R:�� ��y�4e%:#d�%��&fS"'Om��� ���B�� �so`���]+������,R����zJ}{�^E�]j�A�b_��-�G�=�}m�+�O�	٭�M���).\�JH�+�8�^   $���5���e5��`m�}3�}#]뭥���*XtCx�Q]�ߺ�1�I��~�󚥣xgf�{�3���f2�F����*���p=/ �G#%(�%A7.��-]4!`X (��	����B ��-X&�#a��(et� +�b*��P�l�� �>�&D�Y�@��0�ŬfwҬe.6�
f#�TЈE?2��a{��u�Y�xl;فD B�nf�9�+�x�|�h*X�V0�qh�b8,*d�����
*>6�M�4LT|Tbԩ� IS� h4c��F�||\"   D!�R��ȭK����0��oFP��EkU*�D`���r��e��E�x��a2���t�V%�C\�y�}���wc�bOr�%R�DY\Q�ʈ� �1A���U�wM��/{�6��]�k AM���VG�&��)t�
z$�k�Z�{�0�;#��{�"�^f\�����C�ǆ�2����%I/�  ��F�����`�
4T0�b�T�0���Y��W5P�$�A'&qL��&�aS�b���FZd��q0��D/x0"���	��h4��S��ɲ�)h0��膐a�3������^r̤�uH(�X����I!P�N��:��	 ED�^8��!I�V��D��O>#H�a�0@ P�p�B����hb/�m�]?#P}�dVد��]��+t�0�w���ۻ�A�Kr�V��)�����y��[){��R��B	�jL杼hL � ���8�֝oKiʋ�IS�+�' ����H �E��i����ʹQ�cwr��؜l�<!����1D�əAϣ*p
% 
��e�A�1�
BB10qAL�'���#j�!, �4@	9 ޴љ	���1J �  t�*���"��84P��uT��Q�3D!0���A"t  	`Bf?��2W�_�~���O�����m��U�Ai�|�����G��R�Ʒr^�ޑ�#��=ٻ`�m
)A�̥��J�2<�a)�`��꣓L�`a����x���s�X�Ž�?aap�P��5G�F�Å�A�����al$l<<8��%��_u�U�m���k�y�1�+tR�'O 
��{�R��K+ߏ���ğ�ġ�i�~P$��C��~2�]�(���C���������pr�n
���~��	�zGw��
[k��9��0B:Y��� 48���{!����q��E�|��B�}\C�!�e|"J�   ��RY^�8Y㒉41��a��P(6|y��AD<���	"8�:>j�`����H(S%FF �   AG��!0���!B��<��߶�𶩿mfo��9U�?�f&9�j۝�˼�_S��V7/0��8�QĆ'J�x�H1F]) �D�;�py�!n��t!�I�O
���E�I�IT�`����-�B�a���s�� �}��DC �	ҟ�8`��O�@w%�� �:  @��I�.��@#�\ �4�0�S*��3��&`Cj( �kƤ�,1&�Qw���)�>�� &	lx�P^�w��(��X���S���{�<(�8
CC���"M�*�� ���3IDb`�L|A�p�Q lG�[�r���V��8;��X *,�cɴӓ]��hԏn&0�D/��PY�A�+H�[N���S��:��lg"�r�R�
���F%��H�D
�L�4! .1�S
e*�N�J�R���/���d{yԜe(�q�֡�2%8rD��2���b���y���6��\�2��� BLH=�����,��b�F�B�H� T$���̳̘�5�B�CQg��G"� ��G��!Z~�^H~�Og��N!&��.���=o

����@@�����Ԡ�`�� A@"8
!>����@�:u���"�2A��ݙ;��3Ez��R�D�ְ�x�W	�n �"N�K�I�U�S�� ���q�u�\��ID��6e��dj8��[C��9������q��l���mr8�9�	l���{.��!v�Jw^���&�HfC�5�tw�!G���G�G�^z�����Cvʤ�I��4v؛�{{������J,�v�I�3��y�=��e ��բ�쨻31m��Z+�g(�A`0   ���@4(����52�5"(�HB���A8uF��r�i�J �ȁ�a�a@D�y��A8�hX�(T@� "I$��
:���@ �D��`b#�Lx4<�И�h$���֢u�ɶw��l��d(<
��P�h�-Z8��HR��i�8�qܕY���3�.hƳ�vQ�v-���I�J"��.M������.N�*�9�${q4k`�c�`p��!LN�E��^��;��\��=3s�|H�z13no$BN�n��߷���{3�q"������<������!���:�I�������2Sٝ{��i����OI^�,��?ex�g@���� �%	  `8�a���a��Š s��9�D ��r�׻�"�N3.$��������y80b$�T��c�b @e\�4�L�61�(�( �bS�a�Lx|�h xʀ�Gm�g�<i��2���� #R��lW��2�Tg&iy����8�=PYUW�����gr�n;�� y��W�G�d��&��ñ�zX�ٟ�YH����A4b|���M-�33z�f=��t�R�^��\��d[�td�'&%�%mջ�^�Z�\�f�X���ݭp�,�BR!P���~�
 R��iS61h���I����Q]���Lv��駞�;�@���@0�D�e�2�� C��ٗ�  �9d`�5  ��!u����(��=oY*p(u4�! ��B3���q�0Ap ����J#�I�ʄ�&���AB��|�ճ3
�(�]��GGB!B�G�VF
H|�_u��9$h`-�$H�(�'I���N�I�vEF��.� l8ڨƤ��#L�$::q5��H�i�e<+ɱ����4��#Y˽T2xm�����) ��ɶ��r��
��V�B�5t���T�7{�bJ!����H$~�~��xc�h�����)��/˻"'���5���)�� /��f�	�@Q�<������!�  �q� �N1$M A����]�10@��u�[�$���8����f �,���i$%#�O�����B��� L|��F�H�;sz�Û"@I���.!@�4��A�Y/�3�f,�PB%�et�8���L�y�Y�h�*��p ���T�rƑ%H�2�(���(��B?����MT�k�pha� p96�Γz�`E���6*r�99C�`��(8e<0s�pp���V��TK9el*�����I 	S5�eL�4#����� H��ԕn��?�i	DA@��B@ �൯�#L�0��Eȕa����	  � -��|0L8��n�;(�&�5�P ��`� ��Zfb��.�(���μ��E��m�����������O�9�a�_t���}2D)@A�b��l�$��8#d���0D������D��C.
5R�1'
�@�If
`�c���C ѡ04SF��6���K��d�J9��Z���Ԯ=/G.k�ab��~l���M�Nv�hg/
������{v �CH1��LF��Ff ����,��(��=j_x?����R>/�՟�����?�sQ��!����n���w?ߤ����ۺ�;���r����>�f9�ذ������}�x����l�����߯Oکy���=2�H������~�8�<�7	�T�G�!���@=�Dy��DO������,�b'�h�+=�r���[�����{Z��Q9i��L[�Mۯ���Xę�Y���v�.�v�%�Dݼ�y��]�Wz?��5yߙ��F���@#���%��rɆ@4���k�d�@D��ǁ9�9|,��e��{ ']b)�+��ݮ�;�n<n��n�'|_�;�Z����~�����W(�����R0 ����
B�T�2<[���� �D�80 �,e�-BR��g>��"'���p3\�RD��@4 ����
  �M<���+-��.G���HW �M�?�<��V������:�`	��M��f��Ets%ϒ�\�p�٨$ CLXhJG�����nU]��1"G��S�fg�E�#xi���O�4k��nڑXϕ�l��(�pY�1�����$o#R����Ԑ�"
$O�1��a)#B㳑	�؃�TRE/��ro3�e�yO��m�XX�x884��jT��c$Ǉ42�w�f?^Dc'����)4�%A6I�.������$E��G���H���MH�Ic��;�H   �q� ^N��)��/)j�TptF��,�~�G����:r��~�璤
]0a(��h<l
 � E �l�I �¡� T1Q� D��!0L(�6�PT0%�	�h����hH"0�
gʨ���O&WO�k�0oT�ǒSgWf&O�"�s%��������M��&>H�1�F�A�LV�kn��Í���<&.�8��Hy't�KG������+��V�+0k�
+��lg<<96��f��t�{q
sب���*xL �c=N�k$FY�z`FC�n����50v����O�N�SC+��sym�4f2�
��>��!&���m�gn%1mg#m��³8�|+�PP��3��t�߱��ЙHw0#��(g�9�*��'a��?�d�=5s
l갍i8h,��\`��λ���ɯ&$�D @ ��
y컆	
`�`�4H	g��ax�I=m*->�e�=���<]D�ݷ��CQ�)܃��c@Z	G=81`@ (h4l]�D�G�u4r*��`'	�����8q��P�Is4�Ǩ�,>U0M�����0�CC����b��2b Q�?<�j>c��92��:R飨��Nf�0ȧ��a܈�Q�r5�q*�A�ic16r1~N�#Y˕!@0 ��E:�7�-��l�_��;Ȓ,��Bqȩ�g+��A����N�I���0y"}fp[���,��S�����!ʀZ1����B`l;MDn����/2��f5��w��N�a��4b<���d6E���'�vr�3�Y$p���do4�� �c�R��A,�ﱆԛ�a&���j� ��G��>�{X���j�"A���3�]�m�9Ԡ��	��g7"���%����S�>���5`V!��)�s$q�#�	��'ػ����z^ޣ���tRפOW�g�
^���������\f2��9�I#Hp�%d��f�˪o%��h��y�鬠�:'2D��	Y�������!� T�L{�OS��\�*�!����
�>4r1q���y�E�N��e�=4��#�O/epj�p���0� @8P��KV+�@���K3a�����2��S��<Ϟ�<�,dX]C�1 A��A����߈ٍؔ,Cؘi[�i$Ll��@Ǆ��-��;i��a�i��!J1"����c#M �ɾ��Lo�鵑ĂOu|���8����F4�;�֧�!�ɓ���D�h%�2�SN�W�,C�8 [��q<� ����5�I���_OD�   �+�;f� $	b
���t_�������ґY��[�nJO;�yb/����u	a�C���I]j��6���(�Q|�7�sY�ǻ�Mu��V��9��c�sޅ����N���R���$�z��#�1�<�	������S�n�e}\s�FX�%@����`p$:.6S��@!�X��Lw����1e(#��)�\ƭ��'i�[�#�<����<E�0�Ht�� @~�Wk���M:�����h��M�F�k�y()��p(����yO3D�6a�h��L�f2��EL�񺕚SS�R�$�$��Q�F%� >I�dt�T��cⴍ�\�Nډؘ��I�lE���Â� \b��	ͩJ@�����Cpq�R�t����$�TJ�gx��X�ܕ`T$.*6�F���_M�}��~�=<�� ���wY ��x��c��O��A3���O�y����ȘW��쾗��M|���5\ٽ
�y/�iE�M���#�̷\����p'�b_�l�Ï��;8�w��M����*>E�Z�itq;��0�Ӵ�ߊ�K��p�+�Yo��?�|�M������naGpľ݀���CG0eD(`�bt�`�b��g�=~����鹌 �G��^$M���B�a1;��]�H\|l0�p�b0q����܉�	F�+�"��s#�6ۧ4����E�PA�AX0<2����E�	��EW	�h�����N�f�!�A�#�h?0.1�:!L�X�]�a��tk��&�m;e�����@�1$��YdD(�(SG4Ud ���*l�P�J�I �STF�*�r#Ba���!�`�c� �	ͯ&�*� �`�q�*�#@ j`*���)!�:EfH�����a��z��AYz�[�w復s"���(���-\��ϯ�.����<5��5��|��������H�����o������K���<�� ���!��Gi�G0���W���P�0�g��\�}��&�p���O`ظ�@ ���k�<
$���U��'K�b�M4��,zi�D���@t��6���ᬃ���(@\�Pz�(P0q1���K4	ݫd�i�}F(>��M�ܲF[�<q�а0��0�$���
G�"lG�F$�@h{��F�Y�N��&�r"m��4��'L/q���SM�$��eL`�.b!���H������@(0Gl{	"�N5l���XDаH�K�l����l��^'�NB���Z��'�������2�.Q<~5ѳ������ߙi��� ��໦4�XP��p�3z�;�s���H����]g��+ ��g
Wq*� �B��Q8�ml��\	C���s.����_1�#D�*`42|��c���d�p��E�
k} �-<ɹ���;����\�&��1�������mt����р$SF�.�?C�=C���eG����;��T<��Q���q�\��YW�x��f���ϓ\��-��1��g/c3O�s���|��P��s�(�E�� ��C뵕D�{, �Wւ�8[��Gü	ӟ#��V����p�\1��g�a8 x�x�0�h D| 4!�{k���s���J0/M$4�z��?IQM��.:<e������SK?����`�V
rѸ�p`\�~�9�x�TЧbK?�	�B��P(H�"�D�@�
b���h�a!w<&6�U �
F
�����՜���D:��Y�Q��_�j��'����|��\XJTI� IQ����*�x��\��0���vM�ׅ�L�@j�`LcB��� ����}��_����8���ֿ���#����q�e|}��`�z}���E��>��^�^�����T��>d=��U��� ����,�x=<~����o��KQO��cc�Up��d����f�,� �ޗ-�-��t.];�h~�V�..L(�`h!cȵc�\��DF�&m51~����?*`A��`�0'd�wҰ��$��gI�Ҹ�»�r����p)K]>Õj&��aߞ#M��|��IC]+9��������U�y�s��ȻP�9���ɕ|�4`ۨ��*R��@�tedp� ��x��XD7�܍�ad���a	�q;�,g1��h6�;� �6f0�C<�.D#��/8�
����T����Dg D�����5/QR������*�$GD���	��T�㱉a�c�O��e=	�[G�"���~M��2YZ�� b���#� " 	˙��&ጓ4a2ZC1h RGb���οΓ��?���9�������C���6:dş??��6�'�H��5�?�Dt��u�ܱ����d��Ei;��Wb�>�[v-��BmO��_�pٯG�x5�g���l���eܛnU(��<���2?acSjL���:w�7��pK����U�� ��D�<��Zw%�5����Ǐ�M�0�$3��9��a��F<D2����Ԣ�� �Cٟؔ�H͵F�EV���y���9���!�U�Σ�M<��[�0Y�`9�r��=c�����e7kx/�"��"N�ɯy�  �`�R�$�!9f�G�����B'������b AR�c&�y���dGQB��H�����(��Xh�� �'#�ZB$�,<*�� �1�C#��{�<�;��Rq�N�=�"�����{��	��u�F�@8

��Z#��_�뚑�K�?���!` ����}�u��1��_���D�>s�?u�[�ˈ��:v������g�����Q�^�������6]�*�å�js4d�-lo4�L-;b;i�g[��x�E�-c�v$n;�Kwh��Ug�C_��;V]�R7S{]8Y.�l?�r��G�r�6�u%oS�[ݞ�^�B�M*լV�'��n�x��B�a��ؙt��8�TR�"� �& G��l� ��ϵ�wd}G��'�$�����@:��E�RG0�m�x4�'��C���3B�mpJ4�KAA�� �-!lu�@ĩS@'��K�*!�$�:Zid��N*����9ڠ�f#��(�!��
����%@!d-ѡd��I�hR��]�,5JhTbR
���n*�tV��v���!4wI�c�����NN�Hl�������[���!`���T��:5ݩ�mϦI�BQs�O��O���/�듙�wt�a����r`���G��<��Uo·����<�d������� �����]��ny��Q�y����n
�����hY�i�^�Y��mGw:�[��U��=[����E�_yx����k=Am��7�SA\�7�����R�	��
'%	�i�X�.x)BH�f����U<<�.�"%�o=���;s}����Ƨ�d<�x�`|D
���BE�綾���1DRpF��B�")<\�¢� ���6pI"@�4.���C���  �u ��L[Rq���D`� a����`5 )v��a��if�.�6�W�g.=��D!G+�
U�*!iB&�����Q�q���PBF�PJ$!��!Q �(i ?)��R�nVw`�5�gIM�y��p�,w���)��n�dP�ԟ�!  F� ��`�ӳ�u8s�	
ı�� D��wz�w��y�����N>^��K�L+�,�����h�q�6c��2�Y��;*O���^^Zw2�ԹҶ����E�7˛|g��o+�;VW�����;���Ć����Z\1޺��r�%�{�a�t�����.��ߘ
��������ޟ����ʌ�T�$n=Wʦ�n�\�J�e"�5��[9��m���W�RmYG�
riD� �`���I�a$N�<���)!��� x&��
$��!IT4Z���� -|L�IQ�� �b��I��aBR��@Ӗ(�@P��0
FR�a�#�P�X8 (*uα�=�,c	K��ngH�(��w�B<�	�i22.j7�MQ6�No(��t�����.G���G@�o�@�0��[;4:�]�{04�rd�8�M:�M.���w�;�#0��C6@�Dta�GI_��j���?�x�-CA HB�~�~:�=�鹜�o�������ݥ���K���ڔ��2!�@����a�V�.�j��L�U;<�u������R����/ϖ;%W����=GjO��s�w�i�&��r����Y_[�	G����l����=��[|�œ�V�XO��0��N�A�A[%�(�)_�
�bF�5�y�NF�Yx_�bk�cR��P�p�pw��T"�G%E	
8ۀџ�A��$�z �46e�0Z�qp!Pr�m,(&9P!G58�$	E�_K"H�`ڒ����D� )a�Q�'A�8I($IT\v�Lu|�Q)cb�QGB�(BI��@�0`&,RRhM�H9��"�;퀭�[ �Dow=�6���iDp�r�N���9���9^�_�ZV����=�7�s3ɱ�m��C��S�A�$�q\2�[h��*�Yw2@������(D �^���y:���u�����?d���O����/�c�N�At��i��Zj�閽�q�:Y�0��d��G�����ѲX��-C��.�9��ful�;/���B��z�U�ҿ�fn?�rz�����������]��L{Ѽ7��,N�vn��%99ێ��#u.�_�5�tzjHHc�s+�x������(�u}�2{������q�`�':"!�;"YQ\4Y$A��<�9�آ�˒��$
THP�F����� `t��؉M�4RC��@�8!��D�  8�iKUT0
1\�������@PL 6.#�G0D����F�A�`@��H�fx� ��a���	��!�W�j~f�Y�y�g[�z�<**"��@Ѵ�q|�+�1���(�&�q3��������<ǳ��C8� A�p$��N�Y��`����):&:A���>����#�����o?����Ǳ��G���m�Bk�6q�XZ(��qu�Q��i�d9�����͟��6���5��r�g��=y_���͗Fs;�==\���.��~s>m���Ua{S�v�F�o5�D���T^�Ŗ�z.|�����O^���氤Cc�L62T7��[6�z!˳�:s���K	w��` ��G�DFC�$���@CA X0p�����99A�D�ň���pBt �$D�� �[��G@` ,��1ʘ`*�@��2J�
���RC%��!I�4U��( ƈ��2l��\��  p��u    �1B�2q*`!IR&C� �$$"K��21��	#8�ɅL8I�W�c�ƪti�)�r~)�ز�QW�ʭ�h�sk?6����b绝����F���*lt"�-c81s�@� ��Ps��%".%�|���y��+�����|�<�I�iA�<v�)�=��u�"�|��y��q���-�ݟwo����D�vU;�����l�y�ӌ�{��uq9o"�rrj�\�_�=���ʑ�Ro�/5o�3�滂�(����V��G�y�g+���~�ϡs
��܁m�����7���z�j�[�����T��`��ҝ�ҧ�����&g%w-'#���y=y�����i �@9�w��y��x��ځIn�:���;��Py�߉�_���������G���ɏ���o=r�ep:�_O7�΢0
1ߔ}�~��7g�ܞ�H�o�2�����cG�?����?Zyu�_�-�oP���|�ƕ���������KÏ�Ov��C~r������������&�vjO�=۩��ς}kݿxr:i��k�������Y�%���������[���E�%�j�-e(h  ��H��a!��a8x  ��?ȩ�`   �����!@Bȴ+� �:���c!���8N��.�F0�	 �B���BQ���HS��
DA���@#�,��:ԩ�
�P� *:l| &�!�M�,�#�vx��̜̻�Yx�\�<\ 
x(�R���
�5f,�i���D�+�#�lC�jf��*c�!���떛����@��*ۘ�0!ld�)ZT�+[�D�עF�Pu�Dh�i��s�A�ӛ4�L7�����A���ϩ#��"�E��YK��Q	�����iɦ;e�Bi2�t9,  L�N��~�*�'BWm8<(4|$4b�P@7�1mHfk�IE����H�lN�;�ҹ��W���PP�D ~��p=e�p�aύC   �2�����.��K�1���y��v�=9�-n�)�c'�VKGj��ڷ|4���v7��￬��J�&��,!v�gMc�
eBR���%/��l�>��ڵ�/?^�O=�\Wð�x����?R�.3�i{.�?�)�eF(�mW��T}k�u�%zs.>9q���RP<0 ����!`���O�.�qd	G���D�9N Ƅ@ �3�C@p ��"�%D!�� P��(�H"l҄�A41@�\"Ҙ8@( �NDI�$	���(40 � ƀ �b
�S&A�`.; �)�IB���
&u\8>!�C'
�
K����fxvT1����Q���ñ���qP@ L����M�Ծ6l{rMG��G2�W�	��Y�S��S�.2���.si�!�5rKk���������>�Y˙����tN1�=&Z�V�s;�$��YH��/"VW&����ۧrg+����ot?�so�-�}��s��e{�9�~b<D�cy�w��e�B���#�Sk�9�s����7�g�o�:-���T@C.�~Vr���iF���p}��p������6K�픬ET�w���r~�H  � R�_
�.c�� lG�@H8��/in��>��G���[~�{��3W�mV�n^	��n0��1�x�J3oՃ�c<�q$Ƨ|�髹�ԙ_�h�֙P:��̯�ƛ]Qjk����k�֎�Em���>z%���5w�u��/�cq����/��+�˗����Lf��I���|\�7�fL����������-Mx��ь������  P  6L�a��(�#P�0NH
B@H$�}�  Ĵ+��H8�6!"t���"E@� ��8>.)5$�����2J���* |t�Ġ�H  ��i� ��B��8K�' "K D� p(�"� ��pq0��*B
��o�̽�v�R�/�L�!�b� `R�3%{l���hdh�D^�2�=��^�	W6�ݑF��۠���L�3BPs5*����j�N�����d�3ON�v�h][����������y�;��@nn�b)��F��s:���Yq�'m�7�54_��%���lJG��&�a3��N��%���e��h�f�q.}���d��g�7�>�Rb�.G	���5�q|�jt�0�Oj"��,k�q�q~�NXN�T�33�º�?��@�@ON�� Sr
O�S	g�/Vqα�ݭϿ����|��?����dޑl�u���ly>��?���Ʊ�o��_��:JhqS�?5�pzZ��z��S��H83��'ˁn(�݋c��PzDu�'�y��}XV�j,��PtO��m�#�O4��-&����&֪���o�>3;�����NAXʕW5r	��^��W�4�����,���1&	 �����EBE�c��� ��!	��0<�$Ӯ0 F` ��
�0<,(.1�80h�3L
HD�*� �1l��PG#"	�N#�D4CɲI���Q��a2D;��]�������pc$�C&�	rQ�g���>k�ͣ�:��D�4I$T($r3w�R����*�мO�-�E?�r0�>��rb�A�R�����C�P�j�l�f3��HN�Ї�ɳ,;F�P�=z����l��$֭�j{)�:�r�<��B2���a�{W�TԆ��Ş�ǟX�
��j�X��*|t� h`d�Z���POg&B��kٓ0��$��eV�.���"�hd��F�@-�Q����Ʉ[�����7�"�:�t���k8	��SGEns�*S�	@����%�o�S����L�G�~��7ʚZVִ���#Sٛ/L�a<Lb=ݟO���p2]̧�4�I������F5���|s��ĎU8�v��k��V�a����7��͆�!�������t�}�hX���Snj�2�B����B Ҋ^6TQ�a(�����H�<�n�n/���@`\��f��� P`06 �"�a"b#�h���`*���AA@8@ �Ӯ"$� F����:�d;�6�qY �B	N��`Z�� |t�YTç�%\��A�l�qv�@7�廌яJ�P @TL83�����Lr�����J���_�#4��0� $�J�N;e����@�-�š����~�H����PT��e;��c"�B�P�8�U5n׷[9��I�� �X��{�WŻɞ�
�u���1��#�`Pwl�Y�/7����H���N%�d�� �z���fh�a���d"$���<t�v���L��H)�:c�}� ��KjY�K�n�/��o�C�d[����bñ�9��Eq�Tq	z`Y�ϖ���� Ű`���1X�!�'�I����3d���S@(*�損@(@<
@�.L��% �Zà&<��듓V�_��Nٿ��ۗnn�w�U�9k��௺A���^�v�)�j����<���ص:������
��um~��*�=�s�8ֱ�Mp�N��Yq��$�nڇo��^]��KmEE�a\�:_�K�d�M���X�*K�[;=n� ����ʊՕA�@C�q�AP<���W�<\���`���c��Dc"[��k@�K&!5BT�
!� ����g�t��j��=�����ɰ�4�l��,RD���������(y�!�¸��4r��,�b3>��$I�t� 0"8B/��(s� �d���"
P @B�A/-$���n�N<!,hL��x���)VX}�����~��)b��C�M-#�{�H��~��Q�^`5�\�] �]�����I��!8|����
8v�d������T=����X�`Be����pP��'b�!������]J���:��%��_���}IbV���\�$��K53���Ր]ڭ$��R��c�� �M*;�23p�\��;&!$�L�)0_�H���z������F1�	�߻3Y��K�<�S����M$ чl !�$J��J��1	� ̺��'��=^7���|���Z���}�mm�5r	f�1�W<��y̺i���Bo����L��d�� `f��T�ԑ}c���h�R�1¶$�>N�)�B�E%���'|�U?k���jU���]2�Fڮm4�⊎�����[��^F����Z��E쿿X(\X"�Y�����"cQ�"zX�C� �d`�#@��`$�����!ϰ�8!:�D���Ǵ+�� �4��Y�";�1�����G'�f���!y���B\�E�8��Y���J~	£��I��丅�b/��=��r��/��� 
's�gx�l>L�V\��lT�c8���o|��d������ì��{x�%�`�� p�d!Ac�:	�v�zL$�;%Cl(O���~+�D7U��1��b;�����z�5ZYB?�ibo�t0�j.}3����a��M�&��#���#��@�05l�Q�RG��c���UqO����NĨn��:���P�p%�B�l/+#2`bV&�
��SF"�A��i��N�~5E�@�t@�Ƞ�d�NA��.�Bb�b*�g�	�&�oi|0YB�0 DG٬�l#A�k�"b3E'�X�هl���(` 65M8��@p � p$7�K�����x��!q���ܳ�C�L�=>���N�vys���Ѷ�7�+R"�Z�-C�e䊭Q���6բ�&��@���r�,���C>�+?��#�m0�e�?�p觻��]r�E9��C�\B*���8�v�%�@ Br�  $ �1N�~�礵�{W͉�����0�q=����t��#��������S~v�{Tf�G;"�2U�P$��@9X\$�+F/4<�*�&������`��2.2�fsy�!�zrI!)�L �g��)�|v\�i�'K ��DL!���� @��x�� {��|��1 �EL2�,�Eֿe9������l�����c�EH��,�IV�����]$�7�V�Spdh���R�`,)��ͩɷ�g��9��A^3uɻ0�K��N�f�nlO���㙋 ��a/_f'��+^d-YR��'���Iʠ�C��K��f�F�8���{ x���	  ��Db}�Npд�]{�~ew�0��_���c#u��飏��qY/��2�eLs�����]� �CH�	�Nhct�>��@�ʟ*oE(n�mV�����^@�ܔs��J)q��3��������ɉw��d=5t�C=�:���F���|�>�y���:e=4S ��<1o/�嵘w{��si������Ǫ��a�y���׋�g�C�J�Cc��5� �?e-��Y'-.�+4T.�_��ON�%��b�f�r�!{ ����T N��3.u�<�_�������K�����o�`U�ƉB'O�f ���  ��} ���J`�K�Σ=�� �&h$;:p��8\�����[��ܼ�*n��?=������x@���6 D} `��M$�Hp�Y�6@ �8:!qfPf1j�&�*L�P < 9��sR4R�PϑLby�i,�o4q:c��ulE�,"tq?���������81̷�f���]�|����Ɲ�I�q~�)4�L��q6GRc-�َa�Q� @(0d��� ����a)G�L�OYO���$�3��tn�66s2[�8���y�������2�L�����p��*�a@��!Lc
op!4�L�f��p4$�� ���2�y|�#�l�痬��/����;��N���_�X>�[��KyL�W�	� �Mg:��q��hz��=�D-}����Y�w��6<��d�8p0h����h$�9L�Y����C>� ��V����G�9�Ǥ��b"}����e�� sYNȕ�{sa)�=K�(��L'3P!t�/���a%�R`F���x^�^����׼H�p6|��iD���Y��F6��/p��_���H D2N�8{)�Y�[ٿ���c+[��0N�Ą����  VP�n�/ō�|M����7ٟjZ9�?�-r$��`��

�z��:2Q�5*9�˹�y�N�8�2�X�)p�f'��W��i��(|\&SF
�=Y�� ���!`�4�c#� ��<6���Ž�@z��|Vr<]���Z�â���щ�J�Q*]�T���X�@tt "2�N�c<ɰ��h�%����c�d=�@Fi#�E�hB��cX�vQ���A�qi��	s4sd�qYыvy�J�}Ӯ�&X��l�(��W8	���^Qf�B;_��F�ދ��,�I��V�8�K�� ��Q�'�B�r���8���A|���ӝ�@A���rWumL.u��T���@xL\������i����J�3@ؓ�g�f7ʬ$� SX��	�|f���Ȃ9��8�5|��x	�9�O�a>Gsl��k� A@0�4Q ��0���7g
�D@� *�4q
O1�23��s� >�8��
<ͨ$�l��>�Q`SM�3��Jmt�1�i��,$T���O#t��Ґ�� �y8dP��P! ��L���P�ʎ�E!���HJ�2v1�]4�P�H3h�Q%�\^�y.����(g��O���0jT$	��f��͔�p N	�D�w��Fle*!�p��p�l�� @��6��P�#�EH�� d��-$8dR���V���}�?z���Y�s9�>=�-�g���H[���9=P�(��P�!\�3D�2QzaIb�@S�"B���P���[
����N<( r`���L���b�K �p� �>,:�q�!h���hx��1���Ѱ(��Q�9<�D���B�Y�L�fJM<0t6`�;$���pH#(�&ó�̣�h&�4����S��1-�8�DI�!@�Y���n�����X&;��G'��'"G�,f2c������0��&�K�Q�xT�T�N2�" A�MtҊ� ��A�E@���8�#!��x�$�C�<�y b����8�G��:�aO2BN#eDL � ^f%(8$tj���h$J0t���F"�÷0�@ю�L�s$���F�9�$��n�t �  &�C��>��z�J�D�n��f�(�VT�E�Ї3܉����N�� E�Q:h�� ��QQ`W�XR$�w ��D���`@���8vKﰞF����ah� 	�
����#�@c�E ԫ�8&4Qf�#��26D�*��@ha�f<�(h�0������{ �$�qȣC��N�xZ��c&籖C) ��BCò��|�����:0�M�5Dx��f+A6�%�$h%��G�N����>S�2�H2�uhHp"<$)$i4�a*iT�AD�V:H� 	1�:ί�� @�B!���J��=�H�V�'G�uv��<ÙP��r��0��8��b���b�"*�HC3�}���L�E�����B���e�YC{�
��=49 ò��H@<���N�%���4� @
��O.�L��	o\q��Q�e�3\-҅�M&�5���D��8/@�A�`�`P�1�\��0p�+
�X0(!x� ���`ԂQ���Qm��o���Ցs��x	B��á��O��;
"&YtB�&Ce$���{��	�O	B��H,LZ	������ ����6B:!����$.Qt��F�����p��Md��-�|��T�]�RE�ьa�v��P(�%o��$)>�f]@L��ٛqDI��(a��w��%�؏&�>g�m<�2c&���%�2� �)#�B 2��"��FH@����\��\�r�*3��K��q_E���� 6]�K�����X脼�Z\>�O|D5s�)҈��0�M��i�~��=>���k��b����|�ut� /�
�.���y���s4�J�飅"�L�7!����P��)�8�jà�&�j���,L<ƃP H �!8��(�� �j��*>a,5�0�X���ϛ� �ՔR鲹(-w�UyqIV�;26�Aa	a�b)���!L�2��@�����D?8�`Ra�P� R4!)��2�]   �De�!9�ɓ��	x�a�b��`J� DZy�C�X�\�2�kT�L/s�E��.f�>�c-s �N�) �瓦�E%/�B�p	rc6��̳�̃�����4�(SCG' ��2���yrC!I�S�DH9氀��	�X��C�H�$Gp"�|���Vf�;�p$���	�i�B�,uL`�|O�g���_X@
�ɗ,���0�����DSh`#�0�e;9�Fn���,g6�1��X�l*��N3>�L��u�t��4(��f�ҦF.�nK� i2��0=p08�	�@�c��F��)��QR���O�� (0��M�P�u�S��f�Ů�<��	q�� | .���d� (���@hpD�Q��'���	�H�2�8����J���4.E`���i��bo�o���⼁�oEd���n�v' �Ǐ�[��>W�5��:��h ��?��W�<81���^�~�}WGc1a&P��L`����5/D����*"��@Q\V�2���p�V;��m�	v4-�f��|ElzU�Q���ȪL/��}���.���z,��	�>�V�LE C 0OnHٛ�R%�N�
�'b�|��Ѕ�	�/K
��p|
NH��Dp�i�����0X@(� £;2�
����X�yA<���t	����VRE�S��Nhf:	*���^�p� 8q*Xp*.j�!�NS�vq��)�a��]��#{G�Sr8�:Tws�8�܈�v�Թ��)"���,
:,<>"�	E\��m5�D��A�£��CA����}��@����)�`�*� ��!��{h " $�i/qh8�����$)bQGÁ�08:�IT% @$ dX�����k�ǆ��O+|:���w.d��*��� ����{��}��.�����C<�x_#r,�>1b� ���WJ��B#43��疈aPxXR-|2b�x�R�"J��n�1YL*��Ć��(�ࣁQ��p�I� �Q)BÃ�'�T�� ����o�@ �   D��-I A�Sd_�� py����yS�T4��D}� � 0�Vj���S2��0�i��|TR0Fqш�g��� ���5o1	p�08�%�W�$����@�B�� ca� �Ie�p hP0R�G� "`���� bc�`�Ia�q� �P�a��W{2&6QX|8���3%��H  ����j�m�}������;8>���4`�`�(B(
���-��b�ױ��:12�����ă�C��$.pԺ�����]~?��>l���D�`��2H ��O��T0.:2��(�E���pp`��$�!P�B�þ�ӹS��X0x &!�H���v"�`��oß.�4�y=�3����E��J4@L���9+�2��
 ��b�a`""���ax �������=5�"z�w��g�[��[�6?�;*:>�԰h �!� ��d��A ~O
��H�x�a��q�a`� ~R)�� �!���'�#	C
���q>�B�B��E ��Ŏ�+� �
:��@�ys LР��Q�{��a`��ω��p���� ��ό�]
������S���&�;ٖD���.��G�vu|��a��\:�(,�D1�� �@���م��`�B��K�f, .����O��a�:*�\?�@�
 ʤ�  �(�� $�
 � ���^���{	`m���bLr�(��"�Q��D���H����"� 
^�ľ0 
���Sv%�l�{G�f�����K���}��>f��`m�T�y.d%1c�8�p���@x||~�� >���ŕ"Ut`�� @x *d�I���A��0��~��^,��Ã���� c���Ʉ�fY��M�z��K<�p�c�@�
������.B���PL$����@  ����s��Y���3��y�<K��\�Ѵ�Q�`h.�ELp5],-L�C�0h��ͳJ�d"���	��s�� i¸�@D,t&s�*�Tf�&����,�[lXJ lt& � 0��4�  �����r_��w�o����u?�~���$u�M@.���L�I#�[s$?�/�7�4̟2�0	GBP`z\�c����p0�br��Z~��))~n�:��V�Qk��*��`��]	|~���و@뷖[�W�2aEd0, A'��ą�#� Ƅ@C��X0 0��	M ��G�<*
*u �M��E�aPTTB Ӗ��H�f��:�a�!��G��,A�D �!��R��	� B8Ą)=�`���~��5��=�{�`��t�ϴ�+�J�/�r���������w�]y~��Yߕ�=�Ýז�qi��qΑ<g��o,�U�  EI`'�	��X��K&�o~�ۑ�w<���b�B����b:f�����|�"pא'�����adsP�{VFۋU�O^y,�r1R�Wm�0�I2,u�s���=������s1��2�o�����}�m����}���.%� �ҟ�2��}Xu�C��Nw��D��4QDEfb��0�-"@I!a(����ȡ�gk&n�:;�&*�,�|��]O��b�pZnՏ?�������?W������/�����7����h�y���)I��޲������9��m��A��-�4�j���=~tZc̓�Mn_z�������5�D�K{��MΦ'�3O{�[��������q66�_��Z5:��*������������Sr�ADd���fNf#��5]��#�K������`�o��<h�Zbӄ��  ��	��0qr@b�1IP"�D�`Б!H`r@B`ʈ8�0PX��X 0�H����B��DG�'DG2m	S��aBq ��)��a6ӅA '�N��Th�� X�B�$!TpѰ� &����̡		0�ms�w�� !�9r|8@,!?�O�!}�`Q0	��k�"�b�j�\��gl��Ay�a�S�&�R��a't��ܯݙ��i�*.�a��i��qv�����;��?�ejc�4LF���D�~�%�(�7����Gk[A�pgE�Q�`���>S4Ә��Ptr=)�l�
�q+I~��d���{S_T�����o�N�?y�O�̏1ɧn1�`҄ Q�p�����M ��
 3��*�xIow\O������O�>�w�����J�5��C���l���_>��2�v��l����a����/�W�_>k����T�w�8il�/1�s_g��گiG|�=1'O����\2���h ��R�W�~\�F�� `��?��L��`���m�����M��^����lڿ��ÆED�����e��`aC`��0�3�!0.D��!�� �K�� N��G �2 ��c 	Q�S��B#� !��	e�R� �A���Y���� �baS���Z�����0$�F��%Ʉ�%�����r���+2R~܅�1l�(\(	.>}��"^����Q�Ǆ�l^�i2<���X&��hs�9��lo}ŷ�Ӓ)��`�̋};/��L%�p.,s��omj��kw��u�F��}��ۙ&�\]��ǉ$��Pr*�s>��gt����b2g0��F��s-/�/;x�{��Y�����rY׆ �2ux�JYk��G3���K�|��4!$�F2i"q!hdh��.LSP�J�|NY�gy�^$��������qG?|�������N�˟���a�����ͳ���i���?0?��|��g{�Ù�����ի����q������c3\�����V�����7j�(�.�_�x�~(ڙ0���D����$���F�rš0�����Wuc`T�$`@t�ρ�8�[�a�c�tHm��ۜ����������`
]>�v��#� >a2,..4) ,�I#+P0I�QM'.AD % l(h
�B��@)#F	
Be�p
g�R	�8 �NGs.#�Q�OTh�NIw��M'���\r��ͨ��A�U4Sf"=��H|2�Ñ�F"^W->��Cу5�-����ʼ��i(I �Y<C�O�&�n`�W���R]E�굘�S��j�/,v�vsS��n��9³<Ɇ{�q���C�<�����>��
vHm.K���[�^
����Zp2��|�*�Q�������&.�	�;�����I����k<UL��#:���7�2>�[d5���)� ����B��#�4�:Crv����)�qS��.�1A"<��`.�:������w�n_k��������߲�e��nNC����G��3�>%[�Ң�\���r��W�ag���/q�ts��7�=�'�=�t�g6����^lF��C-K2[�i�Is�����FS�D(Xhp"�wZ�d�t"T��`l�(��#�EE�'SM���~~�����ی�TF���_5����K{fO�0�<||J �`L,"x XDr��q%��p5 �>A  H6e���� L<�H�"�(ԠhD�MC�A�@8hL_B(�����J>�9\��J?�(�ƣNd�0R䙍`7P���ǡ�b�$q	�XU�n���H�J鋧s�B��B�.Ibm�e���⟱�x�͡�e�v���M�a]�Z���;�Ai&/��Jt�,�[��n���	q7�Rܫ=[��Ś��.�!]�� ]�Fٞ˓���f��qѹX8F`�Ip&$6���ۼ�#lgOv2�A"&}$�fƒ$Y]�(�cS'ױaf&E��I9�ȱ7��`!ЁH&M<�T�(Ӡ�M,�N��`�}�&8� ��w{��Ú���'�߷��/�������+/�Eۣ���mH�5���q�,����#/H�q�򩵅3(Z{�-��xqkɆ�])G����pt�ˣ=>*���W��*��1��$φnZ��J)��0��fbDԈ0�@�@"� �f���S�@E �?G�Ȧ��F+�V��)�}��?��*���Zr�n�g��$^��s����q2��"U�f[�@�<�Z��A�f8z�%A ��Y�N�O`f�QM�!�(T��4� �����C��Y|�����E]*�XD u�1(FH���q����q�G��f>E�foJ� ϣ�����2�M
� 0aF����c�pҮ�dx9Zz:�1���ӣ�g ڀδпׯ�E�GI�2��预�˯4�R&k���3�����w:��+jK� ('���#�����
��*������[�h�bO�}�.�Í�-�|��N�`�.׋R���`�09�.�Ƿ�p�.2��3�"��%��"<�L'��06! A��5ڄ��1�Z�N���M>�i��Dj�9�V\8E4&M"(�i�dY��{���lh? ��v�Ax�0:���ϕ[����ȧ?:��?��p�_GG���{:5�ٞ�G���aӮ7Ha��Q=�'%���.���~�Ir4�y��S�h{�ͣ��ۇ�]�;���-�{#�C�EP����헣f����:��ͨԫ�.	D� �P$�y���X�z4��H��1�
��<+���a����hٗ���C|�F�ϛIQ��P���G��h�$t )t*�q��ǧ�vƃ����`���T��T`��X�:9�u���V6�ً'XB�����'�i�%��T��L�F|�0T�iKU 
�
�i�A�"Y� �$Ƿ�4�#χخ?�n��N��grG��F3q�H���7��.rT�q"�f
�`�@$��K��a��!��NI�` 	�AƠ;(����B�C,��ꃳ��M�8�U�����LO-��q|�1\��U|���(��a��}������KT�>Ym�F�u�����w�SB9��"��;4V��Y��3l���]�Z�qg��������L?A��ee�j,)�O�c�n��[�8�N��� ��� 1yڎua \"��=�=�Q'w��[���.6D� �깷<�7��u�۵��v���gm�/��u���N&V_��ಶ�(�qv7J��~xz?g��s}Fo�Ï��wEgu2���9�|���8��h������_�N�q��~T~�V]�0eIye��3�F]b�A��I�Pg�ۑ    �/	Ba	� �A�?��%v��F	I��}���;Gm}u)�yޱ $��KHYC��tz��(/�8���i�k��,t^��x
��]�f]�iA�c�<�éԳ��y�0f)ǒ�/,g>C�A)��^*�
~�N.�4��:��Bȴ%����HQ����D3��s1���Ŧ���Ð�`�8*2q9�r����g�ƌFsHV�s�����H��*R�g�`#��X��l`1չ�tS6��֪�]c�����K A�� �R�IwK��뽙L3�Q�&���V�>�����_�Թ/������>;T�8��u�0�Z��7Ϛ�L��Ϗ~B�O�;��TDe-��ì���
�х�0��s�c-�(A ��U�Bv0"A��$0��0i
��!��|��� Gk��"�� tJ�����������?��ON��|��k��O���|�|wvV^v����}ۍ��^|����n�����_��n������4~�t���C�s��w�X���n�M5����t~�v��q�AE淾U���'E�*˵���0FUUut	rK��lw�c��I��b.���#HPF� �I�A:���`�؀�S9����Ӈ�yX�������PQ  �'�B� Hҏ'���6��)�m�BBO��˹4�}�~��%��c��T��Tc���)�|�|@��[n���z`[��G��QB�BDG>�fdֱ�^��&s��ш��D�}��a#sh��c��Ӭ��B�,qv�@ĔQ�b0Bd��s;��3��X<>��x�8E�x�y�11� ��
 �ĉ�m?��U�Ο1�����/�ǿ/�a��G������@�]�gӷٞ�N���No������~h��K�y���񜸉)��	��� ����e���3�O�s
=�߷�{r;��ṇ���m��n���T(�-_�/pE^؍	 6�=��hb�I��׬���-�j��{e�ʣ�F�/��eU./�I��Cw��{f�ڔs�k!��7�v�o��>��]֙gr�/o�O�<kT��2Zun���s_�{��f�k�����Dk�Hc�L�������rU�*\O �  $5,|T,B�|�}���?�1�����4ٿ[��>���������?z�/�ݻ֯z��1
�������\�|�M��?�c־������Cy�VK.b'ԣX�'�=������x)z��*��'�?����ox{���</xZaa��K| r ��]tp1M��ş���22��'f��T"v�8:�a��G9���� �7�>5}��OH8G�'ꃯa��պ����8�������@i`,����i�0�Z 	 U�UH4��*DZ���O��s[�G3��1('M�T	�����,b�%�q:_����FŇbcR@��l�iv#Yl�XH�aʈP��#��� y/=�ϱ��M����A3�ӎ��`6.>:c�Q�Ax� t �
�����}�|�{��T}Ne����'w�L3�"g�[�JF1��|E��v{�ޢ��i�}l��B�0m����� T�ZFC(���@�aဠ� (ƃ!D;=le&1&"e��i���T���4"X|D�E�ϗ�؋q��c��at�wQ�A�!��5l���9dHB`H8�I��� 8�d�F�  ��c���;��lηг����|�Kn�]_Y�]w�m0ð����.���r���h�`��2����QA��cq�e3;4O��lKE�X"y�9��E����k�B�k�hN-�,>
)Fi$�(#�d��E��Z��K6��$�`7�`9��F�s�x�\'ȏ8%�)���s���O,�� 3��S��׆SN�ߓ�w�X���dN�a���Y��Z�z��x�(<����L�	u���ivP����vRF&@��M?�`Լ�jBe�@x�L����ɂ)$`�����
�1u$(
 �9�>��¨�B����G��!���$	Ѐ`N��PҀ@�����B�g�Է��0]�y�g���gI����c>k9�{�&t�G�=�H ��j(���PE����B�!J����d<�d,������K
���%   � 0  ��|>>��D@�!� (#эH
����岂��g�V�1��e��PG�4� 8 ���
 D�rh=���X���kj=�y�է����5��%�j�����yk䇱��ܜ��n�l�Ҫ��"E�l�%"�L3���*^�5�k�M��P{g�D;\�" (���8�t�@͜D/�yN�&�2��a/�$���M��\�V�d�<�l���x\fˀtF0��9V�"�+_t��e٥�tws�����H3�rLI������B7�aќ�d�ɴ��)��c8�a>a5�3��ÇmgmZbJ����ņe+���M-�2�^֑G���8���z8����b��|r��6N&��u�,��p �)e����((P)$ې���/��M\�v�d���> #��v AL�
�������[�{���^S'�;J�g���9��m�M(؝3DFKD��!� !A�� ��#ۍ� ��p`�)����x@ ����((l7������`B�RI/cC�Q����*�G�2q ��������h��*ǲ��l����#���#Q!8�& @B��D�� h 8	 ��o�ۂk�u�owg^��4�6��bB%��(H��D��J��&:ɼ��3�I�[R�\Gc3��CvUS�B1��}f�b9�T�u���]��e6�Y��V�#�,N@�A!�8�q3�,K�C�"6%��G�9�I �}:�8q`��)}E�X9��[nU����J�Ӧ~����Ee0�y��D�`�����F�\P�f�(�3gF��lc&h#RR� *9ޣ�M;����hhf<Og��ğ�P� =9�(�H"s�`��r����Ń� �:�)�sA�P���a�����X�0�a	_a)��G/����\�<���F�|�����P��I2a����H����Dݏ�S�iY�E�<�<0a	c BQ��^QD4@XSPpX(( 3�����Q�<�;@AApq	��p� �0�@<\
��HX8�P�BC����*@� ��G�*! 46n�e;61B|2�S!	�!IiC�!*��SH �D�2n)��H   ���U�����<�t�;QG8�Q@�\=W��/�x��m
Ԅ��!V,�:���Ts�

vS$=d��Hc�j�@D"2���%a7�Z�� B�bͼYv2���s�8��q�	�R!I�y�6(�
i qb�84�M��ꁩ��q�19�a �D�Jy��
�RgmYU��Nfo���R� F���>%#��2@ٜ3��T�a!�h4e4B�S��J�m�A6��-c6�oe4�N�b�����p�
�@��dFR6
 ��%N�E���H� LT�)�H0O"MH "`�rtV��O���=��,�pz���%���J�����e��Q'E&L<�Z�z�ވ�h��h[t�l��O;�<�0�h�Pā !�M���Hh@(tX *.�AD&�
����	c�\< 44]4 ��P  � 4,�A����� J0Pp����B��#��a$�d�I��DC����� 40� 1i" 0 @�@  � � H  �Dz+'� T��1��C�T���AaD� H�Q�.r*8�34�^T{|L�B+B!��',ˁ��,:��&3�HM��*T*��D
����2�^�P͌��e'O�\Z�A��lᳬd����9�N��S&I������?���3o6��<�!��H0��yTTlVT�dݱ׮c��=�w��s�Z���)g���0	��������E$��Gq	�	���1�g,M@1?��O&n@dAlJDw\l<( &aJ8xԂ�A0	0$
!u��`�x���2	@B�
�(j�Α	��2�2v1�2��IA1ȣ�A��ib��,.&D�ADx�L��4�n)���zE��UR�qCG!h} �������*a���]	�"qd�5�@�B�$ ��������"��C|  �PP�kƇ�CT,<hX0*�<(t,A�a �c�tЄ���E�A�DH����Q��<-$�O�0     $��b ���y%.UJ�;���9>��B �����V,��
f�[����&R0R0��xy� (�)
��`ƨTűy�њ��j.E� ���y��RF0�d1G�(O�f�����J,^��
�0^���"F�"c41��d�S��n��'�ql�AO �  �1Nz��R���u�Y��W����Z��(��������ɩ�A�D'�M!� � }")%�5KS�	��G�,2e !hL�x��1h����ၰ`�x8��B"ai" 0��E!�NB���`3G0�C�,v�F�G���(t��, FD"�(P\&LFSq�tK�]S�荔�����4�5q׈�h*P2h�0	b���c� B�D;�P T�(��C�`@0H�C  ���@��!.   @ >4�A#��P��1IR����B@���� $N�&@Jhp(p�bH#�� �1P𩑆�08:�I�  H ��� �#@  "���<�%���7V��~�1Z�0*ʑ�2 �1`n��JY���u唍o.B%��P`S���U�$%����ݘ�`"_����P!�j�l��V�f#k��v/��k;��K���ֱ�Un�&{|��KZ�B�y�/1r�k�7���e���N   ��
��6��y��Fo����}�J	)0(�X-�1'MC�� �=":,6u��)��p��r��j��U X<+@S���@b �d��1��0|�@
I+%$*ulº HC��g�$'\����Zv�*MG�����FO����/u�R��[JU
� �!�p�@��A���ʩ� K�
�Z �  �<0P DH�P޴~! �@��/����d�N! ��ú|(|<,$�O����*��`B���  �\`j
 !�� " �&x! @@ ?�B ?�H�8���[,���%�7�7�70����   �b� �i���Ur4Г�Y� @�x!{NHT F Lh�YOX����x$8ώR�[���A�����8Rߴ��H�c�h||B`�L;,��kP$}r}7�@ 0>P�i� h�T�&�#�@   @�`|<	��}��(  F���G�f���Ϟ@SGD�j�\G�b�&twCW����[��-��sK�����q�P�HP�����Hp8ZT	A�b�@��y����� 2�hW�?|���`"0}�D@4\xRT#�N��?{ކ�+۲��ij�9n�I�ܚG�b����1s+x��ji#�
:�!A�0j#`B�q�`�'��% ���B�C ��Ӹ�D'�Q��d��w �� �	�Á0}�"0 Ht�a� X�������
=��$oJ�C9���:P�j�(h���|Ƿ�T_H�����P���1<YxXLhx|�IY<�a[J)H�����`���� HQC�g���o-���! xL��QA0<<{��Lb��!�������"G=���+I���~�cP�T�#%�Z��I�}W�)��`�[1�eE�S�J"�ObQT�pK+�c)5����?�֩D�%O�m4��I0 �E
��&�2�t�>����&�\��~����`��V]���￰�4���:TU-����t��ƭN�
�r)�a�ﲓ&���9��p���a�'rept������k�.�o���� �@����]�0=�g3����?�� ������a��LN���	���ٟsq�]�������#ю�R	�5�3�V�2����Q���d����P(+Lq�Jl0.,,��q;�Je�rw�X[�����,!��?�J�Ĺ�����22���  �I�G%Ć�#�i+�[����@~������ހ ��!x}C͉@R��XE� $ �̪k+R���g��~���*����a�A�n�yQ�Cl�P�b���EB�>L��y�`�0`�0��w�2qRp�c@#D		�zM��i�UXy�	P���K�\X�<4\4tT�`�`!��px�%4�<��� ��9�&��Xe�h6�Y&Y�H ���q���ɪ|"��;.��Lp����w���a~���y��X��n������&�����E�U�>�3I.q��_?�-�������L/5�<�<h��؛<�{��s�d�����&��ϻ̶=8ױ[���%�>2�_���{�����z��;sKR��y�}���U��s��9�w��^����u|�����%|Ns	4�~5��e'{1�;����؟�@n������/���ڰ���� �Ȓ\e3���c�w��Yb�3�����n�߉���y��BK�����#�?"�����M~�Kf�B���$�I0
 � p�`�� (�gd��¡��>
������<�B��������|�z�ͲP:�e�"�+˨�S�Q+����L��Qm��62    ��w�����h-
�B(�!#	  �@^a���~C�j"��kE�u<��'��X������r�a؂�1(��$G�[D�'�D 
Kd��1-��t#�ߌ��vZ����$��á��2�fj'��0�� ��tP�%��L��G�����Q	��<
'r.����9���w��@�A/�؊�F��s>3���f�5�:<f����I�׫R���������<�> ��G�~�^���'� ��N���yIV�D<�3Cw�������c � �+�C�*����|��C��=�s��E���\Lz�R�\��2�\�r���I.`0rE�s1O������;�\�Z,#�I�7z�l��G�xF�#�=�\��C�sc���)l�L���~�t�   @�!��E�!���@�?���վG�_�/���=]/7!�$=���T�`׈\ qs�4F����A`��PV��B  �3%R�D�Q�  @�2N�$�2!�n�[B��ל���?S���" �F��u�͉`j��}v��]C?_1�����=)f3�z�������94� �؏�,ϵ�zm��jR̷��g�B��׹*��y��0���x\��q��t��
�V��o4p**�<�g���Q�
F�F��A}��0=|�Ө3�NO��
6%��1B��	׹죃���,+9�o,L��#���9�g$ �C�d����f����v>�=��2	l[����`��v\@� � `�;i� �y|�b����<�ڑ#v�vOi/9��'�^�^�L�t�@���}����?�1Ď��h�)�c�=���<�9�2���G&W�o�Q��k-eS�sM �&�M��=�s� Rd�`�CA  hh(�� 6Yx��w=<LؘHP�x�y���{P���4�:��R��ز��)!���O���ybu�{kِ���U�0���V�`��!�E�=L���*�  /���� �E	�����ĸB����A�F%�>F�N
��Du����>"�-�u/�ɨ��J���>�zV���d��9w����K��$�D;�w���Ȧ����Σ�|��r

wS���Y���/2ƛ�׳�ͥ��r�=ެ"BG`R�����a�@P�F�lI�AL��] >Ƴ�b��פ�s��U��KhL���>.٠��4�ح6ϛ����̀X��}���h��gz�(`'�fFs)a(|qe��}tk��VI�!%9H<ej���^J��|եT�{8St	&�����m�g���ٲ?��}��O�>�v��jvr�+�
]ʇ�;�%��0�u�Ac4_��k��whg/��U�T�X�)hr`Zj��<&Y��|�%P�d��� Pp� H�����	��4Cy�Qx�oy���؛�כ��x{��׃��a�/���6�e�B�FGZhkA[����  �z�@��� ,���`��gm�Zwp  � �a  �@ǠV/���<�y�/��E	��9�CY��i��uP�Z�(-�S"�ʼVP�lx��v�1��x��4q�\��d�9����'iM�Z=�H*�Y4������j���ܯ`��
�����{�0�Op#�a>��� *���Q���G�B�1� ��Hp摄�i<��'��q.�����c�=����r+[��dY.�`j��A{�����2�!b��e��c��z_�%�Ӱ(����������F��U����R����M/���k�S1����d����������Ҽ�s�~��}��އng�O���],N�Ww����>�̵4��Ŵ#ׇe��1t�*yPt�B����U�� ��˂��F�P`d� ! ( �Y�tQu��'���������������/4J����F�_d�y��zLw���Pym)��b�ƨ�,T�ڲҒ�왫:cN�#X�K�QY	g︢~*��%%�+�	%*$@�d�>m��C.Jy�Vd %��$�]H|G*�Y�46�؄�L�>�����CE"��ܾ��Pɥ\�K%�s �Qo�ι�8T{���TO���Ҁy������y���u^�V�'���8't��2�s�i$�~z�:'��#�
$�#�D��*E6��2I%8�3�A�g'Y6A8�hb��c��|�]��Q)UO�r v������@8��{rl���H�G���k"�@�G�^�����l�p��1L�&f�O�{����X4\ �4��W�_��S��c���쿾?�o�I���gj{��K������{��z&Gnov?۞.��xy/�t�,�(���:��d<�r23��2���D
�3,9�vMg$HdV]��Q#d74i��
�����P��"��01&�]e|  �K���ɘ�����_����vC����e�{��56���Fߟٗ�t��uf�VE�U`T5s��,��B�j��D���>��K4 ��Q�@9;���� H��2~{;OD�����Zʠ�޽<i%�<<4\Db,Ee��x�F��J��$!|60�JT8�E��3l�Zy�?y��2Q�|JD�K�N��LsL�uB���m��Q�Fc��lʹxG��8[x/�x=>�^n��/p7�և���q�N�C��P\,�yD � (��<�8�F��E<�| !q	p���$.�
GXŕ����z����F�%2��r���M���0�$���8�	$���y�#y�
yG�[��v|x�)�6	��{�B|�8XS=߄~)��蹄�0�\���}��\��m	9������
}.o%���:���2=�����p�q�\y}��<Ň���f���X,�0/뽷_s��C��l��L\���UJB-���:�92�m�4	��@`j�"�B�L���064-�o�����4�O.����|r6���9S5W�X��{���f����,5��Su�^{-S߈���ZU�FGs  4 �@�L��b��9�DH$�0I���M��`�m˩���e���q*Q$Xf����h!��O��)`@�'><=y*8�qE��:�.¦��9	�T.�?/���d�92�1!��E}��v̅��y�`?�#\�/���D<�,.�8�u��%�e����.5ꨜ?J��8�d(�!ԙ�"���3�:i�`i<vs8�I#�p�	�S�b��紳�0}Wߛ�g�{����nj��'e�w;�y6�����"/�
�|͑܀�`���#$��/�%�Z�Y�`(x 9|dP��}H?�z_�my��E��s��9�w��^����n�}�o�p�18�5�?��z��=ܟ�4��yO��b��|H�������~��M���Y`��^}�y�9��]wͼ�
&1`x�����d� &] A��� �${E�a':>,,��;3�ŊN���Me�~��yw���~��U���,��+>�~z�ӊ������h{�Ge�����c2Qrx`�/T����_>}�"�(B4�U�� 
Pj��L݈�x��>�� $ �dv�mj�h+p:*��i&�-�B�.͙ѵB)�?/������ʉ;���׫���<�J�k.�X��]�ȫn��E�ʹ�	W�.���3����#%���|��Dd{#��`.p}�[��gG��9����8��/zI����c�S�� � ���b���p0��?�@�6v�%�-�R��ݴSB��ӸN�(��&\�ݐ�q/>�����3���o���D����wد�ͯߧ������s�|���>��2k�Ĩ��f޵o   ��  @������ �?_���+   �~ �ֹS��� ����~H$wq��2����zz��3!��}���o9�<��bR�S{Ϸ�x���U�
��-��ۏ�k��;��1�Q�%o����/ �3��q��o � ���C�0)��a@}
6������W�3�_���_�i���CĆ��A�W���`�{�?������������Gt�������yo���c]����W^�V�͏��WW�/v���֧�كG�nͿ=~f����WO��������.4�� ��Ȍ���eզS�^Q��t��q��/
cs�ld+���l�h"�i�*��;6 �AT'�� ��24���$���S��@b Q�01��ЉQ�"�� ���d�"IJ$���(H8��G�
!>
 �:&6E��3C�!����d�@\���B�L�\I�:�t��u[�)q3�s�����vaF:�sr��^{ى�&=}Ɨ��O�\BY^���P ~��#Ð�$Dm?ڈ�j����|)�d��o#��NL{���y��n?'�+g�ۗv2��~�����akn����zd�g3ܖ��/���i|���z�� �~(�-h:���BF��]�2�O�J���>����HN����n�
�Fǃ��'M-���`p��A(ʓ�C@G@bXX �Ta��8�Р� P\0K����ʤ	��$�$P�# D@8 �@ 8T�  �(D��D�gGPe/������J�X���:#΄�
K�f��>�9��������Z����ݳ؜;�5���g\so�Sy^�2"%1�^�&�Q۟���s:\o&��F���{z΢X�ܩ4��I<���<�0:���7��}w9>���茔�k�a󴴞�5mb�cTZR���&u� �%�'.�Qy>5�˛������Γwtk��a·��!R�4MP��(��2&2,>.E"�`�P�Q� dl02�<(T$(86
FG����D  �HD� �@���4!5 ��]<�2l4(���b �N2��,!I�78����M4r�A��$qZ���Z�!=��N��5���d��L�O����j�60QBCt�q��.�����HY��8�p�Dp�y&XV�l�)̔�{���Z��t�쒹���7�i�u]e-t����cn��z�Ty�鲎��ܶ=i�?9��x��4�%mU��<�
����`���U�� $:��n5�Mml�T�;V�,���`a�Q	���H� *��L�*� )B��A ��Ǉ�@ (&�#�� 00	��1`�`(���@�#��n������l�,�c31�HR�#�LɄ�н�=��C�[�8A��uz&b]#�E�T�dI�V�0d�qV[Mg&+9h���E�c��f���3���rt��b�R�c������noO>���^�p�ࣣ����q|�6��gn*m?���p:N=���Iщ�B�t�#'b��/P �)Y*�1Q8w�06:tU0�A@�P�"$����Bh8   ��Ѡ��
�e@��  
	�<4 ����da( A D㡀�P���#1�   #9���QP�PH!�!�P�a(D�$�E�"�,9�P��@ T<=�jSŇ��Hk���w�r c����`?�
6��b-g���D1�'�x��^4<�~���Q}@^Oq`�p� ;B����]֝��ί���W���*���jfib˖%,��A�y����w��r7}n6�sy�\}�wù(��<É�~��#���b���ڎ4
 �|��0�"��U��=�!��� 5I���Dǃ�� �C�	!S �`b�`!X09>
�e(���I��	�K ������Yu:
Ƥ�I�����';!  8�@(@�H"8*�������@D4r��I��qјp9G�����j��E�k���	�B�D��W�:��:4��8�9F� qAd�0�z<D %�0������#u��}83�AA�|��6��b������|s�[�-�|x�8�e�_\���+��Z��^$�~x��\>ʿo]��U�l�.Li����8n�Q75��#��, kA?*��7�nΩԘ�I���p (>.���x�T�Z�ADB���E$K�B������G��� ��A��9T|BtL��<��� L @�� 8N�9��~0@�DA�P��e�*�PFiB%��a@�	j#*�:zI�� �ц
jB�� 	M�(tE��u�"!��%�_���g��`�ĝaX��~�����8f��ͤ�㾝����O�݆>���6�E#��ǗM��������Ҙ��������hf������k�G[��CZi<�.�QxAP�~�2���*�b�����a�I�-�(BG�\LX ���� �EP�w�!8dq� h �2^�@���M�"�,��"@��
�S'B����` ��D�U�T�((� q�xw\J���<$�s9$�P1<b�^�!���#P���H0��L��gy3��9s�̽��d����^����
b����I��i�{+����3���,��r��`��sS` �"�2�E�0	C���ϒ���rє��6�f�C!ca1A.� @�{�
�0 8,�
�pH�	�4LK�V
�$M�4!��n��1I�r�(�āԑA�R'�AHL�)A��i?������@JP 84�A� �����}���������K�+�4��-�{ �]���y5 �?�e��  �"�w �����v�/�� ��#�rp�_ KL3��ZV�،7�\Ll ��4.��0񈲙&�d	!�\���!Pp�����}	����@ 4 ]�A��XP$� ���� .�eA�t�J���DH�`�w���x�5+:�Q�T;�1�V2�1ĜX]�Sg������C�(�h��u 2��������@D$y�19�]l�����'1  ��  0�r�x��8�� �P�&@��ڊ��Ă�'D��jlr( "i�*"���(�0���`H�������@!  
���!�8�x�<��@��B!h �u
ß�Ru�9 �����JP�x���@/)��K�����	���t���@@ ���!@|0<��	�����`�,�&NL��Ȁ�hDdՁ�(x4   P�'(�8
# H8	�0�˴%:�w�g�������O�!�*a�]\:4����BDRg�XV�Xu-k�(.D��"�)� AQa�`XE�4�@��̥�T�OA�
���>����,	���I
�<5ʶ�*#����k-y �(� *�H�J_"���EH�G;	$
�A�8BQ�D ��6Ԁ  >>.>#�P0PP 0�o
�1�ShZ��P��@|T@�DD,P%�§���1����a��p�@2 @�f���M5��!��P X �V�$@!��� 4�4�#BL$N��� ����~;�r~HA�0(  E`bS`�Wy�4pKe���t�uj����xc���맾��&ц9\�GE�뾀N��#mj�J�`)��c� Xd �"BE���I)�ƃ�
�I?A$ሐ�00 l0R.�C����BW$�:�	�1p����0(�!�#c��1���F�<�� p�:f�#�P$ �CP -(  ��#  �7�jޑ�6�p�����9:�� >�"&+�K�(6E$ʣ�9h��a���E
� %���h���Ƃ@C!���@0	��!�dŇ���H0,�!"�b�bZ����A�!	 �3C圲�
%�!p�8��z���kgy�6ݳN�>���o��"=)L�4J �nk�d���1`?�ZT�����x` ����`��ɳA+	(��#QBQGlD�FR��q۸@Ǖ'�	�J5i A���&��u��J�Pfg�*j�cB�d�a`�B!����Ht��4R�@�ԧc �D�h0�@@� @  � �A ��<8@�&X3GƖ隠A(��hD�|�A%�H,â���� ;胠3�2"6E
�BJ8 .>�-2�́t�� �PI �^�|ѡ!��p�n@��8�^B�:!���T�1D��#FI� ��2ዂ�l�k�;o��b��@�v��Z�<��;K鷦ִ�C��У�8i�~������~<� ��"�ʨ9
�D�`�@c�`�\˶���iB���ϵ]�������JJԂH@�a�� �L�r� 9X0��g��-�5I�"�"&��|K
 '#PDQ�M
5�s}j��!i�ˁSBA��G�
Y�� �"�`�H*�dh���� ����@� ��oI�He���uH�na!"P"�l�� C����R�fO�ր����)�#�SA��H��V������p� sCdt*@I?��eDj��s<ݧDA��0�B�Cx'C<��[�]����ib�4����Y*p(u4��S��b0�o��!�����#����@��m�{�σ�ݱ�j���d��ʜ=�U��� �X�P��"�@�`�Ac� *�&�$9�u܅M=��;��}��[Єϥ9�9($LLDdL��X`|��T��hDH���G�������N��=�X�E�".r$��J*u-#�mgB�t��`0�lv��>��( ��
xh  ���@  �f �G�Y��<�D�Q0�)}��o41 �8��y�h�!E7{R�A�T�7D�Z8�j�L �-2ǲ���\Vr
+��f�R֓`f��Ǜ�U�BzK��S"���������sgr/ۉ�|�5�G���b�]�?�E�<�0�B+?b��y�'�X$� ���4�����DLĄO��]L�ߚ��O{��"�Km��l�[�q�������ӛ�2����	��na
G��Aa�;�!,�����x��9�{��`�x�.bm�,�����iu{��l)p�}.1���BZ��.Na ����(2�O�1H��������j���|̺dY�Xm]�Fkŧ�\N�r�� 5��,��X�΃�C��w�|�����V��~�E����~}:b7o�x\��-�E"�&A��>hF���'�a�́ @@|4<:#�}Pb	/~�4	�����ı4�C�1���������ŋ�nJ�������q/�+������r�fQd����\�:��9�'��|����"!s�
��F����t!��0�����[� Y��7�tr��*'��#q)o3��E|���}^��氘sq��7js���R��Uzz���-�J'�C�s(8�T��ǂA��������e�
��6c�89Alq���H��'�~�����/V~���*䍙��������<���j�W�;��Zs;��GEެ���Dv�W_?��)~^%* �E7�����/��4I��%&s��/ܝܼ�k|/Q�=��S�{����&��{.�jsz��Z��W�����k���f���!������~�.�sm5Y
�y\K�5\�yGZ�����ާ�W�uQ��8�?Oۏ�~�Z�w�7���3��y����vW�ߧm�Db'7����X�5��+_ܕV�W���+��j闱?�|Kg�����V0_�#�?=��y�<\27�#�����\V��2���E Z:��`"�p�  @�1�~�2�"EOf.yv�+ƒ�[k�M�\�������ߩ H�1�����B#P,���MXH�0�u\�M��2z��<`'1f₈�!0q���ζ�%w��&g�i����wT�`�����XG��x�
f�O�a.��K�q<2�}��p��cFig/�4	'�;A��ŷ8�>��^��}y�5($x�߁X�A ��;ڐ�(1���	ê0m<�?��l�����<#����g�篽��S�Sq�0����:T>�Q��a�a�`4Ǳ����kum�<]WgpCr=K���尌c�!�r'����I�#���X����A�r'c�sˠ1XM=,�xxv�e�Vð��x�&����0@�8\J��L�F�t�a�ܠaS���Qb"Q�tj��qd���$dX��ZI��yl ��0}�}F ��TP@ �q�v���9��1ф
�,�%��2�k9�� A@֡�C-��F;Q�[��.z��Ҁ��f ���NrdP��AӈV<tT��l�}֫�/C�:��_��Bx�e)�R�M��'��
�dM93���.D�As�R��|�␡����4������,�L
.w���,B�������T9��L��qHp �J-A�x5 m��f��kR��{���ۯ���h�'�6tn�c0,;���P�,ϫ�;�v�M���{ۛ
��T�t2%	��������醁� R�wF��qBs�6HL?�c�D�̾�VT��)V1+	���&+!M�ѭ�O�0<��,NPw��d���YÔnEډQI�)�E�#���~��N�>n�qI�U�z: D��FF��@��3$,� �2�b�L����LK�ѕ9W�+{k4C� aQL&�-ױ�m�)_�IiF���1�a.b�vT������0��#!@���ֳ��Σ��+��� �rNd=�C�{v��ϣ�fn^�A1��|� ��CCL�O>�u(��� s�1�DI#p._��T�a_�G��*�TP��>*�؉`!���1�8\cd�i������k���Ͽ��?�i�����I����β3�0D5�g8�I,i#3�%<M��װε�Z������^�ȇ�(Rc�� �eO�:*8���?�K-YZuOd���n8�"�Y<���F�t�TD�;Ls�Tjbw<��P8�$Q( D77�2� 3�h'�;�V�� L���8&k+]��`�E�q����RaUd�E��)B`Z� ��c�I�&�6���!��N�X�����I���g"� ���i��㳒N�pY�k�SBC�������d&��I�J��Pü���u�B�c���t���QȰ��U)���J\����a��E$(C3��0-��h�f?\(,��f���z���A��h�t�I��������8*�x(� R��6L�� I6��B(���_l��L��y+ۿ�doƀc�?:�&$8����4�x� h� �fz�DJ�o�c3k;GХ[��m�$���@�SF���4C1��x��t�I���S��l]-��:�<M�d,+T&��x��Z(�#�VbwE�褉�&D�!��L�,e��r6��9Kϒ#�J��A��1�	�)d汅0�IF�@M�=m!Y�&�S�Ajph0�.#�@�ARd��C�\ 	H�0���g� ��q��;�L�c.����Z�����CjhBK��,�h��$-<�L���P`;s�<���v�0��1t{fp^v�Z��N����*����ä�$o��,1V#�(�1!4ӌDӴ��OB�N��	N?�蠒0y,xzEQ�t�C�@�A����L`4_���1�8-&<�m�G˯���y7�?�Uu�a���������5�@�UD����j�	����%�Ӎ��±$9����L]��f��Z�6�"4�B
@�[D[���&��PߥX���>��E��D Ñl��RR�B�ӎ!K��L_I�����q�` (��C�/�I�q|E��moI&w��SW1��Bv��:���L��oA2�p��p�o��찬S�$���! �L'?��C��a�����C'0/�8E���!���k��8��"�8��� 4����2�|y�n���J?��&��S���4�c۱J�)҃	�+�Bo�K!'���0B���q1�)"P&��xlT*��ܫYf� ')��'Dc�Kx�8��B%*�����(�@EE�f*=(�b;�;G��C�<x�*^]�N�۶�W���H�l�F��a��$[h��LOr8�0����#���!�o#$.Xj����[O�Pn!)D���ū�f�4���k�������Ax^�I�u���qqx��ٛA9Q�c���1������4��ԧM��Y��H
�!R��v���H��vw֓���>�!����	���]rO�C��u�L�\�]2��i���X�M�d�y, ��-e�0�&'
�I�$�yx�B4F�":qr�Ји �d)Sa.�d)0��dH"� �,U,@c�/J��l�I�y�¡� b#Q@����1	�z�@�d�ȑ���zi�8�(�|Fhb�'��ʌ%���!�����h�
��p\��!���n��;���AA�@1�0*K�\��m�w���Ɵ7v���B�+�����_���?1�J^������ ܢY&�A�E%��d�*%wJM��7�F"2L�L��ق�t����<I����=�[C�7��
�e,�m�A�ݹ?�ڕ��ip8rӨFȬ����#	!O�O�L5}L�`;hg3if�cs���lf;XN����g�F�]����������(��<��Y�D9���2}�@�w0��A!,�c��h;������0؈�s1�Y&\�N������` ��#�1���!���(��i�F�N�
~#P |T��h |6���֒�xR�q��HMI�`V����h��O���PXɥ,��oH��ߒ�]n�Xvp"P�0S8��{s������?������#�j��=�����)���R���ҿ�>�D�wo����/��J��T�æ�4
&�e*�1����QT�嬪t�)�7F�Y��yH�p�T��
scf�F�:�8�Y��"@����Z���=�=�oޖ~�7W�>�C'�,����Y@DU����/�?������s?�~��r�Sݻ��p�}r��Mw���G�:�$l�I o?��=��C�����;w>���1[�[}��>?�h;�{D�=>�$�[sG{�<8���L~�`��0P�@� !��-��c��CP�Q�c���qq�������q��0�sB� Bh $�:Y tv�*q ͒$���D$�0(u�ѨbW.sx���.d��v��Щ���t� �tqdp� ��x��8��)�"�Lb41Xﲔ6&0�F��	6	Z��V
,c#���8"`l��N��6��K��1��et2_��J�HHI��h�(�P ��ü�+|�M-'�<xvR	�c"c!���.6IJ���px X�q1�Sc�a@�l�
Rǡ�X�::!&H�K5bT0c���W�qR��3������c�X�$�!9�`$�K� &�6:. 		
1G#K��&8t$d6���Z-a��%V��D S�0����� vi~^^�DL r>�&��L`�>*.<� @��%G
�46E(:sv���A��j��O�8u\L�<-0�4B�+y˩A�`��o��6�Xb0maC�S� N#��aD0�� , ����ĤH�AdL�a�`a�� �3��X� P��H!K���t��@��o��H� ��H0@�PV��w�7�?2���� 1z��$�c� @��)��@]�� J�(� PFb#�A�HZ�C�"1 �|���@�$�)��Q�Y��:��ou(!qT���8lB\"T���   ���`�L!�X 8..󏃠Hl�g,QiY)�X(�����0@ ���l'����Ó��|�OaЬO�&ډ#M�"<
�2C�()"��(:�1��M|M�,!m�C�&<>1��g�������i�������	�a�?�0 N�1m�B�h` ���@�@<\<\,06>
�J�
6�� �x��Y�	 	��~[A�!L�>~s�#(@,�y�K���%>�ۈv!��){�� �Q0���;�C�ͼ@	�s�'�c��K��j
�p-{y?�sG�1
\��A�D2�O�[y	n��t@�>ߧ�W���4�Ĉ��\�HN,s�J�"Fδ1A�A#@@0$����!������ ��O a��� >�[�H�y
T	�W)
a �{�D� ��y�����
�'ʃ|�W�8��\���sp?O�@d4���/ic�g/�a+A��z��p�d+[��%���L��8���;G�M�1��[<�O8��r1��9�k�3��!�\�Ó �C��8L�G
ȴ�**�.El(C��x`h8 :AD
"D�E R��DL((. �l5� ��	�ߛ��� �
!'�� p� (
`b��|���'�K�+<��ƕ����؋S��	�<{Q�#��r .4o�g>"��9�)\�t��84R��y	��C�9B�N7?e_���tp*G�CL~�[�����KHD�_V�
R����� � h ��; �X:H�� *u�w��W!o!��׿�$�9�p�4�s��S��a�(��͆'�N�_
**5g�)j�8	��P'���D��L�L����I됪n�͸�-E AaP�[><�8(x�wm q� 0�(G�C��.�!0����7��۝���/���#`��d���$ғ���'�짅+��U��@l�����]|,<��\&��se{�ꓔ�\��/&C��
)��dT(X4 xl ����
D�%����[>�L ��0��`�����y㬮����F������@��Fk��S����<
�-��@�s�L�BI��tE/����/�0��_�-�{�x�=p��~�1ӹ�Pؗc�̛�$
�a.���kgq	'2��8
�H-�K\��(G�	>����\Çh�[����Ops�&���y;�� 0iJ哕�!@� �0 �?�`�u�]�|gr���}������|3�� �.��7AhXTt�hZC�.j�f��X2�!=�m8��gC�L$	<T�G�1m˄ p�� 4l�$�i�J��������Ae82����
� 64�2���J	��Qh�ϗA�*�i�z/�6j��-�X�T!ѣPD�pɲ�<;�@��`�� Щ�O�8�88��[;��顪�^�XMUt�,,P$z)�C�  : ���"���D�*i�l�p���A�#�66�,RR
�N$h12@�N)����8����tG�Ά:F��v�饅�TJ�C	��Qg40HSBL&/��j7� A��1�����-���ҫ�k��A8�p+���b��fG�	w0�۹H'5��?q0�����U'��c�i�:��q8��U�c�6�����I.����	����P�L>DVs[]1 ��@tF�O6�>B����c7)���'f�ɹi���}�i��;>G�'����پ��1��`���׾|�MB�r�"踰dQ�k��@��h�Υ9�����1" 5)�6}; Q���D(䀨4#BB`PQ`q!���b$B�
��0  ��C`Z#�(���rn�<�^I�VH��El�$� @� t�@d�c1�G ��� �K�,Un��Ȑ6vBY]�F(��Z��4"��B�:��� T�0�視*"4����ԓ�2���MUǲ�O8	KYx�Aé٧H<q%(�]�$	�0A��Ĭ�c�r�KG
�J61��� LL$NH�k�c��P �� %�0��@E=��E��<����EM7q#C`Z��M�k9�$�$��LOq7�H�K��h�.��f~��$��/�O�!�;��G��]��#��c�
�|�7����G	0ȜF1���     ����p�ô���=Z��Y�n>*{M8�y��U�M }�f�y� ���C:E6��6&�G���9Q����&���*�f��졟R��f'��f��%��=`ʴ��
��U����E�<,�h(��PB�"�A�Q :I��Gh�Dղ��I�D;�|ʠ`�g��4��d^l�$���m�]Vw#�ߧ���a�Q��ND��IC'�z� � d\d�:]rd�P4'���2��3�V
��\e���:y�ĩ��<=(��P��H�2�hD���_;q(Q	����J��e����`6 jREY �"���hH���T��H԰�QO�$����P5Ё.i� %��OY3���'�����{X�:����'�<ˑ�X4r?�����u@�h�� b܉�iL�S6�b��!>��?�+)�V~˙�H4��l~K?Gq�bs��y��ȕ���9��q$oe>�Q��V欠~���@���0,#ϣ�Lbm.]��y��+�b�N����}v_;���+�T21�����w.����0���4"��Nac�
�8�,�`:;p�q��4�0.:.�T�t��$h�A�c�Y@� ;Ӷ0BD�b/@i�!Q��� <,&4 *���H���(�a�JxX\\�����
�e/0�|bPF&I�(E@{h�]i�uP�&�N��P�!^�ؗ[�D G�.�L�Zt��@ )�&'v�dw��i�Xmx���!�/�g�vь&��NLF!�B�ǣ�N-:	�2:����4�`��,wꍒ'3[N�1�}T�Ht��͒�H�k�YA\ I\��̓�no�n���)�� 1H� K%	6�M���ь�1��L^���Ǆ��:� 
`>q�Wy?C�[�6Ug��΄B`�p�Y��� �"��C��@#��@�~��0T3�� �Z����`3��p>�P���Se._0��(��?��N|��=��̕�eOê/< 
�`�Ҩ^�C�Ӝw��ux��:r�Ǉ��#U�T�)'���m_�I��Z�M�������I?
a�����Ǡ��!�d1'�;.�F�pDG4���ǅ�!C������#۴�q ��b���" ���G����I�џ3�<*�4b!��EEh<$0��o)h�$tX�(�����E�E`3�)��mgG��6��a\��o�	���%5��N�~H��aR� �#)RB��\Vd@k��.�P���E���c�X���>2Yt*ap�	K�8*U�aQ(��� �M�<FPBuc���T7}��Ĕ��*=:�N��P�r�:S�Eiu(v��!(�XPT��j���FZV�l�� ����=�.9$t���LE�F�df40
`�E �?�\��y����?�Κ4S��� �d:h��g��Րq0��P�$)b!�ш�B�<��-s9Mp<T\2p|L|"��Jq�7>����2촼+���c�m�6��sT/=���}�oc��Φ�Zʴ���O�,�:r�>�,)���L6B�<!��cv�y�>R<��~@�Qc��B�X��$H2��5};��p(*���a %z(2��  �Dp�I�J;4��| �E�Z�� �p8��?a5(I���Ȕj�o� .yv�x��,I�T7�	��3���N����h���I��i�,�.������h�ƴ��x�8���=6� �*,XD�e��9\��	H��O�R�� �"s���6�9�d#M�L�a5b�Q����>��w�����{�k���Ϧ�s^��2��U�P�]�-��5��Bz�Ԑ�|	f!SX�+̙]�	;16q��;�T����4U\��4���0���������~��| ���%R�QVi؅pd<����**��O�."ltBX����pP�!�0��me��A�
��"�b����v0��i�E3Cp���Q��B��b4bVoh���ѶF�a"re{�it�����ٶΜ�M�Q[�H6�4��ˁ|=���� !�tc#c�#B�#lyA�p��{T'N3���!&q<b��E� �F��ma�P4(.�u�[�e@3�q-���f"�g�%�%*h�t���$��}r�g����m�ȾLƦ����B��JI��ʠ ��37`a�|ER��`,t���;�S��:x�����omk�
�\RO�<4�L�`�q�1L�W��0Q������U���><O�ya��q�����(V� <wQ�RLR�*Vs��DN��uN��o/�|�"3u� T�ʛF/W�Td�N�,�[Q���%ְ�)���P��y��<��=�Ls�(S	G
W�	�:/0�K�����c�z!I8�� ���"0���%!%� ���&���Q���`�FE��aC�(��"d����c�Ј @\R�e���ĜG'�@�X@T�Xg���@C� P@F(�HV�݁�<�׆��Zkd�d�L���Xj��2���y���!]Ǟ��f	t *,�H��e�q���!a-'�F襝� 1d�8�Reב�s}��@
ĐǞ2�(����� ���QX�AI=���A
4`�as0�����y�|A#t���8D!���D�����9���SG<�!Gv�c���-�(�%�P���'��?�~�߻[��Yy���k^�FА��C��y�uo�ke?��C�c�9��T���Vk7���xv7�s�����y�5;G�?Rx����g�#�S���2�=D�O�P�W��+����$��|��\r3���^�O�}w������B�y?�ɹ(�ZG�z_�.���~��o�+9���蟺����߱��>�������{3�N��.LΛ���}r���Q���=���K2��V�$��6�bW˿dsP^��P�t�H��ҽ��/�W3�ܳ�����<u�Uo�.N�����'/x	�!�iP��q�}fBB��1�˿����� ��|����D�X�h��ј��1`WO$zd�V0�|�"Lu� ][�ЏC�49@�&PE,>�D�ؗ�Ќ�eͤ ��N����-�����a|�T����[t�Gng�� � T �̔Y�! � ��q��BP�1�)"��{�M���G���(r)u$���|L'-�#�P����(�&F�
0�}p����2�1���<������<��z�+��������u����o	�E�.:m<ų(j��nΠ[�aK�V3���a�2�:D�\�(����i��K�������L�Nu'k�2]�JZ�p���	ĩ�s�D�bc���xvRAN7���6�k��͔)'V�����` a�A�EOY�\E?�!)�.N�t�-/i�eӓi�h-�B)2[4���$k�	�@"�����pl�@�IoH0��b2��E�>!��jw����h햜����i|�'}`�{:����� -DPx}�R�H=6�)�<_3�հ���-!Zp��4�C$��}l�g>��f�ý�f��EC]���H�!�2S Cܥ�&*�* ���S(��:��1�m�ld6��0�>�0� U$�3�/����DE^a>���b����������#����3=�_�����o� ���H��䱈P�cf6˴���)�|:rմ�`�3���ٌ֮�t�$U�KT��P7������y�ߦt�d���c�gh�A	�4$)h+�w>��8�+�@}̤�8��Q��L���ZF㾂]����)M�g�|��"#Q�ʈM ��$�Q�;��*X,����j�d����0` tod������&�'��@���yq�3�]�)?O4���Zj��p8H��MH�I+��99�;�e���
�&�r���˥68 "�$�7��4`aa�3HEh�PtCƢD=!�3H��x	�$��,�d�P�	�����DPazʌ  �;G�#DH40�J�V�B��c�)3�Xb g+Ax�S�D���(�`'�d~ O/�d����
]��>jI�IS$���l�������[�O��Q"@��0	"��@�Ox�u�A�(,[�M��WO_a;8 o�؄.W�\1ʭ���{�z�ײ�"$jGQ E�D��L�˴w.˶���WC�A�z 8�l$��p��]��a�f D�F�bZ��Y���Z\(x��0�4#��ZBކ���3gry�əUJ$��T�?В����5T��1��^ܠ�K���N���T&���D"���g���s(�r�O8Ţ��rJ��k��������Ʀ��҄)@Q�'J	�A 6 ��K9r�B��S��B�p�X�a0FJ;�! h`z��� �E��|��r	��$��|�X���"㈲� ,% A��-}<�K�a-�PȼA�a@ �CD�*8��/X�/S9(�ꔳ��5�������Cۉ���01>A�(6!�=w3@d06��0�ed1�ig��2�iR��Ep4 �� ә�}�3s�Ǳ��W�k�Q>�GG�a��Y�ۼJ5mM�����f������h��nAd
9O0�N$ܮ"�(�v�L�e4�LBCQ��M�e2�՝��-ڔLl����ܛ���g��n��� ��/�y|fj��g+d�ωP�6�,�3qg4�Y�yl�ɑr4$E�ĒI���@�� $��D�BD�I+��D�ܻI}铪X&�t��H�0(A  ����`��AE��%RFa���c�E N'�t0�gIф���c�"щh�a -@F 4S�S� l���*�8qJ(��7���t`���t����i�b70	�f�����3�u��2x4>�;֒��Gad��P0Ͼ���ò�q������	t}!��%��	x��@*M/]�&��\��-�)�-Ӹ�j�5|k�V�RP(m5������ k���SW&3���ր6��,1�K�������`�t$h ;���c��� �bw`^/�	�Ǖ��'�f���vf��uQ���+�b�%���p'���t��jwK.�&�+BG���	R�[���~�	S�a����B}��en��4�ٺ;o&��ƚ]z�K|49�U	�/���@  �'�`( &��r(���CjD`k^S�~T�
 �B��)hXDܼ��Q������ EJD����3I�R�}.���o�6@I��� �]���P 	Ƈ'$G��T�X@�"Qx��r�����fiVr;���́��9��;�q3�y�_�@�'bP �_\D&y�<�It��O)�KN "y�6�ǿ󭹗ax���0�Qtq�c��AQ۹LWɬﾁĄ$�-�	nG'J!l���[��Rr� wu��e��$t�N^�#&U݅�C�?���k�O�	�Cϭ����؛Y�xy��73[:�L���{u�U�ok�I�:���|M��LB�`�|�"M	�q�5bn�V�U��L������l�X7�2�XP�2`o���ϣ�lG6�����{tv�;C�H;�����`�~������  H '�a@��B�����Q9�D�'AG��#+�qr�~��x` &�bh ���'D�#�B�*�$6�(X��v(�����$`��"(�.R07��h���p$�u�pq�r3�S��u,������6�����-fA�,kሳ�6�|�N��RF�0��e~�Q!�1x�M����C|����d�>�Nf."i2D�|�L��$G���F Jw�<U��k-�4��dҰ�d��e��\.[d6��!�C���k	����.��C�Ec2+�q����2@�<�ē���T1\$vu�%�}X��0@]h�A�C�Ԑ�!m&�(6S��֡WF�S���F�-Q4Ze�5O�XR�3�ٻ�>'�&��eąӭ�Lt>>	*R���/�o�M!
!��$t�J``�O6qt��I��t�M8��ķ�&�qi�
F �(���P *����C
�N��A�+�r`D,|lX�d��� F�d�)�@D j���IN!�7wV��,��@���s&�+h�&�  ����S`%ϱ} &~ ��W���f  �9V� Đ��N���G�_�%�鐰K"��#i@A� ?���*�����~���� "AQ"�R�8,��W�BQv!��p��N�A��Q`��ä��D�!�D"�H$�+$H��Q@� (�ш�8@6��*�{�o῅(� 
2m7( ��  C�hDD  �H�G���(�ϛ��8
I�
 �8D�HeX8>#�d�Pp@(��`��X!�$�PI�%(� C8� �!�0 B �q�!��Q�|�0
:�8&�: D P�£�a�Q�ed^�(>4:��YPj�1��DZ�   9��a�D�a�`0B@08*<�.����'"������L� �H�A�D�B8b_06<,#��x�`xld\�gA���1C��z1C EQ����
X8D��(���Q,%J�Mz4�ig���`��G�J�8e(*�wHC� @�]#��d2p��&������L`�7AQŌf{@0��b�	���``<�~�̀L�pT(*�8
� g!����B� $#��=�F �t�\#�D@��8�&!��.��LHQ-�� �Ia���<�`��KC(�|��3�TҌ�!0T8�q5���J;0
 � 1BC�ne/�G�2�{yy������qаx�ς�Ą�JB���"�###!�((�(YA �p}�&�,owm�>֘M���X=�@�����?ī<N�����l�T��2��Y�l�?P�9��yQ�	�� �%*7Ir�P��y4����i�4�8�B7U��|o׳B��L�y?o1�%���!@�_��k��8�崜�jU׋��0+�j�e�T����:�ib��0,"n.�8hh &�$yD�\@�E�JpN�,a*zD�N�@M7R%"D'�@� 0��!����`�AQ�@{ C`�b���mH0<�C�PP�ƀ�<B� dJ@��a��I�P$&K�@YLa���0�
�(�`@!)��yL�������w����m�������{<J��_�i~���CA4q�� ��n|�@/���y;W�yz���w˩���Ũ���8���|N�3��a���uΕ�f��9��x/o���&��3si�^�Rd�f:Sy7p%�� (H�M�����<E\���f��H.��E�f�`����W�bkP�ؑH�QC
e
�&�a�4��<MGEb�C� h8�	��1�������r�����C��m0줒�y��f6I���^��1�L�Qr���'���֌���y���Gx�nwi/���Ŝ�I��*_�E��_b�p��xj�R'�B򤑴���e�����J#/G��/��4nc�C��=4��l���
��_��<���ɔy�<��a2�q��q�t a�
�iS�U\B��̡� C�C�D$4l "�@� b�KҖ�L@� �h�4r:��ba� �CARå�0�\ ! ���	I L=��lގ����r	b�*cR�D8�o�]�H�K7��3���(|��\�O�+����("��i��ed��1#.uﰬ+|�?,=R�^n��u2Fxp0.�N�	1�@�)p�(K�j#Y8r:���FŤ�������� ��ÓDr]ɥmgڗ9H����݈s:�e��9�&N㯜�f�����H0m���>)�`.G�����B7��ē<.>Qt �J���R&�������s��p.<T@�f���#B��R�Bh&L$ &��п? C��(� ����Y~����I�PK?���'έ<��4�L;:���p 6S�6z9�A�##cӂ�D
 ��u�(+<�ݰo�N�>���b��8��<c&\bV1FyL/8u�9��R�%9<��YaS�`��a0��L����ә�=��u��l�к����k�� Uó<f�g��8��y��ܡ�̡�f�� A��Ͻ|�|p1�qG�N�0)CaA��$6&>Q���C�ۤ�����u���s3�b ����಄ki7q(��@����B�:6�	`y����P hA������c��e�(CxD���B�Q<CyƓ!CE:q `:y YZ0(BDQ"],�6}��F0~�����G���^�SB�ZbbPG%$$�6񐨔�8���wZ�Ǵ��1{�
ƌ�6�x7)^�a^�ñ�� Gq �2A��dB�m�a��j��]\F�o��xnC�X�`/yB%�MaFi�q��qi����<�F�j�����!v�p"SQX���	��6ۻ9Ze�����3��qΚ>�&6�0br$oNB~�u\��Y��N/k B�8�3�Af�ﰴ���gQ(�`��OL'B�i��"�Z8�a ��z�'M��K���HB�W��X��-��1�ƣy�w1�"����g=+��R�̢�@�����~/�^��0�NN�~X��c�sifw�Ωg�2�nL�e"���q��О�{�@d?Ʊ�.��S�^��#x�^N�CPv��aTИ6���������	BdŤ@3�Tr4oP�d��}�K�3�b"�C��<��&�#��4��NL���'*|���7���7����C����T��M1�XԘHXk��=`1�����!���,��&ը<���,��jD҄�<������T@������*.��+�x�� m�#�]�HITX"c���C�����˶\�+8,�+�6#�o��]�c
OP�0L���	��[�'�t��><f���Y�F����9%B��0�.V�ZݶCG�D � t*f3��lb8���6U����^��,�̽�@�Z��<����p�1���"Tn���Pa:����H�mf
;9��|K-#�C�������%�`"h/�Zg��3s��4�򋼛���o)�,eNe�ADƓ!���L�M�	�����	��y��Ѧ0�"&t A�xH���  cV�Tw�jI����+>]��
*5��I��	�J�N�A�l]ȑ��B���ʿ>ZBU��Ij�$�+AvM�B��"�������z�(o�_l�C ���f6�w��c�t 0�q��x	�1���B,긒��SÙz&
�&N[u� ��1�z��
kd=\i	`�X�U�>3�J0�����DI��L��q��8�6�����w�w����my��YME��r���L�x��E� �W���P�nY(�}7Q¤�2
�'Y�1|�I���f.3�34��K�.�HDTЌ�� |\�����[@�
������������	h��������3��gފ�pB��.� ���(J3��G P�a^��Cl���a�g�n�c�2���Y�L�"L� � �T!����-��$1qRf��؉�R^�7qn�!�)#C��_��rL	
.�@`깊+�0Z�X��d��;��e�0qP�dt�etT���F��5\RL�F�(�H�#Q�3�S<�2�d��JٌI%���l�O��p�a6�,�6�D$�]`������!q�
��������F�iG3gb�:Q�P8�3�'��&S�W�B����˸�<�Vã�[9�?�f���'Y���m�rc�B0�m4c�X4�Ø>��(L�D C(�7�/قI���5�1�N���&��)�R$�Jc�a1w��!Q��4S�v�p������"����T��VN`��a��A��F��%�i5kX�,���
��qL�֧�$G�0*c�^��N�G��x����l����C��8����i� A0m� ��Х�{9� �EFdD��`�2"q4D��&�	K�����(�P�=�(SI��ox�Q��Y���Ef�8�.R��G#��!X<x[ '�DF�S�2��lA �Ej�!��M�-��YD����0�d��<�0�c´!�(�1;X�4�2��0�]�:t�a'6��h`�����2:NR�L��P�����8��85ڀ�	�p
,���b�2I8J� 4X0�$ '6�7F���m9xth0>��1"\��FH;��&��P��2��َ��!F!"RB8�����@a
�� �T �([�M�u���8Yj� p�h$��F�ӏ�X8vp�lA����c0�2��2Anc����`� �&CRǠ�n�(�D��Z� Ed� t$�tp���ď�K $I�F�%�6�(�
8`6���D[,�d�J����S��>8�d)���"��M;A�pɒa".X�� -� %�PBIOb���xC�@x"�xe��.� ���+���.k���0�08v��8PLeb@>ECԘ���`R'�*#I�1q��0Q� ���rP�PD���HX`<�Tb�> 
�>���a��8h�**�@�2�@ �g<S�E$��zo��{�Q�`a���a�"�����	�A����$)d���@�b�C �H@
:�]�9�RŸj��R�f�����#S�������׆B�
��P���I�
 �='�NQE�B��;G1ď`� @�Bh�iIc�ıޘ�H@0@�, �:Z>n�+[~`�,�a�CG%N!A���h�����S$A2����?��
 �@�4� � � @"��hp0E�pt�.��:�{�W������y���JJۙM �B�6L�pB<D.4�����A�����R ��#�&��	�B��h!�D��-pTH��p�"�D�D��%�D� !�#�&���0�"�D��!$Ġ@��e�r`l<�DT�(�I�d�&���D u6���=D�%:�<A�q�� OD$4"g�{v��"@`.��b3�Ø�B 0�t��D��0��#�  p�]�g��, d � ̈`Fi��Ca��|�}��g�L�hdP�����M�bQf�؆�\��*s����L<Lh *8Tp*S��@���I��F@�%"���; �*�p�t3�$6>G�$���x�f���N��Tqɐ"���&zۗ�������p��`�	3�%��&�:<�4��X�1�B�: $��S�c=.�v".!&*�sO���H�B�	�8��� 2l��D A .��K�	33U��  T�=H ;�*0�� -C,2    v͆Mcp�HC�Ў�v��'����f��֐���oTH�Ƀ�E�@���D�.B����Q��cE$
�:
���G�ǣ4�0�w7Ar d8���E�P��SA������,�2���!>��YI����Gx���F&�1ɢR�Ҩ�ܑ��c�������6=�$��@h�	1��l���Å�Y.g�: E<�HR�"���������c����I�	� g�gg��%�b{,d��m�x�D�`|�r9�������
"�X`��FĄCjfB^@Q�9��)0 iy{��W�F�Y! ��FK\�!���Oۿ��.����Q��i��M�9	� �0T�L{1��b���T+������F��@D�<7��=�q;�l/�(>%����x�)!�1�G�h�p3�9a���	���Du@
FG0F��щ��lR�dRݮ��%�ڀ�N%���J�
!�q��$��n@3i��A�a�H�P��$�:�rӈN�$E22B�Q(�,����(��gY��� Q��9��l@��� BQ� `**>�3��@�8�@� -�o/���!׀��o`��c�(j'�^����o�B�����`�y�{����b
�0�6]0�`ݜDsf�,�i>D���b�v\�bqr�5�8�"+X���e�@�	$��{�}g&h¤�w1��8L#0�ݰ[�!�C������6>���rveKx�j.a_�^�,�P��T���О�|U>f�/%��h��܃ąԑe+ߣr�饃�x���\"05��YNeI���x�4-<A�W��
s8�6�U��8�,K�sT���I��)��9*w�+x�8�Qf���,b߱��_3�` M8� ���	GԙI�!`�ִ1_�=� �-�o�������CB�� �� D���]�Tx_7���&?9�)��l�����>�&jxX���'�<s��-��	8ld������|�%�@���}���r
��ě�L'�KT�9�W8�h���Y�;X�&(���'�J61���ʾ����v.�9r�f9c���R��J�)�j����%��<+W��1n!�˄�[�e��`�0ϼnD��.�2�nE�������^X�'r:��!D�o.a>�6~ϳ|��b3{�I#�l�	&�v�e+�]:Y�9l�B�	��}l�w�����Lc.ws4^���&^c4+X�/�� "0$ �H&��d`A!�����J(�t�� �D`H�0p��?-x/��:��GD�]���UnZg#0�la��Q���<$#�Y�q�C��ɂ(��`Sg/�K@���tp"s��q�\��Dy��ɱ��
��&ʞ�����)s 's:s��B�g�������Q@!ĥ��I�#<D�4✅O?��A�����|;\�'J�ڌf?�0Da>&J+�X�8�L��c�f
.�cr��,�PH�^n�� A�4�s<�n�\R$q����N�'�s�A;�H|�4d�s�|Ʀ��X�}p���jO���0��0tB&�s� D"�s��8��B������w��<p�憁O��j���@ �{��Evj���{w�El`�q*Ĺ�������V�E�?�$ ��$KX���<Υ<@7Qn�v�&�������(��aB8�#�=\�
v��X:�& ���I�*����A�܁x�@>�s/�'��l�=�q�r�҉��|�2B�`�q�S�f�gL׫�E���
_�;�� ��g�Th'�
"F�V���V�Bc9�sE�+F�$�p),BgLn��\�{06��-�	� ����sO�i��=s��^�0�� j� R �B�Ql��W3
8�F��#��)�����#%8GI�8z������r�I�S������@ ��Pp�@<�@��
��d��(I�P7�D4*� �0��U-W� 8a������ńS�!��GHR�D�	�wA ����A1��ĝ����S
|��^  ��� ��3�AN��3 J� �P 3��F�p���`$��f�P$:E,&> ��@� ( (/���UC"Jt2 �� ����'�>��좑4!��G��N�ăN��-hf`g��~\��|J1N�O�d2����� #Ng�Hs_c;)p8�z�C8�e�l�d>�p(�������?��8�&<&r7r:߲�ߣ�>�,	* 6�%�1�A��v0��)�<O�<�<K�6F�1F+/P�8^�r�����~r��f.E�#?na}���qX�V������CC��frL"�S!GS�f��u.d?�@����};1?x(`4�r�@"�8�ArS^�.A%b�q�	R�����M�4�`��N��,���D fZ���}v���s�lO�,��ş��bd؜��<��J���\u���$��H]�b��s*��Ш������	���P�B  "�`P P�"<�&�%c��D�N��k�"D�Ҁ$���
��0$�� ګ�"��hP@��{�6�1F�8K������/���4��;�8���q24�pE �<�aD��Wq&�� C�&l
�B����A���  g-�g9Ungy����b��s�8�`32s�A�a	�\�N'���-<�~T��c��G?� PA��F���f8�>F3��9��|�QY�Sx��'�L�ԉx�y���!L��f=�p27�A p�Hs �G�R���8;��"Ddk l�8���*�e���oXF�8�=ye����_�����B���l����Wʄ�e#����I�C!��	$ �2� h,��V\Z�(�Q�L\x 2����YZGq9'	e ��ʧ�
2,S���$� ���a����Ê�1_�3�Z��H= .~��ظ�q�� �@�h�@�Pn� ��☄h���8uL| � \|t�4 �^5`P���}ZE8���,�����y�R��lc�	b'Ef��V�hg"-xl���Di$�ZF��"�T!���|F`1�m�XB�9�"�܎��<� (��bn��:yT��}T����(`�z*)��(S�袎�����G�"+�� M�e��Y���3�5� )2�Q60�4O0���X��,�Y8= �� At��%�t����B3�A2�E�&3O��I2�����II ��"����h�S&J�fd�b&R��	��1o�0u01��e�6��"�2�(a�?2�|J�}9�%|F�:��ϙ�t�8S��$v8�ı̥̖�?2F�Hf�" 0�[��hX(��6��8YY����$Z�bN~!���T������d�B�F�gr��	b��pFL��J�@�+�qܑBmC�g��Q����#d�lC�� <,t���uh�,D��BI1
� x�	� �^��(B�C�Z��f=���q��Ok8�!0aёp!8�0�� 
(X��8Ԑ���#L�>>�&��̇0J��x졍%�Qd��c3��d
#Щs,u��� ą�ŢD`Q�i'D%B	�
� 4��`��Ly���&6 X�&rpZ�ta�<u"f��f�����|6��~<�2��� ��Q<x,��q)�C���F Ȝ�Vރk/
�H��u�H��8¬cB|�n�l�#>~5S A�<�"�����������\�S%I��G���s'*������0��ٮﱞ�he-�aq�(��C�Y�Ņ9.�!0�P|bL\��(H'6fjqwZ�V �Z�s�9�ܽ��" �1?��������~M��,�m��҉3'�ͳ��Nԡ�Ϟɾ��g�k	�)��Q�A�h�Ga"� �d���e*
��iC�J� �� N�M�A� 1��(p||8���ОA�	#�nzإu9�x�Pp D�8�4Q#R@�GE���IB�(�! ����F�ŀ����ǆP�A@"T|4$��0&!�h��)�A�$�Ch���@Â:d�I@�C��)�R�O	�:EP�GCŇфB�ad!>5TTBt8�� B�(n䉑��#v,l 6~
�O��<�M?�A�c�b�aÈd��hĈ�� CԒ��B���� ��'=��N��H�Q%O���P�G:p؍܋̵��ԓ�Pn��Ky�|�s ϑ�g�q!��X�{x��Q���2�4�PȰ����XDO�Aʊ��f��{�C�bܡ�%J?��ܧ���.�{���}����Ln����g���3c�§��� �)`���
��  ���G�@���Qb�v�� ��FR�� � |JĈ�@�D���U�(�hp4�bh]�nD��I:*��4.��G���" ��"G�Q4��A�Ht|$c4��!�K������B�10>��@ACp! �� �	B�%�E�e*�(#��#�ѱ�ᒂ�"�2A�|Q1� 8PL$J�L ��@��ź ���M$u�A#��@�4,&4	��$�K�^�`��PA�Ajǯ��J3O$�"���`h�X��.`�L.�jxn��tnf2gpU^i4q=�R���.'�lA"@5�4�$1�%�MX
$�[}h8�e��ɶ_���>o�4yz��h�76.i4� d .�c�x�U#����q̸��3},�����^B��޽�>u����`2z��%�1�~2�E�K�%nc�Ѝ`�U^;�GH�r;�dP)�1A���(d{���	 d	/ѣuqh�GbP��&� ���`��BƁł�  8`BبT��'����
!�N�$
�::
!e�(c�G�F*�PfQE0�|4�8HL� `  ���B�(�ǀ�B'����B����� ��H#�B�6!5(I%�a�`*t��qIᒠ
�0	��3)j(!Q����G9��  \4Y(|%D*(�F'I�*dਦ�F��u��f�FE��@:Yv2�>f��+��	q��O�B�n�������S�U\I��~^ǥD���1 ��
M���0a	�a���H�QlFѦ6���wKC�i	6�N$��?!��  >���[�l{m��MX��ሹ�{�4��l=Dh�AW�o�'�AWS@o��K(�&_�q�@@~��[���|���fq��D�id!0���sp��y�eh�a �0����}M(k9 �4P�`�	�⌑�_�Y�� H,jp8u �!:Et e284�K#�)�҆ſ�# 8$�(�@ ���K;58>.L�*^��������BB"�O����jf:�d�;U'�F:����D������=z���H.ȑ�1�;8� ��`�id8r��2.��ƥ�������rDn�MV���`Kl�F��ĥ O �%�p���:�6x�bpO�2���x�/����^�*!��-u�>R(0 <0��Ҹo��&P��s�O�(|O�������@ ��'t.?/�*�)��^�$G�mS�_M�R�L�6�2)��Y�c�ڷ��]�C�Uoa�̄�]�%_z
dpIR�A`40D�2M���J�	@b1B#�JA	P0�A�G2ȪH㚾����f�O�ϽF10pP�H�GЀ��(����T�d!T@�XT�4�������4aX " �h��c�aQ��:����>b�x`0��t_��,-�h$��\�� *x�����ޟ��fX�SɥܜW�$�\˙���}�8�V>e���c���:&�JL
�mb`B�l�<���DA�6����2 ���$ !I)	%��43͗T�<�)�q n��*{k�S�iˌ������ǃF�b������T�3g6C-��^��/�2U�ȋ\Li>�I�\ͯ�-����5��2���)�� ����<���\B#_d��r,���mt1��ٌ�Y8�&�����2WSb's8���x����/�C�B2�7A�P������1��9�J%��8������)��R@떠� a$`8���8X�����L���3t�"C�K�g� ����0X�w��B��)%�a��Gs{
w��pQ&����<� `�"�ߚ�aI>f�a0�0Zzӱ��c����ӊO�6w����;8t��<@��p{���ݮE7�K��Е{Nٹ���r �g���*�`iS�����P����aI~�	�����0�`�@a����4�~ng=�H>��D�d%?'�<��Oy��8�[��>�m\B#�q$%ƻy��cq�1��A� �,&�^����������|��������͕�ǭh�����*��-0Ng[U?o���q.��+� ���0a��5l 	v�� l~;4(�c� L�y �9�d<��;lh4���Ac�U@J  ��QB!�
@�i��bc&�# �`!�hL\���Cl-DF#��`a���+w_�=�ƾ�Iia��k��":_�w����D���)�HL��EN����޽�*��;��m<׽  �y��ê������#i1Y�*�9���Wy��|�_�r�`H9J��h$���i�p~�(U�㷜�Wi����b�,���#�_��G��*f��&fa��FH�8����8�N~�<B�r�`s9_��o�z��N��X\�7��h�� �8�U���Yޏ�/y�V�L���أ�Z7�\\4<84���I��dq����2,ƀ��d�� ���� ���<4q4���@��z�$�� 
�`��|�aaQX�td+�)�P0�8H��^Ά�3,�SҲ�|��x�H�]���V��e��7=�-
Y��Հ�3��\� DE�o  ������[�✀A���s[+m�8eb�>���-�&�HX��Ȣ�P��$��AB�������P�!��0D����#�4M���e"v�1���I����q�l���ad�,%Z��p�|��Ce��~,����$�c��Ɨ��Z���%t�U>F�nS�DB��
�պ	Z� ��;�MP�H Q��S�(u�ԩ�V� x<�R�E��C#Q$��@�069h �Q�Q1Q���$;����\F���A  ��{���O9u��S��A�$�rR����9";r��+(���"��!GnM|-"��g���ʸ-B��<�����^s�G
K�.u��CD�@�GI�� pp�HB)�2��E��������Q%�O�{�A��g7YB�
`5K	���<ύ�\͉�CgO�'F�B/�r��Ci�{�����饓�P �7��Ѫ�ͻ������p�)�A���A���u`�r
�I�FzXa�B!�@,�:(䨠D#���p���%�0<��B��REa�Baa�@�W�mC��h���n���!=��>e���5ilc,Y�5km��B��o
=�u d�)��j�LO����s ���sr��3�e&�s�if1��=[Ctb��QR*��!�G��� @*�I�f�Y�E#BH1�m�0�:����a$˹��]P�3�Da}ԡd �	bw�}TFx��<�N !`�s%�!�����Fn泔�K!��&W�TQ��|�/�In��16P�HV�f2�Q����x@��\Lt8.+��cT��c�O�&���aA�1 �P��� 0x 0��&������  ������(����o�7.���-<ܦ�B������C�>|�0��줊,.h�������+#��#� ���*!C[
��Zpv���I��i?�	b�Q�����0{t��
=V�(������OAn�}\�^�s&��B�89Z�I~I{P9������o(�����Ӂ�(*�T&���*&��{ncݴ��|������7�'�<.�kıx	����V�K��w��Ϭ
�
�M@F�Y�� ������2���Ζ�ʕ�ofݬQ���Ap�8�'�	!��J *"L�� q���3 J���`<*>D�P814v3�����z(˙�����kߞ7qƈ#� �i�yc�@ C5,�1�n�c�8X$,|�#P��c��m�yKi���Y����g�yF�Kْ�L���y4�m��$�1)��z��YC�Q����;�H�`d,D\,WQ�J��(��PB��K��I�d���b���J)3?ռͭ��<5���;62>6 ��#.��EZ��q� ��n��#'O;��� �  H ����$%dD�m@�y7�`�q��3�����^3�Z���!;c4CA԰@�Q��0
�	no @�Jo��  ���[?J�=_��   �Ϡ�  ��{��=2���ޟ   �m*�ݟ�� �� _����s+������wվ���U�|��	j�;��r�۬iC��+�o�9yIu�k=7���AsEUAkZ�{�/�aa%��HIƀe�{8 � �ቦon�u��M�m^D4�d�֜��X�)U٪�E�2
)�E��	�G���Ve�ԘjS{�(��$�'����4�8�?0��8�f��E�y��V�j Z��.�����a$(r7�a���\��#�C���Lr<��0����g>���q)o"�O�(k��DW{�"�p$�1N
���y��B��s����I,N�i�R�aU� ��)1�Vj��Y�L�O��8�����8*I��>�se���N�Q$:>H#c-�NV2��hš����^f<o�O�B�1���8��&v�=�9�9^Λ�S����;R��
C���H�X��,a�8�O�3�����i�a�֠cqꌍ���b
�l�C�@�g��f26q ߰7�~�H�l�Aƛ2u�y�
 ��)��*�!��rN�����H�V&A��N�L�� 6����Cw�a�+�ٶQr��ؤM��<,�@ab� ��c�)�H,,"j8��1ǆ�H^�}<A@� ~)
�!]ߒʲ�&�}��Q�y~��Ԟ��T��fM����J-���H(��B0L{�(�!@� P�����:w��L��M?���>@���!��R�^b()B6�I�06��Rcs�D��Sv`��a�h!�$d�a3�]���,D�w@ :�:s�WS���>MQ!B8
��l������Ct)ȱt�Z �"�S����fN���h�z�0����Sy�=E?&M8I?�)��B���Y�v6p0L��x��)Aqx�l�N3ye��x���2��	p#l�(��,?�AlN&�v#��wvg/�M��8�OȲ�$�-b���
�X��I:����䊋d�3c�D<��,"
9�y<Ǒ�>-0$I��b	���2�4+�8�`'a�2�|O��1����B|���93�+���r���B�̷����ca�N4����� ar'����	��q�t�q��@r���k-�tP1��Ijp���`�AAA` ���0��� ��H,���� !�0^a���� $��/G�E�,1�����g�i�ӏ�!��3����ym�M���'hW�iT{5HC
S�8,@P A�Et #�� �'��B:L��#A���`v�2F�� �8 �!��D��	��#��	E��Qѐh�	1��=,$'A���E�c��v8Y�1����������$�@� ""b�R"B�Ƅ>BE�����`@/��8	 ��lb�kx��F��>�}����C��)s�܌����(X�������pc���2��HӇǳD��dF���\�\��R�t>N@�q�9�o@�my+��ml��;��t&���as4*���d��j��5�P�v��ק_&/�ʈ�K�w�G�7ZЌ� ���*��R��m�b0�8Rd>�Q�d���I���:[�Q\�D�ax����w0>�5�Cs��R���0AO�o�(�i[ʰ��fc��$s(C8��0�ṋ7�`kYD�">�/8 �!z��r���'M�9n��������xXX*�f08�� A�@�*.�WX># D"��ŀ�TB`�����u{��x'���t~>���8R���2ծ�19*�(�1Z �3� T4$0� c1��2�2�� m�q�G/]�!H(ݔ����Fr(h�SSC��B� ���# �� 	,"Z��� �`BĤ�S�d6?�J<$E00 G A�8�`�P��@+0� ��0� � @ IƟw��&�0GRd�2�%�]\Ɵ8�0��<�7 G��QCyv���q�%��T�(�
~G�"���16�]6����.��&0	��jfiR�
#�s��B3����s`8h[��".�Z��[*�v����JQ#g�J�g�,UB��)���\H+ݼ���,yI|Lv�@@��0"�xǔ9� ��kI���K�Iq
��*Nc%�as Q&�+Ř��d���Ay�>l��u9�:(�$]�#O�������� R�8Є�������A$�!W�$�� �
\��
�(8h0>�  �8$y�
@*&��6iBe�x�|~1�	�b���R�4��&uڟ]~Oz����f�Ms���9��4DFQ@� "���P%�L�E�̈��P � %�@��8X@zI���%FE АP4R�P�i�F+>.!�B��(2��C�"*���"��N���D�L���X(x@4(C�P>�T��IP@�\Ӂ�!R�ZB"�$��8�[XJ/��P������\�I5�`s&�}�I��s�O9�����i'ʥ��A��<%�9�
:� 	FC�M\Ƴ�@���Etf���01*����$K�^dNd���#�g>��������D=o7�>�%'8-m���|��?ԙ�,�"�£�gG���
����a��) �(`�jDN �߹�X�B¡�� Y*��|E����G���9/"�^揘�L���ų3͉��Drbl��A�qP	���"A�,���_��"�wڢ�v�xf1�y�t��������B�ǅB��ǂ�ڷ�Mu\Tl4�� @E@P�D��	@ �/��&�ba�Ԃ��"��t"K����v/�c�h��T*}��q4� �~WI�Q�E�vhw��D�L�2"�"
r�u\ 	
@�TH"P�H��0
	C��'�D����"�# `!;Ic����N�4AD�L��$@� q8�'�F���A���(`B��H�,�0������Z /w��8d1��K��	��6R��"��\�5LO�q��� 9������ũ�ɧ,��˸�Q�f�4�H�F�O��r;�0� �-lckYMk��m\�(��2�0>6m��Fq��g&���<j��A�+����M o���k�%�JD��r�q�3㱅���XO!9�\\r�Q�(�0"���>�|����a-AN$ƟI`s�y�(������¡9�#���~��$�L�,}G\[g y�h�	��T����\�<<\<(D(l�_ ����\E���ݫ�)�m�y��ă q�1���G���	" 6UF18��HS'E0  4��b��E@Z���%����HӔ2<G�^y{�k��nf�=�qf���R?�Y�+!i�  M0����.7�`��;<�p0���hfHD�r�1Q�D 
�:�bD� �H8���J�俣c4S�)���c��Hb#���� 8�h ��(( (G� � , C�"&!E��� @�Yލ��@� 
��9�>,L"�r7�q��X��������qEy�㹑�\�N��T�$Ł,@��hD�� "Le�(l��%���-|���w��a��/rW�6j�b��K�3�c�P�k������3�Ρ��.�
�9�;���!}�+÷�f.(�^:�g	�(�ˍ��E'��|�8���F�8:O�s�y�0G2�4_�1����щq[����B�_k�s>�^&���CS����j�aa�P�[|M�G�"�:^��v��##�R��Cq�# �;mR�I6gw��$@9 �'A���0hg==�D�vu4Vp:�l�9�8�g�'����8F�$���߯_fP�� ��	�]"u��Lߪ ���4�u����ʱ���om0�(��k/_}�`P<�#  (�P�&�Xe�� �Ă��(��!�S���@  ���B
B p �!��a�b�B��,)|�D B�Hb�0���CшQ� 1P$��$"�Ap81\8&u�x`
�
"�%"�� �H��: ��G��-�6s�ْ��E|�E$��_��s7�M��"(����~�>ݘ���N�E֢y����Y�"������X�v��ܿ�7�f�5��(˔����'��f��k�߱�"��k!�^nb_a��:|���:&�J�^L�xy3���	L�n&�r���@&0�z)Lh��ʴV'8�	�D�9d"�T^L�p^�p�ЯB���OjR�m�����%v��gDh�>��q���C����qi�0�U[�# D�����cbQ� $���#��A��F�G���c��4n�,��N�R��dg���|N�O�:eSx��+W�\[r��lt�Et�!�<��Q��9�󞟏�~Vo�}��}i���J��d���ox��ϖ��MS���qh~�+#�������Ż@�i�=�O���W����~3���c��v����P�a��A�
$A��Fҥ�HQE#��ux�U/p�[���>�0S;�=&��S�vgr2�+�&-Wyn�a {�,)&#Љ�d,B��F�p+���n��I�8�s1:���y�����<�r"5���t�������K��b��J�+�������F��1�pp�<��%,�1��	���`������qZQ�j��:�4r7y9���V��� @��0.�a1 ! h.,p�k��Wg���5L��z.����U��&��Z4��k�CY�Q<O�ZB@��l�:�y?᧌p8��nLN�"���al b	Ynf&vp7IN��A�0��If������� ��'r-� �RV����p
1.O�\�'x�� 9�y�� �����?�j)��e(��]��]܏��� O�2��@�� �{�Ȇ! �A\��y��lӱn\�8I��-��r&�:`��myn����L���������ɸle	��ƿ8H�������&��J���d(���Йd�1Ҵ�!QP�����T�Å�`+Wb���̄2�[y�9���_(,CsL�>��yF[/��l�ҷ]��������<ˆC��9T4'$**�=H����C�$t�$�ٞ�����^{��-fA+es @ P�PC�a��g'����.
!��C�s4Ę�:��d��󸗭��,9�$���Y����ia��#��$&��`�e��P(X� r(h�7���A�e�ϰ��B-d����ݫ��3w   p�x��"��O�{����m�X-瑲s��5����m�Iս�L[��{w����*J���
lX$Tj����1��MH?Ԡ̡����|�'8����l�ɟY�j��N3�ǡt�s w�G�$�$m�)���8�F�8c��A��b] � �Cr(q ��<WQ�v���]��썋d.l��{
ג	 �����4	DE ڃ��}���Z�ۻ�aĝ��g�ˢ$�ޥ3l�Z�~5=�w�|���0h�d�t�Ga	�x�ٴ`Aa	��ⱇ�1�ũH��̤�$ϓ��[Q�2�8ôC����$�0;0�d	��P� F�qلo��89
F��?��!-O�����.<������J�ѿ���ap�0@|�"!�ݞ�i��}��]�"�����k~f��{8��t�ɽ�j�A���������� �D8�N/щ��AL�l��G�Y84��0=���\T\�HB؅IC'�vt��%lz�������)��ax4��P�� ! � ��?�D���B$����t�̶6���;������!CM A0-��� ��n䵔OMj�g�*����T��P;��ʾ�'����������M�H ����L	
	��� � <���LO�@�C&~�fg���y����<m�]5�-A�00=,b�bS��!`%G��Ǘ�ᯝ������I��Ͻ�}~���qɯ�y�N�v}���^q�_��YO|��-�y�)�^��^�oGZ�~�/�C�Y��*Qޮ�{����9}} �Bdh��j��� p��9؛R����ѡ$ j?
2���P ���C��\��@ @���1��n���J���z���(�]l�K�<�
�7I��g0�f�}�p .
6!�8#Ҕ0�k<�;+�)(:u$���A
F�C0��p  ���DX�ƈ���pB��N�� �褾|��t��[�
Pϳ�V���]��s���{+k��ͱ�z�/��}<h<,d,d�(`02&,ia$tx8Lt
%��q  �p(�������0��r�C�nn��q!��"Km�H(&Own>���#�m�4Lw�W%^���܅<�u�hit��V�d�����y;�J7�J��WHq�@Edv��   �25. �l�0`5%	� 
 � 8�E�ņ�_<n?R
�DZ���^��H\|r\$1$9$�u� ��(SEE��b,i��-e	�����3F�A�$ ��G�� p\<2p$�' �!@'DG�7 ���D�����АP$����,�^��sÛ���?��꺥p��Kv��?}a�����Ʌ��!L	����E��� �B�%�J�ig� yy�!���\�����rl�mf��y�B&'�����D��q�T����	;�gJ��u�zb~�������"⪘P۬۞o�lN�:�v��^ �OA���"��:��~�  C e�j��@�"�sq0xX`䮋�����A�KP<�0>�Bj�'��
jZ5��l�L�¿�!)n<�M�Xm�P0�0t<E&��t�D�����R��Fct2�����	�Q�(0*�I��B%Fc�vJ b��!hp0&�I�A��p"̪�v+���������=�����c���k�����~����������w��u Ј��H��pp!�0���B#	��� \���gI ��B����\�D0�����8@�� p�HB|$:;�s~󑖋i��!cEո諼N�ƣ!��@�$��np`�]d��.톺EWJ�G�@���6� ��00  ���)-�E9�dPý( >>  ��	�Ɓ#��E)��/
���b�ţ�J{t����*�jk���3�FC� "��Ǚ�Yڨ#Q)�h�:ǰ�\κ��>`�X� @R�0| *� ��P�Pa� !

i( ��(!��ք@�xHt0��[�˪�෭�_o��k��?k:?�wm?�}���;��ۇ�/�����@�Ǣ �K ��6�)
I�L;���'�H �L<' 9W�O���5� �`$��@  �@��n�~;�rt[%6 �B��̡Vrh})ci�q��M$��V�m�������YF�ٹ�l�#�A�! (hn��%�&��M�12>斆A���8}�>,>T_,Z~�T��c�x�싓m����������d����:@b�8��P$* ��2u�tȬ&&)�v
xH,L09tN�'�bC�``��$���43�B�� �iH$*���FD@"�(������j�]��������Of��ǹ�~�������㾼��� �)#��VH� Uh�@�0h@,P���I3� b�T�HB�0���+��� ��P(Ļ�y�4�*ICU�4��p�3�i�]{���LE4��|�D��yV�� �b���.�vB�@� ǐ��Ǝ�W2�d8�n��������&�͠[�������G���O~�w���u�)�K>��?���{�d��,���`X@ qV���0�8�$ٰ���R���,�	�s����/����	���>
D���1�8 L
!���i�-����p@k�p1h R$¦��c��]�q������+�y�$7��ÿ_�~���y���/��o82Ӫ|��4!�T�bà�F�!��Dʴ�RK��6lD"��0�L���$ �!��& T�P͉ �Ƒ  � �����(h�N;9:݉�y���m���*1�κ~����7;�O۶�iZ����hwD�A
�T�Bd��AL�" A�_�9��p�F��c�飣C!àS&��@���Q�{3����)QIA! �/���x���୻�����a����Y�__|�X���d�iBa@�u��1IR�h�7!}��	Eh<DB8`tv����N'�
I$uL�$PC%I�y,t���)ⱐ��F �HBZ��Rњ@(1Z���8���g�ǥ���O����������_��������<���G���<&����/><I<`�����gENIh,��g4���@�9��y �!��'�� �L�Ѻ�?/ևB@p �H$ D"�yߙ�t�����Ҙ$��$5ɡ�+�~���F4��TY֛8�������Mz݁qx*�na��,q��`0>>�Q�%�8F�ّ���}6�A�	��`3m	C��4�襇-��yLf#}��Y���T�C�������]����̻�V|���;�>�y����M:�F��!��a�B7:we����������، 8���;.a!�x��Y�:nb*����2l���8�Qn�\CH��E�c��a�#D�DBP�p�P0�F *k��־�K����=}|����_��������g���������?���n���a��j��?�/�F�Ǣ����h>fqv���,&Y��҉��`b�0��de�Y�A)`�@�%N��b� �*P8	(��&�H@��R� ������M"8�8t����
�� �23)J��.c"��`0�Ç�g!�V���?��%������_���l��k��=���������g��&f�o��:�/޿:��Q��C�ʲo>�~x�晞��� �k�V�~�b!������ �<�/��o�|O��b�;G��ћ���|L�^9�O��}~��$?W�yi�#�a���icv�$	 xd��,�U�+G����~R�fO�a�0���f�f�L������&Ɨ�h`�q�����O�µ�pq�l.����Z k���:&:5�u�ϣU\R0<҄�D���08 ����{�Hė4�>8���?^5�f0O"�o��������e�����������;�������`  �P���� FB��$N�c� ,�igEZ��$!-<ϑ��f�4�*5$&������fi�3�
�%0^�t�)�ApR(c���͏��4C F�9�۶s��)&�2{Q�"v�9g"�́x4�CA�l� K&�Ĝ�z�%*8�����,D\|R(����hG�d�q��9G�vO��_���w(���+VS�&v2���x˞?��fH2D0T$� �$	�'��ىų\�Oy�V晏�AFѰ P��]|
���jl��U������5 8���#�#)�%_'�S��F�@�a�[I�ŀ��L8�� $
@�
y}�����C��̽�-�>���ο�+v�o���~����~�x��P����?	4¡�.|$�P!� D <Lh��ig&�I�ANf�0�~8��KH��T��3�S�F�L�4� @uQX����R����A@  0P(�袒 �Mp��g�m�y�Z�w����M��Xf_%B7���!0-^N�F��ؔ�K�K�E���^�z*��}�W>��۞l���������V[NQt��8��X�IhJ��Mj����X��J'q�$q���h �3F��F�Qh2_����s&=$��y��� ��W}���;T��hq)	�r0����(B�������ŋ0�;с-	  ��RF#�pL�ם�U�	���^�Z߭�?'����􇧧��}�˪��Լ<�V~ <l �
�G���SE-eh e4�blD >2�ig
c4RA�&��^tmlau$D��"�2S�N7"R%K��d�F�Mz颁a$���DŇ��1u��  �H��htvA�Z�#�M�d���<�_ROᯟ{�~�,a�a�1
���t˷�U���s�r�&��e���`0up����!63����޻pw�Y*���1���
,6�I�i��oe�a Y���S 1�:YJX�p4�c��'C�!�S���p:���#�g~՗�0>ϵ`\�֏�� �H�u�&u06���<T����mvn����l��C�    @�@� �!A��>���ny��?{u?����;�$��_^�_����M����w�_V������`A��1�S�'�!�B��G⢀p1� L;c G���,�<��� H��l6p>o�s�H2�l��Y��p8_�T�)�� ǳBFH!����g��B� 6<,�쭑C�G5ϱ����D�vbԃ�d�P����E�/�\R��2���'�qk��n&���Yv�UO=od���U��⌨�8�T���LIa��jf����Pmr��X�B��N�O���}|��pI�㣜O�_���pi�ټ�#|��@�$$On�8�DB1I��ǟ��f�f+! �;����   ���"���	g��R���^ކ7���߿�6?h=����So�'��޿i>��?� 6449�&H'�Ft2�"�`�!�Jp����H(L;4P&M�3qXE���E<���kI��� H�[i�J��:��9� �,�3����|����~�Y	2\ �)�P@�l`+�TQ@�a�?3.۳��&�>��&�m�� �����B�2��ӕk:-�r��ˎ��K�K��"�8����7{�t��ȳ7%�g?�r���o��Ȑgx��>�i��	=�)1F'����Sq\q�@0q�� ��@G��ЂJ�E��-˙�o��Q(oc1W�	�IΨ:���=��O���y<���L��)h} � ����9> �OP�Ԙ��}�$�����S[J��C��ۼZ�i������s��G���~~�������� 0.4�� @P`|.����d���,�����C��7��N��mz>=�� Z	��m|�c�h���G,�`3�� ¨2��I1��� ��6Ƣ�e� z��_��t��s��]Uw%�f���@P,c/��^�3{�p��?�>����k� ~�H(C(���A��s�M�#����ܟ�����������_��>�y�q�t�'&�C�Ҫ�j�2�9p?��4�Y8_��,��
�$�41���O�
�N>G+O�0��>�4�	�0�sUo�2(�r	�r{���  ��8y� !��@p�������M<  @"�(*������E�OߎԻj��gN���Y,�������k�����_-|�M�����[������� B�P�`x����(�A�������B `(���Q��su��e���M$9�S�`��l&�ǹ�M`N�B��G�ĩ|��)�I�|��p"/���]ަ�f)�#�������C  ��O�)�,e
a�&��3�w��D��'���+��Vcw��g �����EM>D��y~$�����R�������d؟(�vEOM�}��N>7~�y�~�A��!�6�^a�� �pH����s�a����'������IR�A>B�a/�F;�   ���`�h Fi�ʲ���5������H+�$�HBN� � ,0������3Ā����g	 "� �D  `�l�	��I��j��߹5hN��~~g�w�o�/���܋5��G�~����3��iu��0Z�f��N.
������z�Y$�C=��3�+I;�qi.�3��q��A+Q�2�h�s5���M�J���b3�I>� �R��u�cgF֤�w���
@��8�����[��#vN����?�~"�����'�O���;�����?�y���ߍ�"bmݼ�M�$vv����'n���U������7�|#�7@�{�-��� �p�r  �1ْ�v�����;�����s���g��71�lBg��t�%��� ADHT tPg�;�k=�ߟT��ǧ�Q9�0�@�pz ~/ �t� ֩v^!�ʢJH��N���\&� ��^��%������H���   e7�� ��%��u||բ�wP�l
�xϺsy[�@{�A[��ˋ� ��Y͛(��[��ft*�R�#Be#���A��1�:� �n~�Z*�4a�O
�V������ �5�A0����� �Η����*�D�O��#�X�ŮHT �N��������8�i�NLt��^2H�,�Їç���$0 ��6Ϫ��@ �8(�vb��-�6����B��n�-�k�kN�`L^�,BL�5���E?)��Y0O�.$�c��3�Y�L4�b�Aigi�(SEg�.���E<�K�I�g�	�x
�,;��Szꐽ!�vj�ZK��Y����N$��E���q�ϭB	IЊ�@P���z�9t��d�1y*��6U
r�gF$�D ��P���;0��� d�2D�-���0 �C���Vr��@!�͔y���[v�.e28ThG�H�,)B8�@�N���
v�~�X~��0�~c>Ϸ�������k"l��26L�+��/7*N��{�Z��N�K ���#$$��C˱�9���XH�\���Y5!AH$�
s�%&b�2�ͨk�//��p�m��:S~��s@�Jw�v��& l��E�b+��&�ÂP���;i���X�"�@�qIQ��1x���q��㨢0�f�?�Ӏ��#�@��!��90�����tQL,\��q�u��I���A�`8�L���`Bp6���j ���)u�#�(��:�|v�ݥ����g,�z���5� :i�h���,C!`1{��<�O7ш�J�".1F��D+sI0 ��t�@�p�����o�X@ �~�ɹ�� ��-:�=u�5�[� ,6&����8�XB$x�q�C��'���:�G�b!	¬#ĈSFB��Cܢ�"�}�W�m(�<֐m]j������g�A��)�/����9�'DAÅ����A@�vZ���o���!�1�~�63�m�"I��a� (2�����iaO"�����#	I2�7`�m���-�9uR����r��1���x�����D��7�x�IG�@0B��:�� @��� S@A��!o�~&�H�KO��3Ӻ��F�/���(�fĨ<[�+���~����Pyڸ�9	��C�g��c�X������C�Ή��_�J7�p���1n�Xvp'9��X��J�����ld6��~|��	 ��|�[�:l�\4��~���rϋ��������:|��B �S�q�"IJ( l*(�y� "@}"g_~���������c�a�C��$ �D �m����y��j���)�?�|��l��N������p�=�������?$���Y�?���/�߇��8�8��(�?������Q"�0Q�T��%��O�ک ��`�(	cP#�s�)!Р �\�@b��b{6�&���)'ݟB�-\N��L?T�х�!�Ũ���'���F/1,jh�cS�e>{Ș汝& uT4*���$DVU9�?� �9��I����&���tΜ:xbO T���_nZ�e ��8���A`�� (/��G��"�3,d �  �L��u���a�����6�e����X�~ѽ���]��r�M� {���f�'���h����f�h��2Q �(����<(��V����d���;�ac�DHŁ�pTT��c�F#65唒SA��Y'v6{��.8>���@���!�@$ ��_����j���_ ��O* ���[7��Zeoz�{a�G�|N����f�3����O��:U���ȷ�y��J�5D?>��GA��!�0� F{T�#��(APƦ@��=vb�L�~j!�P�3�A�Ż([@D8�SNFDJ(g"%������	e搠��ϴ%�k�B ��{ �k����-IzJ��G��A �H^����S2g�:�և]���MU�G�/l���S�]�����?3����u�����ΠlH�s6���� z	�Q�"��MbV1��h�������fiZ���)�]����FØ�C��2.��:@<���L9M�9}.�Ma��&�8�NvR'g�R~��ҁ@ �"VO�	
��3�~/�y�/	D �x���i�)s����|����y�=t�jlc����՜�<��Xg]��!5tm����D�p��c�0��t�ria�����% 6G�fZ��C�����S<
�d�ӗ#�:"� �zY���f�� )0��r<Q"IB��:{��ƃ1m�����d���`���uƘ����7���p$    0N��4�Z���ľk�C��?A��w����_����sp+�Õv�z���`������h���P��+���$f�ЦV�e9�^�4�L?Uz�P"G# L�Qy��k��2�eة)��N<�dlK�T�Q��AG���&�-��O@$ 	b��RdpB�R�y��>��    #R��;��|v�KN�Y 7�X?�ȯoιtߟ���}�_�h�Ş���7N�eT($�I ��F���a�	I2���K`T�� �g>D�"52pFX�� �"*�7%�4�0`Ęz��İ+�D���B!pr�tR`ڒ��i��œ ���#D�@c�p�rB    �< �@$�Ԛѭ���
MQޯ�y��9bѣ�O�C�76G���/��D�!�3�^*��Q�Å&H����4 �J�$i0(U � v���LI���X��L9aZK��F�!�����%�0mIU����4&p ��� P�r����l�(��G a�a����'sI��.`�������[��͂�>XOpm;���#P!����Ut7��TZF`��!pH���1d��X��3K	�<��JV+{iGPG�@���!�	b ��!A��a��ǃ�A���b� (k
E��6T��*HT\����éE� ���i�T۴�@h�����oU�J�[�W�Ɨ>M�eP�������D����a�ga��8tޜ<G���䬨�}�}��K����:1;��1��=l�(�\�j8�@�5�b�F\��@�yRPE���	��0�(�P  ��O�A@.
E��` �@� $�����`h�P �D��Ҋ���
�CS�E!�L�� b��P���D)�P�� AT H�EtZ��B�@a��oc� ���:��@,��[L�2�!�F3W����C�I�˸�C���F��+�y,k�{b2��̬�#���|�T�;��}��ߋ�� �a������=Į�ސP""4:���C�ħ���:m��F��ۤ�    O ?	C���A  �C@H��{].(�� �F}��X�{iAB%LD�*��Џ��E�
P ,8|\�H����P���PIq!�1 ����3y7�K9�L[��ӂ�^t�������ff��Qƙ��Q2K_�QMeB�ݣ�)����fl��K�����ϼ�ݿ�?��w�9�etw� $D��
D<�Њׅ���C�8Y N������@aj>��Dh�d�ڤ�� x�@8 ��O"@  ����@ ���0@�p Ĵ�q ��f��o�D�p.r)"Ȕѡ� �B����2�� A�C�(!�p3W����K]���@G2i��2��}N c� 2���7\���wk<b��\����}��v;�3���=������쯻�,�U��!�uwǇ̼��y|{���DH���D�_N%G8�G�2�Ȅ4k����lt��<�iNF��FV�����3v�wM�y|
7� � 0	!a "���H)��0���b&/��XC3�Q�E*��<*,

�
��R 4q:��� O%]����� S��c>c��� I� Q��0��+PRz�1%D��� @��ݟ�|/͸�y:�×��~,�y0峡���@�Ю���B��f�*���Sz}��9�+�y�][����n�97��#в�&�`��S:�m���i*J%���s*{�5:'�n~�1�UV�:&y�n�G��z��H��t��xp����a�z�4�@��"�p(2�±��h�4� ���(��wx I#+�	�r!f
9�F�D��d�+Cq-q$�y�:��d:�D��o�X"��$�aД��Q�`&���,+�8�����?���VmZ��kų����u�A�n1e7���fj��4�M&��'2f�+~����nǕ9�mش%d�YW����ˎ���C*��02tV�o���x���p�K�=&�݀���K|�*MH�3�� *#�A���s+!1R�{M�	��I�cb�a�bY�@>.a*���P(6ib��ӈFʴ�*B����I�B2�Ml����6±�Ξɭ0� �1T�*.���Ifr1^fM\�و�y� r_�a|
@��v��^���I�#Nb�� �H�D�>�#!<�n�Py��y�#�j�E23���i�/<�M�Lf����<���M����CU�7���*����t���6P�H `�W������u�d���w%�b2�
F���0H�܆��(�x����q3?�|:y��హM�9:^�ЏE�>�F�_~��?<8�`�E�<���H���` >�`��#��_,�Bn2D,c��s��
��0�qa����4s7ЎD�k��%����8�5d�C 8T�hL�)��ۀ��<1}�����uyz?�g���V�9{P`�!�|V]��\�|)c�[x6��w��|���x~4�1�Ao��Y���2q��N�(O�P	z��t�J�-��W��_U;���g�f��SC�i�L�#F�,'$�"��FV����l�F\����mb�G�q
� �8�Pِ����sD����yq:]���tHQ��ֲ�,�2!�U|���Vǰ���E�9�����89��oX��ɉ,�#��~��.��u�;��#rT�7���Hd���a b�܉:;��s_���R\D��(,7�.����!1E�2S�M��#S`�q&<Y������54�K:��1���:	Gʤ�3}�}< ���x���L�6�E�v[T��:�w����]���K�O��Tǩ��s��|����K}~m�oV�Q�ŲB��y���TΠ�֛�z��N��S�r~�k~�����;tf���֪^���W�偝������6��	����>ng��{�鹼���s�
��T�
�CHN��e���<��)���0�>��,���ÕJ&��{b3!SO)�ޙ�Q	f~�ˇ��+�h	!�\ɨYE��yN�Dֳ���
4p1�1�/�YK�F>�9�S��^Ҵ2FX�C 0��`c��`��L���8Wr<����f�s\��x�p��{����pM5Wyn��I��[(���OH��Q ���$0�v#�*+|;���]��8����.o���L�d0իc�L]y�O�m���Z&�4�f'�����B�v=�>�_���|����v��T��}�}��o���T�����A�a�d	�D+��'V3'c���P �a��L�@�G��"i4"��E.g���T���.������%v ��
����L>r���Pb;,�le5L�HW�LҚ��T�;��|Nf3�
��h%��ۉ�Ἁ��<I#c��U�!A&.K,�B���!��¨�BѤ@�+!|���8�ǡ���	Rf�qM\�d���χ�J,A �����B����(�������>
�0i��%��Y�	rN� D�*T���؜�ql�T\=97s���2�j����l�1Lf�Hjv2�E

obqds׻���[����N��c��3��\WR�����3��琽�!����U�Iv�[ǥ}���a�{�+�n���Cæ�$��ٜ������8��9��1���`�����8��dD� �J*2_�t�"!}���`%D����Q�k��(�ц�����B�� >�) X����&/q
�T,���"�2O.���@!���H�7��nd9��9�����K5��f>��0G����F����k�0Hr�'J#��<����2Y.ɤ]��x�.6`��$. �\�~�h��_ɠ����<��q��u�	�)���}�}n�NJ{hq(�\|�]��yk]�d~����ㅟ���Wv�97��=M�Z���X�򴺗�C���]ݗY=R(:�Z㼇9��Fv0�<}�e)kA��<��V8��(~��<�o�ۤ̅����(2��� %���!��&^d6x�Nb��y!&Z��$�@<I�>��-�`S��v�h��ȑ�K#*�`"�I�#q �@`�� (
�=�(�u�T�I�2�r'�,�p$6�Wsݜ�h|>d+��,���lbC���\��
�L�jΣȟ���l�b>M;�B@�1i7�`��b��{ͺ��>?�օ�m8M�צ�<�q�w�t����f�v�I]���G
&��P��"k�a�?��ڍl�^;���;��w��=0����_��ګ4e�!��`��0�:� �8���Ut����W�4��L$�s/��M�C'Q��*j�1yи���o�E�������A�dD���?���3�m\H.>@TZX��u,e�Y�6\"�l�3�I7���ԡ4�V�z�(HJ��@(�(�C�� D�.��Ȥ�,~B�	(C��X�h`Xx49���䅧H@(��'K����j�r��x�xt��d(C��`&�T��<@:��� ��b��N�^�\V�O���y���v���5a�VY���?K��Z���`v�"�8P4���͉Ew;��ɵ�{��ɏr�彗�N5�pv8�N�W�C��#��&�)	`M��g��Qƣ�*�*:!1��CGR��2���Ô>Gb�J^#/��J�f8���d Pf+��#����bL�ڤM�y��y��`��b=<�R�E�̦��b!;Y�P"� B��)
`�a;O& �B� �he�		pq� \4E�b��Г��	%�b#aB�c f	.�t��� @@L�ex ��(8�_���C�ڬ��ER�G�v���2��+�Ʀ�V�n�3f��`P�Ð����[W���R������<�j�[}��nY�{�j~���=�:�o��.�ՉQQC��'����P�0q�q��!FD�"�4eTD�t+�bP��sJ��b'�7It-���u>I^�=/E�ӓ�����	y�*ǐ��QL�P%�(�QRG�Ač�� ���q�b=������]d�NB�����N�.��`$��	�A::
�u��)4i��w��Q�px T,J(�QH�'��E�:6�v��J�� ��bL朽���O��e��_�j��_i:��IM[Ab6p�n��%T+(��A~����W���޽��$��Qf�2R��q_޽�K��qm��2ϊ?��;G�B�k��W�~)�љK	�'F�FU��0$��m�OQ "râE��9g�x �/l ����C���W����  �w�~  �~D�����=�=�} �}s� ��:"E�� `��,0U,"d�G[K�M+�I��?(� j�us�@Q�T�l�N ���t �OLI#U�:&��
��˄%��! � ���n�#�Ft�~��;�7b>��}�~��,2��T��{�3?ȵĜt����v��3Z@=ֹ �@$���7@��M4��'${�DQC��6 �@$	`�B @i9-� L�"�V�a���B�6A  	0�# �]���>�D@�N�2��6� AH  0eQ J� ��v�>_���1�Put��! � AL�B��o� ^�mj� ��@AL��   	 "��m�) (D�x��?|�5 P��ABA8�� @"�@$S6��66��w���BI S'�I(.�t�qG��m��N�@i-�	 �dr�.1�H�*��}f�O( �?����Xh \OX@D0�9�����
"�  qȆ�ԅx���n݋�&ݴ~����O@���4Wu�J�IAA�
� E���/� el@.
 �L�|��R ��+ąPW2+Fc;��7� (Lk���1�!L�Q A�����  � %XT��q�{�H����\Mr8v�{��D�8A��N��Q ���E<�VjP	�!`4��)�a�A/� j$0��Fc�F� ���_D	�D"�:�x�  �&J�Z�tX\��2��8�6�by9/�ĥ�ٜt? k���H����	�q�D�@�&I*I3L#	F�c>{�2�J�f	� �Q� L9I^E��  ��.� �(�
 EQ����À�a���ݯ�+�~�G�
Vp�~�E���8`0:6빙.��T,��D�T���И�Bڲ���]����V>ǳ��QIىʔb�ۅ� @��  ��� @ A�,,(<||<xf�Z��֌�*h�w�'1��a�	��Q�g3��*�� E-����x�.��P���D���x���y3��c��s��1L4��8�"2��+P� 0��' �RX\: ��@��Uj:�YU��u��j��!�#c"��5������L�/��)��R&�8�䩳�N������R�M�"K�&jL9A^]ߔ��A@��O�	fa��cP���S�*�͖�|�(@c�"�E��e'���u�����P��!��C7��`�E<H+Y�Bv��2��dp��H  �`ꀆ��`0.�=�1B�P����!����h�a�����;�m�h�>�����a�JlT���)ԓf� ���v 2�DT�D, ��_��r*$�B�)'ɫID"�R<��Ń�9���t󧕤�$M)bh��@(|�C{w-U{���DH��D� �� 0��)&�8()�;�u�����g�8�|�GQ8���d�ع��q���f��T
��SI	
�I�����фW�.(������������%b@$�is헎�� $Au10&!����
Kh��Xxhp�,����x���#�Tx.��������<+&�l�Cܰ�h>���0�L	d��%Fq	�!������p!��r_���	�Qn�Q�q2��E��^�=����`"��SN�G6��Tʫ3�cgti�%���v�M����Jk	�� ��D��M��<&� `����E�kҍ�`��3qh��,a4
�0��t H�����cs��Z&GGS��6h8��l�%G�Ƴ�ک����KeX��`-����6`��$rA�� (K�d�c	�����P J`$ȮD�a�y�(Ó��[����ӱ��ʋ$��$��0���lʠ�"!	� X0 �8�5AT0"	�����?�k���$�~�I�Cޕ�\��s����>�9���(���Uĸ�����nZ�����w�p/*ǰ�ﰑO��?r��b�Q�=��l�YV�KhpC��}�Ax��>�R���^R.d%:m���'�S"�O��|��_ie��`R�O�Y|D�Q�ɻ�)����T��"�jF���q����	CQ������L�J���P8ldC���K�ơ b*��iL`>3�C�(�
���{�D@�)�ٮf:}��`�3GL��^�x8�X�����C���8�����/N	��e5;�'�NLZ�w����IA� T48I(o� ��<ʅ��w�=D�a50��z��$,FQ47E{�.&yX��|�<N;4��L=�t��0!&�?�����nN�؜.�Y� ��{�I&@r�~"�{
���w�#�2�cՁ ��q��19���.�n�̭�B's)����"}�c ��;�,*Kɵ��� "�ٛb�oy�"�3	�:�5�ݏ�N���[b�6��$hT>d�z)Y�C)��}9����+�89�b�2@��W��0�p00ělt��S� �)���cGⰉ���&����E-_�řT�)������C����J���@2��[fr7��Q�_��WqV�F^gʮ\�r2+h�V�a&�C�n��p.�T�֐��A8(`ް�(�`����~�O�'z}�o�uy��L��J��vc�� ���Z�Duh���G:2)0*X���Ilx� � �` ໧�� ��)���)�N�;�Wˮv�*A���b�g�yt(	�0�4�|�/b�e>¤�&�0�$�bc�2�0?���z����v� *���s�E�Olk�r�%�@��qv���6Go�����i9�9�r��(�P��e,c�����rw���tq�Azo�qڑ��LdF��yb�x��ʫ�+A"8��?��-C��k8��~��3YN�18k�,�h���Ṍ���_ct��m.HLy>��\0���Q��b�w���~C�Լ�F EbB@޸)�$0��܄uMѭ��Z�\7qApq@��paaaq��t� ���$�C�bQ�b�@r� *�{�	�"@D�@h���q]|�}Z�+\�5���I �	�#!�x3)��'�FI�q6C\K�Ix��!xB��R�:ֳkQ�}��HPb-so霶�(Cw�&ͭ�#��X>��$ᡶvNSq��5s�o��r��d�tP 3�2�Dy� �xZ_SK�*�D	�J�3�B���E��m�L8(�~<B���H��{��j������D�Y�x�V螽/�+�Gȵ]�O�gAD��I֯ˣ�:w�16�����(�� $�7lx,��4!2P�Ե�'� ` 
��#��'� !d&:qJ l$&&�CA����^d����t��Y�;v���s��[6����ݎ�,8Efr�Q&��kXx���Px��s&e~Ʃ�E�I7�.4 �u�j5�8�U�b�<j1����̥��T���2��}9�N=�f*P`pԑ��î�593�3q?{����䨝>ߡ��"D?>��Cc��Lʢ+/24j�E��f��\>W>� �8��lx������ N�sg��)7q�o~�&�K�.��������a3�����~��p�2�m��YB$��6�a����[&��r<#��"�R��* ��Bc�� Q@cSM
B��D'�����@�����SN�%��}�vݷ�<{{k�v�s�.�x|fr)�{������,d7�M���x��!Va3�>M$�� B� A��0�o�� �B�Y
,�6�Ьhlh�rf4*;a�PC7HLc����:MT��-(��M���hNa/z��@SO� "E*谜�0UbL;�>^���,�T�cs���jRT�@'O`kc�P��,%�9�)�h����\��3ɞѯ�1���!W��Y�&�'��� ����e��wlE��pް�P�0�����D��x�&͡�O\Q�:2<" �C� M��>���Q��Xx 0�g����Dt��=�2���nm���Շ5呢���2���\�L�V���X�n��ւiE�'��B �n��Z�(�/#2���8�,Y�Ğ�� ���&T��C�n��~�뜛��W�Q�߶�-=��bw0�� �^Ktv�=`���~z��9"����Tw1-j!i� ���_r���T����?�Ö��*�vݥ>Q�:�HF�^r�~aj1������"JT3�ɬ��a�����s��$	�E�b+6��.���������`B둇���. m4���,d��c�:��G:DJzx� l��V(�Ǆ�"Jk �#k�s���`�~������ǭOm}����V���q���h�'v޶)�6�1��9�ۘM��؅f�L�P���1�`b^=|I�:�`-[�h�	���c�g�c�b	1�����J|K*�@�a'���qj�42���%@#�D��tSG �y�G�����T��b�j(x\���E`w �Sb:��c'�	�$�������K���Q�f)����T����1�iht0�8�W�p{e9�6 �x�#8�Z#�?P��F��ϗh��g�  B���Qq�
�a��EQ�Ɣ�� @D{@A�`b��)C+V�(�׌�!�q-�X�(��ic%O�����-��"�`7�Y|�v,&�TX� <����^5�M?�"��X��Bs��3R�4�L�!Xbl`%�`��4��� "0��|L�ɴ���	�240@��6�'��`I0aʱ�F ަ�	SCK��l��><Y$��E#�f�Jr8xp��S��CC�a��g��� 0j�R��0���04L\�L��R�	�a1�@S.� � �Y(aP7 <K�[9涞z{�Z��D��9Vl�"�ىJ�!�ќ�Ϳ��94��r3����%��tc���P������C��"&�C�0;�I`J0�t�B/a$t2�L����u$��Z��M5%�`٦I*�B!H�7��Jd��%�K:o!4���@�����2< JiX* �2<�2����� �)� �K	�;W�'b�d�QX긴S�Vp*���@��S���T� ��1�R�� �E����ޖ{�X�8B4���(�� ���
���T��W<��%�%����.& 
����"�&M�"<��ClP� DI���B�2S���2,az��L��(c@���R x*@&,&oh*`D%=�@r����@�����!A�ń� ���!x����A�@��8i(���@G�}E�Geڎ%��YF����\ (
P�� BCk҄{�4i����t��DYk�"��'�f5��*)�Ґ&���E@@
A�v
 ����q>	�2%Zq �h�a��``@A	�4������O�Q�!�a1��� O��օ%����O	�,9BH�x.����B �˃ń�����H`
  
.6".%d��5!4,��q�P�R$��M�0]CҀ��S�C�P��-5:�,U��i;B	aIaJ"�apXEY� ��*hQvEЍuk-�'I�~�=��
8Jո3^1�#Kd�Y8diY%�%�&.BD���L�QP�0�($pi��K ��(>��ġ��@�E���"H�uD�@`�{����!!�I"/� 	�It�X������܏�����`�7� >.<�����A�A� G����`�(D����@ 
D�� P� ���\t��	aR�j��%�A%�c\C�P�P���P�p,�4�����$DKɀ��l	�@���!b�%���.�,�E�U��ͻ�T������0�e���Be�n�	i� I�� 즅I���|h<h<*������!B (<4 VLXl ���* E0"�S�O�C�!	��`q����R"�Al�!�P("����� �*� y` �P$L�7�AGB ��B���y?Mx8hʄ1�@P@$T�q,<0�*&�ڄ ����T)�F�!x����0�|������m�ΗyO0�
 ��@�"7�xa�Y�G9+�G�%�!x���4!��a3Q�@I �dȁ�2�������F'D�"�sy� T8����qa��[B�����8��p��o�62E��� l 6"�����|S	 �p�S����!�����o<,6�������࿮U��"No=�?Ͽ�*���o��erU.R/B�|,�r��IS$��&$�������(3+�$\��HYf�ƀ�����̩���{�ޢ��]_�?���	�8  �'��k @�I�.��� �f�6� ���v%v� �]t ���A  
C��`p����_�Z�%>��͘�\��9�������
�B;s8��S�T�#K���F��X�����*1JtX\�7�Yl��7���3�~�~�,���+�� ��S]nv����赥��;��g��0e����匒�|>ʓ���Nv�.�����=��ĉ`��y��F��Q^����{�c����3�@ @��?O��M����ks�f-��-�E0�U�(bR!����aI3���8�-ؼ��iť�ea���ͧ ?����������+��@ ����'�h����:k��6��"U6ᰇ&��b�D�*O�� �ǡ	��IBX�n���m��A����|��qb@���j�4 ���?O�-�)}#9��K����G�f!�����i�`⤸��|�S�<N���I�s&	F(��� �o�#\��o�]=1rz�B��+�q�@��?O&�
{���0��x��}�Ng�1�6Yz! 
T��slc���)b�ш�`Q�009�x7�E���Y&,��2 H���?O��h^%��`��(Kx�n���QF8��������P���y~�([����0 HX�ū�wq��'i�D �d���M���� 
P��t�.�w*�_g��V���^�;J	�^��?n��H6�6�L����9��\·���XN�p=��0��[��>�o�)Ms���C�c'rd
@ r �#14�[�_��de	@Pt rڥ�!�ńb�@Ahb���
��&��� 0�@��vH�s�c�:�BA�~��@�pdTx�?���e��%4��?�g!G�M��ʯ$�l�`1��r�4�XF+���q�㠐�����B����"!6���E�`0�,6��"�:)898�Ĩ ��� P��I�U@I�I?��M��dL��8,;� i�E��Q'�CE���� aa�)Q�	I����( aA���J++Y@ERI��P#	���'���V05"$Yv�aҎ)P��@I@�8�1����YƲ�K�EL�c1$9Z��r	��@'�G��:�1�P<1,8 �#@#Ɛ�������ԙ����a�=�	`�<�Ǒ������|��aa�n,"��^�I'b�.@X� HHy�Q�H�4����ܻ�P�X��T�� �C@��^�!T	�L�� j@0
��J��8�� tzi� 0ٍIF�<��fB����̛yX}��xI#���18��hT� L� aɸ��!#\�}D^���~`�{�<��R&X �`(ia 5 6�>��i' � �pi���$u�Y	8e�h�Lz� �=E e�X�  ���c��9����8y�1�$I�h%d�~\D�(
�q����b��<����I�c��K]�Qƌ�!  $��� |RT`��h� ��
����P@0���@0� O3�N���`�3�Kt1�c�� 2&DǤ�j�
c���	)c1ig�  ����<־���\�Er:��� �a��"��'� �����h��dA�$;H#!�h�%�DC��Pa`||0&F����ɉ��F�e~�}ԙŉ4��F
F#9���s{Y�F��:D
��C�f���{�>�'}G��r�o�Al|�4R#ZE!� �04��"�@TF���e[�
�_1�����H�`d�4Lt�yMSǧ�QfR��D$ql|���'�F��\�E�8�{x�hg�n @���mk����.*}��Pp�a�L�����������`||��@�x���1t��]x�  ���P�0��H@�H3B�
)U��B5.2�"�b3���ST9��x?!G�6if�\ŧDrg�=�(8 �7�x$�aÁA`(>>B��F< ��B��2)�`\b� �~E  F",�  	d#K��� �d.�<�7�-s�A`qoU+Y���3�r!3F/��J	ߙ�#T��hD�h�qM�Q���dI������#K�1"�A�H0�jdpQ�)c��p Xy ����J�Ĳ�lf+���#���U�����<	r5�!K L��ܙ����#  0��B Y�hx�b3LB(�C�14J`T$�،Ѐ����`� 
U�}A�@0��a ��Az0�`<���J�8
�x����K��\�wp���"�����v� ��a( ��5�*Fp,����M<�v!�=�qh!%�w��$�K �D|�_�4@#�Jn��0��/.4�P�E�H���4��7�����#�	&�01"\��I?�	"��a�q�  Hb��=|�&Vr$Y��hZ)SC%�q"�$P(���>'F�9|�k���#� �@G!
�A ���I�*c��d��yӳc7!h��(�@"� bg�^�! �7�9d�(p42\�	l�F���	 ��������G|�+I�i��}�y��::��8��u�� H8 bad����HH`��P���i�0B0����@����$K�tg�~��@� �(|�3?�@���� �g�z�(�è(r�������c�U"$�s�f���<�q�
3XL��ȓb+��Q�f/\��h��l��y'�q+��>WC�M �p(X|���|���4�/��� �89
�H�Hǔ�V��0�    $����� E!�0�i'D�a/��]�b#�Qg&�\�{X�$C@?������!4����3ƙ�����*>��� @ !D�K|�? |;_���#�q�� B @�"N�
�)s(�B��]��`�sRw1���{_+DgF7�G���v��'�š���	*X,�~No�w�"��ʛ����6E�Ƒ  ,��'X�)����O�	PQ�`0�0T��Qo{�3B��D��D��_�"C��<q��G.�ZnaE��3�N'�g����y7]|��SE%��Kx_���(D �B�y��� ���|=N�t*G�`H���
#dJ}R!��a�|�w1!��g~)3�25f2H�	$�9�:C���.�� 6��"f������|���{l�l �BP�Ɵ�i�W�v {rB$
�E�
J@ p��R���*g'�� �sz�@DF��/�K�9�� ��pI�T��;�cQ����C5��>O�d/R��l�vl�ǿy�D@ 	�X ɹ�� ��-:�=1
	�����  ���[:�"� E!�M,D@a�0�$�J��lFr��X�/y����3\�L��r#U��� N#_�[@���9�^��pR�I+��Z��H8�ea0`�m���-�9��=��I�".	e�},�LOT�0�(�(�q�"�a�)�����q��%��접�|�E�@D�
�2G�.>�Á�������|" ",6�� ���(�8���@a>'1�!6�"�p(S^�7ɰ&��R	>Gp~����G�G�0q�X(� �>��R `E!���H �D�yݶ���	�w��)�FM <K#PĮ��S ��|`Q	P0�)WÁ]��J�7W��y��I�w� m��#��.F�:]0�x�VY��Y�s.&Pha�$�8�H�q LH�F�4&O'
��GD�$Q	;�^p��#PP�(@ ���A� A ( ʱ% P@0s�>�{�� ���  $��FVA\2��Y>C��:�( �I45t,��1 籋乔�#���b��6$5^�Y��\�ɨ�ϒg%��R �&~�%��A~��4�e*\�	�Xǭ���1���V~K��� Bp"T�T�Q�08�F	�   �:6r��T27p � "����)�h��jWDcҴs��������i�u$&A@�&2<͗X�U ~����rV�~v3�2;�x+]��.�ne�|����w�E��	ְ���\J��(�E���'�|�K��I0 #Pi��mA�I+.CT��� �8�ؤ%�{�p�   ��^3�8h�)�@"�@ �bR�J�pL�<
8����	�#BA��,���4�!�����y^��� d�6��nA�r9m���\��Pi�|�&��Y��E�O�8"ɰ�f�'8��#_1�E�` �8��c5>3��d��)�����4��<��܀�@ 	"�_{~��R$�>��������H*^S��6� �ڀ0\s8�È���D�o�h6QgUF���)����4�>����+��㹒o2�F��Rp�!�|��3�@bC�"�
D���/�D"pe-�b���ј|H��Q  ��ܥ0C�̑�|�D  ���;?nʃ!�   	`��)C��Q(1�A���G���X�{X��1��[6��F9�$�'�C�d#'�o�!�����G�c0��|�y|��2@�4��P�(hX|
�Kڙ�
�`y���N�؂0�0A� ��R �g~ H� �~�ds���<�@��f@(*�\k�3�8�.C�N�1V�;lnģ�vj�h
��H6�"�q?��<�}d��Q��M���e|���_�%�g���HL�ĩ��Ӥ�؍`ҋB@  
�=� �C�ɇ�P;b���$(
A0D�ܠ p�Ě~�$S�� �@$�"����(c��L}�I*$���!��a��:��9~�*�9��<ƛ0��t��)�,�M���ts5�%�|��x�o���t�~>M�M����!��L�(q7S�q�`v&�40� !D��Qax@&�������	D�%t��⨰�NX"�@����P��Iy"	�$A������2�X�<�ݹA� 2�� �o7�	 C!��E CG]�H�0��f��&<0I
�%$!��L}@ ��!L��j�� ��96��.!E˱����������'u}��^?��6��<�J<+�Lq���fN�D�,�7���<	bGs1�A���i���<�0Y�x泃�y_'��x*>YN�dlV�,���1I#{y�_6`�RX�x�S�;���������*!3�ػ��MN��W�~����ih-ڻ��2�l�FW�x��M"g�U.s�>Kl��#j���gHI�D���?���i�QG��L#�����B� ��4w�c!y�T��@_*��`����aL."]�5���{82|�&L#����m#�#��ژqz��ha)i��>&G��{X��`�:1,F�� h(0( �cS�!� �@B"��@4�~ͤ�2��W�|=�
�\���Q"�<�Ԑ-c��#�V ��UU-�B! �(F�dD^?�2�,3DPDJA�m������=���3��]oCX��!�E !ibTh/��I�c�x���h ��¦b�RP*qL*�����C��8$�\���t��̶�^�0_�}&��J�no8i��8"rWep@����(�(�Ad�	Q�8 6�CB�4!9R��H8��F�ڑH $�5�v3��~���!�W�_���(̆e� �m���	
K��� `�   ����
�fC^�CI��"oc��
�'�,���X�ئǷ���
CJ��Qг PI���%l���U�Da
��ᢒ�6I�,Әm:Q��T�����!� K��T�8��%�G��y�A
�JU�"��
��⢢"�XI �H@��P�H  ��@"� tt"*d�!�ɓƇ�0�x@TT0� �ɤ>n��t�9�*Bt��+���P��)��X7and���� �x0�)�Ǉ�����0�<AŘ!)�>��\E�L�1��x|�Ȅ���T�Gǥ�y,��*�y��1��4��t�ZL��!t�r�"��B{�1Pa�`,�8zB��'U9�]KWz��-��kЗ�l&�G�h^-x��%O�PB`H8
 A�� �aHt.

'��`PBCEbRB�08�	�B`0�-�n����������%�	�I��%�E ݐ���M[6�i�<[ �&EX�W���3�<��I�;l���%�cL����
7p9 DE��l� ��@�c��.�`��y��i�b��YʋX Tq�x�׶n�[����@���!�1ZVhW�k��Gҍ��0���@X����H�0e" T($(a�����@ �
�AA( 8�	$5R0(�D! �"`0Hz��X�~�ԣ�1A��,x��:�W�Lы<�Z�>u�+!X  ��S������;<ϓ�|���q������Q\�&�o����'�i�����Y&;�F!b��qX�P��k���Y�:�p	�4t��Nx?����5�Դpm�_y�K9�j�b+M4P��C&M���9���1�*�h��	��H���;�!*�R�N��1AC�@AB�00� A�D�84R'B�BA����@   ��1�V?~��7h}#�گ�,�!k�ĝ�R ����Ϗ�t̑. �A ��Z�/s��y�x��������L�Uv�W��M��O�y����^^�!�_�!~�e�$x"���̟���-���a�(	�D�?�%6q�8ʳ�e'x/�y�,�WD�h���R�.�H��AE���!I�����p6��m�:Au����4���OR�+�kmJ$���M.`�uhI'�����$.l �S�vf��߉Q= B� �� `�0�� �������"D�H�6�>��2�x�7�_��B{��R�p� ��8�f��i-���[~��F��"�K
�z�G���I��xw<�.ϰ�6h
�C�����M��X<D/lV����J�	�[�vFh1J��_���9cG��񨱚�F��u�`�� `.'1b DI,S�O��!�wz>|�nk�w�K�Yg}"�>=��D�T�HZ���Kl���p�> ���ʡ�_����u���Bʏ��O�:`x�H>�f$�,�Qaϲ�v�a!���� `0�H��%`�P�xȬQA`����i1�x��yN����O;�3%�,`]`|B4�,�K�|d>�|�zL�.�w�����"K��-E;�T` ��`Dp�
  D�ڿ��m�;|��p��I���2	/��R�B���j$��Sc�O���@(*�	G�%Q8�]�qA}�P���C�w�i$d �l:pE���̤�`v� �����:_��T�4#o*o�����@"#NEaP�*�E��"�	k�. �w !�E~�o�!"/���ڮ�~�
�Q8
�\Mun�tr.�fEv�8�!�L8�� �x3��N/�ؘ��1�y��\bm���p�b���P#��s��i���K	��IĔ�ڛ�蘵, �=�����P�lj��p � p>�E�"[\�Xð�繴�0��)Oĝ��b�4)Z�6���&��K�z!&���Ùp�1x�V�P�h��G#q����� C�� �᳝��f��$i)*	2Ĕt�Vm�ꚜ��8, Aatj=\dU��`8�F(
` P.��e6�C���(o��������d+&�D?�DT�å����s�@B2�RK���(�f����$)���f���H���N��a�e�>���L$
a
�°�&�>����f�*���%� p.����y'82*<����9n��E��a����`�pP�	%F��#0�xG�$*>vw�,.�0T0�VLF���Q&UQ�DD ����%��Сp�2  TP͂� `�H8 *��f�ð�m�l��u�� �@,
 R蔐�p<&I�$Bb1�P�I85:�� 	R��!,�R&�BE��$(�Dp 
���F[���d����@�wBT�KE�@���������m�'Y?�.�H0�Or�H��cL����`�Z�
�Ŧ���2bo'9 S �
��A0�A����$��0)�� �2L'>�����@0���[$���������c�  ��4�   $ ����UBa�]����I �#�H��C �x݄�+�C�Ǳ1  @��ș	�HA ��8�2�;����A �ǆ��L z�x�% "y۱���[!���   � 3�H$ �@������� Q(Ӹ����  �DR��fK���^��o�A
  �  $�`�  @�?�1�(�F����ֱ����?��A�h���o'_~ �@�0  �u8�| ���6���Mby�˨����� ���)B A ����Ʀ�fPt�+Z�^6%`�d0����_=�hECē�s_v�9|��l�@����␦�����F���c���.¼Av��՜����.` @%��j�  �Ad� 9���s_� ���<M�QR*@$�  �Ep�:�Ef�(�U˨f+�P��
��W����c|��oP�P�L��Nr���+��s� vF<�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dap4uupuswbyx"
path="res://.godot/imported/info.jpg-37cfdb61b8ae82e4ff486d549162185c.ctex"
metadata={
"vram_texture": false
}
 no��+�J1��Ԇextends Node
var window = JavaScript.get_interface("window")
#var window
#var connect_callback = JavaScript.create_callback(self, "_connect")

#func _ready():
#	pass

func _login(args):
	# Get the first argument (the DOM event in our case).
	var js_event = args[0]
	print("login message")
	print(js_event)
	# Call preventDefault and set the `returnValue` property of the DOM event.
	#js_event.preventDefault()
	#js_event.returnValue = ''
func _connect(args):
	# Get the first argument (the DOM event in our case).
	var js_event = args[0]
	print("login message")
	print(js_event)
	# Call preventDefault and set the `returnValue` property of the DOM event.
	#js_event.preventDefault()
	#js_event.returnValue = ''


func login(callback):
	window.login(Server.player_id).then(callback)

func connect_plug(callback):
	window.connect_mainnet().then(callback)

func getUsername(principal,callback):
	window.getICNSName(principal).then(callback)

#func _on_request_completed(result, response_code, headers, body):
var test_json_conv = JSON.new()
test_json_conv.parse(body.get_string_from_utf8())
#	var json = test_json_conv.get_data()
#	print(json.result)
�1��extends Node

var valid_tiles: TileMap = null
var path_tiles: TileMap = null
var hoed_tiles: TileMap = null
var watered_tiles: TileMap = null
var ocean_tiles: TileMap = null
var deep_ocean_tiles: TileMap = null
var dirt_tiles: TileMap = null
var forest_tiles: TileMap = null
var wall_tiles: TileMap = null
var selected_wall_tiles: TileMap = null
var foundation_tiles: TileMap = null
var selected_foundation_tiles: TileMap = null
var object_tiles: TileMap = null
var fence_tiles: TileMap = null
var light_tiles: TileMap = null
var wet_sand_tiles: TileMap = null
var cave_wall_tiles: TileMap = null

var rng = RandomNumberGenerator.new()



func return_atlas_tile_cord(tile_name,id):
	match tile_name:
		"beach":
			return Vector2i(rng.randi_range(50,52),rng.randi_range(24,26))
		"plains":
			match id:
				0:
					if Util.chance(50):
						return Vector2i(rng.randi_range(30,32),rng.randi_range(17,19))
					else:
						return Vector2i(rng.randi_range(38,47),rng.randi_range(28,35))
				1:
					return Vector2i(24,14)
				2:
					return Vector2i(25,14)
				3:
					return Vector2i(25,15)
				4:
					return Vector2i(24,15)
				5:
					return Vector2i(rng.randi_range(30,32),16)
				6:
					return Vector2i(33,rng.randi_range(17,19))
				7:
					return Vector2i(rng.randi_range(30,32),20)
				8:
					return Vector2i(29,rng.randi_range(17,19))
				9:
					return Vector2i(29,16)
				10:
					return Vector2i(33,16)
				11:
					return Vector2i(33,20)
				12:
					return Vector2i(29,20)
		"forest":
			match id:
				0:
					if Util.chance(50):
						return Vector2i(rng.randi_range(30,32),rng.randi_range(24,26))
					else:
						return Vector2i(rng.randi_range(38,47),rng.randi_range(37,43))
				1:
					return Vector2i(28,21)
				2:
					return Vector2i(29,21)
				3:
					return Vector2i(29,22)
				4:
					return Vector2i(28,22)
				5:
					return Vector2i(rng.randi_range(30,32),23)
				6:
					return Vector2i(33,rng.randi_range(24,26))
				7:
					return Vector2i(rng.randi_range(30,32),27)
				8:
					return Vector2i(29,rng.randi_range(24,26))
				9:
					return Vector2i(29,23)
				10:
					return Vector2i(33,23)
				11:
					return Vector2i(33,27)
				12:
					return Vector2i(29,27)
		"dirt":
			match id:
				0:
					if Util.chance(2):
						return Vector2i(rng.randi_range(40,43),rng.randi_range(0,1))
					if Util.chance(50):
						return Vector2i(rng.randi_range(40,42),rng.randi_range(17,19))
					else:
						return Vector2i(rng.randi_range(48,55),rng.randi_range(28,35))
				1:
					return Vector2i(34,14)
				2:
					return Vector2i(35,14)
				3:
					return Vector2i(35,15)
				4:
					return Vector2i(34,15)
				5:
					return Vector2i(rng.randi_range(40,42),23)
				6:
					return Vector2i(43,rng.randi_range(17,19))
				7:
					return Vector2i(rng.randi_range(40,42),20)
				8:
					return Vector2i(39,rng.randi_range(17,19))
				9:
					return Vector2i(39,16)
				10:
					return Vector2i(43,16)
				11:
					return Vector2i(43,20)
				12:
					return Vector2i(39,20)
		"snow":
			match id:
				0:
					if Util.chance(2):
						return Vector2i(rng.randi_range(40,43),rng.randi_range(0,1))
					if Util.chance(50):
						return Vector2i(rng.randi_range(40,42),rng.randi_range(17,19))
					else:
						return Vector2i(rng.randi_range(48,55),rng.randi_range(28,35))
				1:
					return Vector2i(34,14)
				2:
					return Vector2i(35,14)
				3:
					return Vector2i(35,15)
				4:
					return Vector2i(34,15)
				5:
					return Vector2i(rng.randi_range(40,42),23)
				6:
					return Vector2i(43,rng.randi_range(17,19))
				7:
					return Vector2i(rng.randi_range(40,42),20)
				8:
					return Vector2i(39,rng.randi_range(17,19))
				9:
					return Vector2i(39,16)
				10:
					return Vector2i(43,16)
				11:
					return Vector2i(43,20)
				12:
					return Vector2i(39,20)
		"wet_sand":
			match id:
				0:
					return Vector2i(rng.randi_range(59,60),rng.randi_range(25,26))
				1:
					return Vector2i(54,22)
				2:
					return Vector2i(55,22)
				3:
					return Vector2i(55,23)
				4:
					return Vector2i(54,23)
				5:
					return Vector2i(rng.randi_range(59,60),24)
				6:
					return Vector2i(61,rng.randi_range(25,26))
				7:
					return Vector2i(rng.randi_range(59,60),27)
				8:
					return Vector2i(58,rng.randi_range(25,26))
				9:
					return Vector2i(58,24)
				10:
					return Vector2i(61,24)
				11:
					return Vector2i(61,27)
				12:
					return Vector2i(58,27)
				null:
					return Vector2i(rng.randi_range(50,52),rng.randi_range(24,26))
		"ocean":
			match id:
				0:
					return Vector2i(-1,-1)
				1:
					return Vector2i(25,63)
				2:
					return Vector2i(26,63)
				3:
					return Vector2i(26,64)
				4:
					return Vector2i(25,64)
				5:
					return Vector2i(26,60)
				6:
					return Vector2i(27,61)
				7:
					return Vector2i(26,62)
				8:
					return Vector2i(25,61)
				9:
					return Vector2i(25,60)
				10:
					return Vector2i(27,60)
				11:
					return Vector2i(27,62)
				12:
					return Vector2i(25,62)
		"deep_ocean":
			match id:
				0:
					return Vector2i(26,56)
				1:
					return Vector2i(25,58)
				2:
					return Vector2i(25,56)
				3:
					return Vector2i(27,56)
				4:
					return Vector2i(25,56)
				5:
					return Vector2i(rng.randi_range(26,27),57)
				6:
					return Vector2i(25,57)
				7:
					return Vector2i(rng.randi_range(25,26),59)
				8:
					return Vector2i(27,rng.randi_range(58,59))
			return Vector2i(26,58)
	return Vector2i(-1,-1)
#				9:
#					return Vector2i(25,60)
#				10:
#					return Vector2i(27,60)
#				11:
#					return Vector2i(27,62)
#				12:
#					return Vector2i(25,62)
			
	


func validate_forest_tiles(location):
	var active = false
	if not active:
		active = true
		for x in range(2):
			for y in range(2):
				if not valid_tiles.get_cell_atlas_coords(0,Vector2i(x,-y)+location) == Constants.VALID_TILE_ATLAS_CORD or valid_tiles.local_to_map(Server.player_node.position) == Vector2i(x,-y) + location or forest_tiles.get_cell_atlas_coords(0,Vector2i(x,-y)+location) == Vector2i(-1,-1) or not foundation_tiles.get_cell_atlas_coords(0,Vector2i(x,-y)+location) == Vector2i(-1,-1): 
					return false
					break
		return true

func validate_tiles(location, dimensions):
	var active = false
	if Server.world.name == "Overworld":
		if not active:
			active = true
			for x in range(dimensions.x):
				for y in range(dimensions.y):
					if not valid_tiles.get_cell_atlas_coords(0,Vector2i(x,-y)+location) == Constants.VALID_TILE_ATLAS_CORD or \
					hoed_tiles.get_cell_atlas_coords(0,Vector2i(x,-y)+location) != Vector2i(-1,-1) or \
					valid_tiles.local_to_map(Server.player_node.position) == Vector2i(x,-y)+location or \
					Server.player_node.position.distance_to((location+Vector2i(1,1))*16) > Constants.MIN_PLACE_OBJECT_DISTANCE:
						return false
						break
			return true
#	else:
#		if not active:
#			active = true
#			for x in range(dimensions.x):
#				for y in range(dimensions.y):
#					if not valid_tiles.get_cell_atlas_coords(0,Vector2i(x,-y)+location) == Constants.VALID_TILE_ATLAS_CORD or \
#					valid_tiles.local_to_map(Server.player_node.position) == Vector2i(x,-y)+location or \
#					Server.player_node.position.distance_to((location+Vector2i(1,1))*16) > Constants.MIN_PLACE_OBJECT_DISTANCE:
#			return true


func validate_foundation_tiles(location, dimensions):
	var active = false
	if not active:
		active = true
		for x in range(dimensions.x):
			for y in range(dimensions.y):
				if foundation_tiles.get_cell_atlas_coords(0,location+Vector2i(x,-y))==Vector2i(-1,-1): #or not valid_tiles.get_cell_atlas_coords(0,Vector2i(x,-y)+location) == Constants.VALID_TILE_ATLAS_CORD: 
					return false
					break
		return true


func isValidNavigationTile(loc) -> bool:
	if Server.world.name == "Overworld":
		if wet_sand_tiles.get_cell_atlas_coords(0,loc) != Vector2i(-1,-1) and deep_ocean_tiles.get_cell_atlas_coords(0,loc) == Vector2i(-1,-1):
			return true
		elif valid_tiles.get_cell_atlas_coords(0,loc) == Vector2i(-1,-1):
			return false
		elif valid_tiles.get_cell_atlas_coords(0,loc+Vector2(1,0)) == Vector2i(-1,-1) and valid_tiles.get_cell_atlas_coords(0,loc+Vector2(0,1)) == Vector2i(-1,-1):
			return false
		elif valid_tiles.get_cell_atlas_coords(0,loc+Vector2(1,0)) == Vector2i(-1,-1) and valid_tiles.get_cell_atlas_coords(0,loc+Vector2(0,-1)) == Vector2i(-1,-1):
			return false
		elif valid_tiles.get_cell_atlas_coords(0,loc+Vector2(-1,0)) == Vector2i(-1,-1) and valid_tiles.get_cell_atlas_coords(0,loc+Vector2(0,1)) == Vector2i(-1,-1):
			return false
		elif valid_tiles.get_cell_atlas_coords(0,loc+Vector2(-1,0)) == Vector2i(-1,-1) and valid_tiles.get_cell_atlas_coords(0,loc+Vector2(0,-1)) == Vector2i(-1,-1):
			return false
		elif valid_tiles.get_cell_atlas_coords(0,loc+Vector2(-1,0)) == Vector2i(-1,-1) and valid_tiles.get_cell_atlas_coords(0,loc+Vector2(1,0)) == Vector2i(-1,-1):
			return false
		elif valid_tiles.get_cell_atlas_coords(0,loc+Vector2(0,1)) == Vector2i(-1,-1) and valid_tiles.get_cell_atlas_coords(0,loc+Vector2(0,-1)) == Vector2i(-1,-1):
			return false
		return true
	else:
		if valid_tiles.get_cell_atlas_coords(0,loc) == Vector2i(-1,-1):
			return false
		elif valid_tiles.get_cell_atlas_coords(0,loc+Vector2(1,0)) == Vector2i(-1,-1) and valid_tiles.get_cell_atlas_coords(0,loc+Vector2(0,1)) == Vector2i(-1,-1):
			return false
		elif valid_tiles.get_cell_atlas_coords(0,loc+Vector2(1,0)) == Vector2i(-1,-1) and valid_tiles.get_cell_atlas_coords(0,loc+Vector2(0,-1)) == Vector2i(-1,-1):
			return false
		elif valid_tiles.get_cell_atlas_coords(0,loc+Vector2(-1,0)) == Vector2i(-1,-1) and valid_tiles.get_cell_atlas_coords(0,loc+Vector2(0,1)) == Vector2i(-1,-1):
			return false
		elif valid_tiles.get_cell_atlas_coords(0,loc+Vector2(-1,0)) == Vector2i(-1,-1) and valid_tiles.get_cell_atlas_coords(0,loc+Vector2(0,-1)) == Vector2i(-1,-1):
			return false
		elif valid_tiles.get_cell_atlas_coords(0,loc+Vector2(-1,0)) == Vector2i(-1,-1) and valid_tiles.get_cell_atlas_coords(0,loc+Vector2(1,0)) == Vector2i(-1,-1):
			return false
		elif valid_tiles.get_cell_atlas_coords(0,loc+Vector2(0,1)) == Vector2i(-1,-1) and valid_tiles.get_cell_atlas_coords(0,loc+Vector2(0,-1)) == Vector2i(-1,-1):
			return false
		return true

func remove_valid_tiles(location, dimensions = Vector2i(1,1)):
	location = Vector2i(location.x,location.y)
	for x in range(dimensions.x):
		for y in range(dimensions.y):
			valid_tiles.erase_cell(0,location+Vector2i(x,-y))

func add_valid_tiles(location, dimensions = Vector2i(1,1)):
	location = Vector2i(location.x,location.y)
	for x in range(dimensions.x):
		for y in range(dimensions.y):
			valid_tiles.set_cell(0,location+Vector2i(x,-y),0,Constants.VALID_TILE_ATLAS_CORD,0)

func add_navigation_tiles(location, dimensions = Vector2i(1,1)):
	location = Vector2i(location.x,location.y)
	for x in range(dimensions.x):
		for y in range(dimensions.y):
			valid_tiles.set_cell(0,location+Vector2i(x,-y),0,Constants.NAVIGATION_TILE_ATLAS_CORD,0)


func isValidAutoTile(_pos, _map):
	var count = 0
	if _map.get_cell_atlas_coords(0,_pos + Vector2i(0,1)) != Vector2i(-1,-1):
		count += 1
	if _map.get_cell_atlas_coords(0,_pos + Vector2i(0,-1)) != Vector2i(-1,-1):
		count += 1
	if _map.get_cell_atlas_coords(0,_pos + Vector2i(1,0)) != Vector2i(-1,-1):
		count += 1
	if _map.get_cell_atlas_coords(0,_pos + Vector2i(-1,0)) != Vector2i(-1,-1):
		count += 1
	if count <= 1:
		return false
	else:
		if _map.get_cell_atlas_coords(0,_pos + Vector2i(-1,-1)) != Vector2i(-1,-1):
			count += 1
		if _map.get_cell_atlas_coords(0,_pos + Vector2i(-1,1)) != Vector2i(-1,-1):
			count += 1
		if _map.get_cell_atlas_coords(0,_pos + Vector2i(1,-1)) != Vector2i(-1,-1):
			count += 1
		if _map.get_cell_atlas_coords(0,_pos + Vector2i(1,1)) != Vector2i(-1,-1):
			count += 1
		if count == 6:
			if _map.get_cell_atlas_coords(0,_pos + Vector2i(-1,-1)) == Vector2i(-1,-1) and _map.get_cell_atlas_coords(0,_pos + Vector2i(1,1)) == Vector2i(-1,-1):
				return false
			elif _map.get_cell_atlas_coords(0,_pos + Vector2i(1,-1)) == Vector2i(-1,-1) and _map.get_cell_atlas_coords(0,_pos + Vector2i(-1,1)) == Vector2i(-1,-1):
				return false
			elif count == 2:
				return false
	return true

			
	
func return_neighboring_cells(_pos, _map):
	var count = 0
	if _map.get_cellv(_pos + Vector2(0,1)) != -1:
		count += 1
	if _map.get_cellv(_pos + Vector2(0,-1)) != -1:
		count += 1
	if _map.get_cellv(_pos + Vector2(1,0)) != -1:
		count += 1
	if _map.get_cellv(_pos + Vector2(-1,0)) != -1:
		count += 1
	return count
	
func return_if_valid_wall_cell(_pos, _map):
	if _map.get_cell_atlas_coords(0,_pos+Vector2i(0,1)) != Vector2i(-1,-1) and _map.get_cell_atlas_coords(0,_pos+Vector2i(1,1)) != Vector2i(-1,-1) and _map.get_cell_atlas_coords(0,_pos+Vector2i(1,0)) != Vector2i(-1,-1):
		return false
	elif _map.get_cell_atlas_coords(0,_pos+Vector2i(0,-1)) != Vector2i(-1,-1) and _map.get_cell_atlas_coords(0,_pos+Vector2i(1,-1)) != Vector2i(-1,-1) and _map.get_cell_atlas_coords(0,_pos+Vector2i(1,0)) != Vector2i(-1,-1):
		return false 
	elif _map.get_cell_atlas_coords(0,_pos+Vector2i(-1,-1)) != Vector2i(-1,-1) and _map.get_cell_atlas_coords(0,_pos+Vector2i(-1,0)) != Vector2i(-1,-1) and _map.get_cell_atlas_coords(0,_pos+Vector2i(0,-1)) != Vector2i(-1,-1):
		return false 
	elif _map.get_cell_atlas_coords(0,_pos+Vector2i(-1,0)) != Vector2i(-1,-1) and _map.get_cell_atlas_coords(0,_pos+Vector2i(-1,1)) != Vector2i(-1,-1) and _map.get_cell_atlas_coords(0,_pos+Vector2i(0,1)) != Vector2i(-1,-1):
		return false 
	return true
	
	
func isCenterBitmaskTile(_pos, _map):
	if _map.get_cell_atlas_coords(0,_pos+Vector2i(0,1)) != Vector2i(-1,-1) and _map.get_cell_atlas_coords(0,_pos+Vector2i(0,-1)) != Vector2i(-1,-1) and \
	_map.get_cell_atlas_coords(0,_pos+Vector2i(1,0)) != Vector2i(-1,-1) and _map.get_cell_atlas_coords(0,_pos+Vector2i(-1,0)) != Vector2i(-1,-1) and \
	_map.get_cell_atlas_coords(0,_pos+Vector2i(1,1)) != Vector2i(-1,-1) and _map.get_cell_atlas_coords(0,_pos+Vector2i(-1,1)) != Vector2i(-1,-1) and \
	_map.get_cell_atlas_coords(0,_pos+Vector2i(-1,-1)) != Vector2i(-1,-1) and _map.get_cell_atlas_coords(0,_pos+Vector2i(1,-1)) != Vector2i(-1,-1):
		return true
	return false
	
func get_subtile_with_priority(id, tilemap: TileMap):
	var tiles = tilemap.tile_set
	var rect = tilemap.tile_set.tile_get_region(id)
	var size_x = rect.size.x / tiles.autotile_get_size(id).x
	var size_y = rect.size.y / tiles.autotile_get_size(id).y
	var tile_array = []
	for x in range(size_x):
		for y in range(size_y):
			var priority = tiles.autotile_get_subtile_priority(id, Vector2(x ,y))
			for p in priority:
				tile_array.append(Vector2(x,y))
	return tile_array[randi() % tile_array.size()]
	
func _set_cell(tilemap, x, y, id):
	tilemap.set_cell(x, y, id, false, false, false, Tiles.get_subtile_with_priority(id,tilemap))


func is_well_tile(loc, direction):
#	match direction:
#		"UP":
#			if object_tiles.get_cellv(loc) == 75 or object_tiles.get_cellv(loc+Vector2(-1,0)) == 75 or object_tiles.get_cellv(loc+Vector2(-2,0)) == 75:
#				return true
#		"DOWN":
#			if object_tiles.get_cellv(loc+Vector2(0,1)) == 75 or object_tiles.get_cellv(loc+Vector2(-1,1)) == 75 or object_tiles.get_cellv(loc+Vector2(-2,1)) == 75:
#				return true
#		"LEFT":
#			if object_tiles.get_cellv(loc+Vector2(-2,0)) == 75 or object_tiles.get_cellv(loc+Vector2(-2,1)) == 75:
#				return true
#		"RIGHT":
#			if object_tiles.get_cellv(loc) == 75 or object_tiles.get_cellv(loc+Vector2(0,1)) == 75:
#				return true
	return false
	
#var array
func return_autotile_id(loc,tiles):
	var array = [0,0,0,0,0,0,0,0]
	if tiles.has(loc+Vector2i(-1,-1)):
		array[0] = 1
	if tiles.has(loc+Vector2i(1,-1)):
		array[1] = 1
	if tiles.has(loc+Vector2i(1,1)):
		array[2] = 1
	if tiles.has(loc+Vector2i(-1,1)):
		array[3] = 1
	if tiles.has(loc+Vector2i(0,-1)):
		array[4] = 1
	if tiles.has(loc+Vector2i(1,0)):
		array[5] = 1
	if tiles.has(loc+Vector2i(0,1)):
		array[6] = 1
	if tiles.has(loc+Vector2i(-1,0)):
		array[7] = 1
	if array == [1,1,1,1,1,1,1,1]:
		return 0 
	elif array == [1,1,0,1,1,1,1,1]: # corners
		return 1
	elif array == [1,1,1,0,1,1,1,1]:
		return 2 
	elif array == [0,1,1,1,1,1,1,1]:
		return 3  
	elif array == [1,0,1,1,1,1,1,1]:
		return 4 
	elif array[2] == 1 and array[3] == 1 and array[5] == 1 and array[6] == 1 and array[7] == 1: # top side
		return 5
	elif array[0] == 1 and array[3] == 1 and array[4] == 1 and array[7] == 1 and array[6] == 1: # right side
		return 6
	elif array[0] == 1 and array[1] == 1 and array[4] == 1 and array[5] == 1 and array[7] == 1: # bottom side
		return 7
	elif array[1] == 1 and array[2] == 1 and array[4] == 1 and array[5] == 1 and array[6] == 1: # left side
		return 8
	elif array[2] == 1 and array[5] == 1 and array[6] == 1: # top left
		return 9
	elif array[3] == 1 and array[6] == 1 and array[7] == 1: # top right
		return 10 
	elif array[0] == 1 and array[4] == 1 and array[7] == 1: # bottom right
		return 11
	elif array[1] == 1 and array[4] == 1 and array[5] == 1: # bottom right
		return 12
	return null #INVALID


func return_elevation_autotile_id(loc,locations):
	if locations.has(loc+Vector2i(1,0)) and locations.has(loc+Vector2i(0,1)): # bottom left
		return 0 
	elif locations.has(loc+Vector2i(1,0)) and locations.has(loc+Vector2i(-1,0)): # bottom middle
		return 1
	elif locations.has(loc+Vector2i(-1,0)) and locations.has(loc+Vector2i(0,1)): # bottom right
		return 2
	elif locations.has(loc+Vector2i(-1,0)) and locations.has(loc+Vector2i(0,-1)): # top left
		return 3
	elif locations.has(loc+Vector2i(1,0)) and locations.has(loc+Vector2i(0,-1)): # top right
		return 4
	elif locations.has(loc+Vector2i(1,0)): # start left
		return 5
	elif locations.has(loc+Vector2i(-1,0)): # start right
		return 6
	
func return_elevation_atlas_tile(elevation,id):
	if id == 5:
		return Vector2i(3,22)
	elif id == 6:
		return Vector2i(2,22)
	match elevation:
		1:
			match id:
				0:
					return Vector2i(0,15)
				1:
					return Vector2i(5,15)
				2:
					return Vector2i(randi_range(1,4),15)
				3:
					return Vector2i(15,15)
				4:
					return Vector2i(16,15)
	return Vector2i(0,0)
V&%y�extends Node

const MODULO_8_BIT = 256

static func getRandomInt():
  # Randomize every time to minimize the risk of collisions
  randomize()

  return randi() % MODULO_8_BIT

static func uuidbin():
  # 16 random bytes with the bytes checked index 6 and 8 modified
  return [
	getRandomInt(), getRandomInt(), getRandomInt(), getRandomInt(),
	getRandomInt(), getRandomInt(), ((getRandomInt()) & 0x0f) | 0x40, getRandomInt(),
	((getRandomInt()) & 0x3f) | 0x80, getRandomInt(), getRandomInt(), getRandomInt(),
	getRandomInt(), getRandomInt(), getRandomInt(), getRandomInt(),
  ]

static func v4():
  # 16 random bytes with the bytes checked index 6 and 8 modified
  var b = uuidbin()

  return '%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x' % [
	# low
	b[0], b[1], b[2], b[3],

	# mid
	b[4], b[5],

	# hi
	b[6], b[7],

	# clock
	b[8], b[9],

	# clock
	b[10], b[11], b[12], b[13], b[14], b[15]
  ]
E�����`�extends CharacterBody2D

const MAX_SPEED = 285
const ACCELERATION = 300

@export var item_name: String
@export var item_quantity: int
@export var item_health: int

var being_picked_up: bool = false
var being_added_to_inventory: bool = false
var player_id
var player_pos
var adjustedPosition
var randomInt

func _ready():
	randomize()
	randomInt = randi_range(1,6)
	$AnimationPlayer.play(str(randomInt))
	adjustPosition(randomInt)
	await get_tree().create_timer(0.8).timeout
	$CollisionShape2D.set_deferred("disabled", false)
	

func _physics_process(_delta):
	if not being_picked_up:
		velocity = Vector2.ZERO
	else:
		#print(str(get_node("/root/Main/Players/"+player_id).position)) NOT WORKING
		adjustPosition(randomInt)
		var direction = adjustedPosition.direction_to(player_pos)
		velocity = velocity.move_toward(direction * MAX_SPEED, ACCELERATION)
		var distance = adjustedPosition.distance_to(player_pos)
		if distance < 4: 
			if being_added_to_inventory:
				return
			else:
				being_added_to_inventory = true
				get_parent().rpc_id(player_id.to_int(),"add_item_to_inventory",name,{"n":item_name,"q":item_quantity,"h":item_health})
				queue_free()
	velocity.normalized()
	set_velocity(velocity)
	set_up_direction(Vector2.UP)
	move_and_slide()


func adjustPosition(animation):
	if animation == 1:
		adjustedPosition = position + Vector2(24,0)
	elif animation == 2:
		adjustedPosition = position + Vector2(-24,0)
	elif animation == 3:
		adjustedPosition = position + Vector2(12,-10)
	elif animation == 4:
		adjustedPosition = position + Vector2(-12,-10)
	elif animation == 5:
		adjustedPosition = position + Vector2(4, -8)
	elif animation == 6:
		adjustedPosition = position + Vector2(-8, 4)

;G��>�t�RSRC                     PackedScene            ��������                                            1      . 	   position 
   item_name    item_quantity    CollisionShape2D 	   disabled 	   Sprite2D    x    y    resource_local_to_scene    resource_name    properties/0/path    properties/0/spawn    properties/0/sync    properties/1/path    properties/1/spawn    properties/1/sync    properties/2/path    properties/2/spawn    properties/2/sync    properties/3/path    properties/3/spawn    properties/3/sync    properties/4/path    properties/4/spawn    properties/4/sync    script    length 
   loop_mode    step    tracks/0/type    tracks/0/imported    tracks/0/enabled    tracks/0/path    tracks/0/interp    tracks/0/loop_wrap    tracks/0/keys    tracks/1/type    tracks/1/imported    tracks/1/enabled    tracks/1/path    tracks/1/interp    tracks/1/loop_wrap    tracks/1/keys    _data    custom_solver_bias    radius    height 	   _bundled       Script    res://ItemDrop/ItemDrop.gd ��������   %   local://SceneReplicationConfig_5r8s2 �         local://Animation_pye3l �         local://Animation_k7l3f �         local://Animation_potjc          local://Animation_ce3c4 0         local://Animation_opxup T         local://Animation_7nnkc x         local://Animation_w28uy �         local://AnimationLibrary_jjxd4 �         local://CapsuleShape2D_tippi �         local://PackedScene_s0kfp �         SceneReplicationConfig                                                                                                                                                                               
   Animation    
         1          value                     !                 "         #         $               times !            �?      transitions !      R�^?333>      values                   �A      update        %         value &          '         (                 )         *         +               times !          ���>��?��L?  �?      transitions !      �?{�?��?   @  �?      values                   `�             �             update              
   Animation    
         2          value                     !                 "         #         $               times !            �?      transitions !      R�^?333>      values                   ��      update        %         value &          '         (                 )         *         +               times !          ���>��?��L?  �?      transitions !         ?{�?��?   @  �?      values                   `�             �             update              
   Animation    
         3          value                     !                 "         #         $               times !            �?      transitions !      R�^?�·>      values                   @A      update        %         value &          '         (                 )         *         +               times !          ���>��?��L?  �?      transitions !      �/	?{�?�و>   @  �?      values                   `�      �     @�      �      update              
   Animation    
         4          value                     !                 "         #         $               times !            �?      transitions !      R�^?�·>      values                   @�      update        %         value &          '         (                 )         *         +               times !          ���>��?��L?  �?      transitions !      �/	?{�?�و>   @  �?      values                   `�      �     @�      �      update              
   Animation    
         5          value                     !                 "         #         $               times !            �?      transitions !      R�^?333>      values                   �@      update        %         value &          '         (                 )         *         +               times !          ���>��?��L?  �?      transitions !      �?{�?��?   @  �?      values                   @�      �     @�      �      update              
   Animation    
         6          value                     !                 "         #         $               times !            �?      transitions !      R�^?333>      values                    �      update        %         value &          '         (                 )         *         +               times !          ���>��?��L?  �?      transitions !      ��>{�?��?   @  �?      values                   ��      @)   X�h�uO�=     �@      update              
   Animation          o�:         AnimationLibrary    ,               1                2                3                4                5                6                RESET                   CapsuleShape2D    .        �@/         A         PackedScene    0      	         names "      	   ItemDrop 	   position    collision_layer    collision_mask    script    CharacterBody2D    MultiplayerSynchronizer    replication_config    AnimationPlayer 
   libraries    CollisionShape2D    shape 	   disabled 	   Sprite2D    	   variants       
       �{,                                                       	         
      �  �@      node_count             nodes     5   ��������       ����                                              ����                           ����   	                  
   
   ����                                 ����                   conn_count              conns               node_paths              editable_instances              version             RSRCp��F;y��"extends Node


const MIN_PLACE_OBJECT_DISTANCE = 50

const DISTANCE_TO_SPAWN_OBJECT = 30
const DISTANCE_TO_REMOVE_OBJECT = 50

const VALID_TILE_ATLAS_CORD = Vector2i(0,0)
const NAVIGATION_TILE_ATLAS_CORD = Vector2i(1,0)

const dimensions_dict = {
	"furnace" : Vector2(1,1),
	"crate" : Vector2(1,1),
	"wood fence" : Vector2(1,1),
	"wood gate": Vector2(2,1),
	"stone fence" : Vector2(1,1),
	"stone gate": Vector2(2,1),
	"metal fence" : Vector2(1,1),
	"metal gate": Vector2(2,1),
	"barrel" : Vector2(1,1),
	"display table" : Vector2(1,1),
	"campfire" : Vector2(1,1),
	"torch" : Vector2(1,1),
	"tool cabinet": Vector2(2,1),
	"stone chest": Vector2(2,1),
	"wood chest": Vector2(2,1),
	"workbench #1": Vector2(2,1),
	"workbench #2": Vector2(2,1),
	"workbench #3": Vector2(2,1),
	"stove #1": Vector2(2,1),
	"stove #2": Vector2(2,1),
	"stove #3": Vector2(2,1),
	"grain mill #1": Vector2(2,1),
	"grain mill #2": Vector2(2,1),
	"grain mill #3": Vector2(2,1),
	"brewing table #1": Vector2(2,1),
	"brewing table #2": Vector2(2,1),
	"brewing table #3": Vector2(2,1),
	"chair": Vector2(1,1),
	"stool": Vector2(1,1),
	"well": Vector2(3,2),
	"dresser": Vector2(2,1),
	"table": Vector2(3,2),
	"couch": Vector2(3,2),
	"armchair": Vector2(2,2),
	"bed": Vector2(2,2),
	"large rug": Vector2(4,3),
	"medium rug": Vector2(2,2),
	"small rug": Vector2(1,1),
	"sleeping bag": Vector2(1,2),
	"round table": Vector2(2,2),
	"wood door": Vector2(2,1),
	"metal door": Vector2(2,1),
	"armored door": Vector2(2,1),
	"fireplace": Vector2(2,1),
	"double cabinet": Vector2(2,1),
	"single cabinet": Vector2(1,1),
	"lamp": Vector2(1,1),
}

var object_atlas_tiles = {
	"crate": Vector2i(0,0),
	"barrel": Vector2i(0,2),
	"wood fence": Vector2i(26,68),
	"stone fence": Vector2i(26,73),
	"metal fence": Vector2i(26,78),
	"well" : Vector2i(0,84),
	"display table": Vector2i(5,81),
	"campfire": Vector2i(0,64),
	"torch": Vector2i(0,62),
}

var autotile_object_atlas_tiles = {
	"wood fence": 0,
	"stone fence": 1,
	"metal fence": 2
}

var customizable_object_atlas_tiles = {
	"bed" : {
		1: Vector2i(0,31),
		2: Vector2i(2,31),
		3: Vector2i(4,31),
		4: Vector2i(6,31),
		5: Vector2i(8,31),
		6: Vector2i(10,31),
		7: Vector2i(12,31),
		8: Vector2i(14,31),
	},
	"round table" : {
		1: Vector2i(0,39),
		2: Vector2i(2,39),
		3: Vector2i(4,39),
		4: Vector2i(6,39),
	},
	"large rug" : {
		1: Vector2i(0,50),
		2: Vector2i(7,50),
		3: Vector2i(14,50),
		4: Vector2i(21,50),
		5: Vector2i(28,50),
		6: Vector2i(35,50),
		7: Vector2i(42,50),
		8: Vector2i(49,50),
		9: Vector2i(56,50),
	},
	"medium rug" : {
		1: Vector2i(4,50),
		2: Vector2i(11,50),
		3: Vector2i(18,50),
		4: Vector2i(25,50),
		5: Vector2i(32,50),
		6: Vector2i(39,50),
		7: Vector2i(46,50),
		8: Vector2i(53,50),
		9: Vector2i(60,50),
	},
	"small rug" : {
		1: Vector2i(6,50),
		2: Vector2i(13,50),
		3: Vector2i(20,50),
		4: Vector2i(27,50),
		5: Vector2i(34,50),
		6: Vector2i(41,50),
		7: Vector2i(48,50),
		8: Vector2i(55,50),
		9: Vector2i(62,50),
	},
	"dresser" : {
		1: Vector2i(0,92),
		2: Vector2i(2,92),
		3: Vector2i(4,92),
		4: Vector2i(6,92),
		5: Vector2i(8,92),
		6: Vector2i(10,92),
		7: Vector2i(12,92),
		8: Vector2i(14,92),
		9: Vector2i(16,92),
		10: Vector2i(18,92),
		11: Vector2i(20,92),
		12: Vector2i(20,92),
		13: Vector2i(22,91),
		14: Vector2i(24,92),
	},
	"double cabinet" : {
		1: Vector2i(0,96),
		2: Vector2i(2,96),
		3: Vector2i(4,96),
		4: Vector2i(7,96),
		5: Vector2i(9,96),
		6: Vector2i(11,96),
		7: Vector2i(13,96),
		8: Vector2i(15,96),
		9: Vector2i(17,96),
		10: Vector2i(19,96),
		11: Vector2i(21,96),
		12: Vector2i(23,96),
	},
	"single cabinet" : {
		1: Vector2i(0,98),
		2: Vector2i(1,98),
		3: Vector2i(2,98),
		4: Vector2i(3,98),
		5: Vector2i(4,98),
		6: Vector2i(5,98),
	},
	"lamp" : {
		1: Vector2i(0,100),
		2: Vector2i(2,100),
		3: Vector2i(4,100),
		4: Vector2i(6,100),
		5: Vector2i(8,100),
		6: Vector2i(10,100),
		7: Vector2i(12,100),
		8: Vector2i(14,100),
		9: Vector2i(16,100),
		10: Vector2i(18,100),
		11: Vector2i(20,100),
		12: Vector2i(22,99),
	},
	"fireplace": {
		1: Vector2i(0,103),
		2: Vector2i(18,103)
	},
	"stool": {
		1: Vector2i(0,83),
		2: Vector2i(1,83),
		3: Vector2i(2,83)
	},
	
}


var customizable_rotatable_object_atlas_tiles = {
	"chair" : {
		1 : {
			"left": Vector2i(0,34),
			"right": Vector2i(1,34),
			"down": Vector2i(2,34),
			"up": Vector2i(3,34),
		},
		2 : {
			"left": Vector2i(4,34),
			"right": Vector2i(5,34),
			"down": Vector2i(6,34),
			"up": Vector2i(7,34),
		},
		3 : {
			"left": Vector2i(8,34),
			"right": Vector2i(9,34),
			"down": Vector2i(10,34),
			"up": Vector2i(11,34),
		},
		4 : {
			"left": Vector2i(12,34),
			"right": Vector2i(13,34),
			"down": Vector2i(14,34),
			"up": Vector2i(15,34),
		},
		5 : {
			"left": Vector2i(16,34),
			"right": Vector2i(17,34),
			"down": Vector2i(18,34),
			"up": Vector2i(19,34),
		},
		6 : {
			"left": Vector2i(20,34),
			"right": Vector2i(21,34),
			"down": Vector2i(22,34),
			"up": Vector2i(23,34),
		},
	},
	"armchair" : {
		1 : {
			"left": Vector2i(0,36),
			"right": Vector2i(2,36),
			"down": Vector2i(4,36),
			"up": Vector2i(6,36),
		},
		2 : {
			"left": Vector2i(8,36),
			"right": Vector2i(10,36),
			"down": Vector2i(12,36),
			"up": Vector2i(14,36),
		},
		3 : {
			"left": Vector2i(16,36),
			"right": Vector2i(18,36),
			"down": Vector2i(20,36),
			"up": Vector2i(22,36),
		},
		4 : {
			"left": Vector2i(24,36),
			"right": Vector2i(26,36),
			"down": Vector2i(28,36),
			"up": Vector2i(30,36),
		},
	},
	"table": {
		1 : {
			"left": Vector2i(2,43),
			"right": Vector2i(2,43),
			"down": Vector2i(0,42),
			"up": Vector2i(0,42),
		},
		2 : {
			"left": Vector2i(7,43),
			"right": Vector2i(7,43),
			"down": Vector2i(5,42),
			"up": Vector2i(5,42),
		},
		3 : {
			"left": Vector2i(12,43),
			"right": Vector2i(12,43),
			"down": Vector2i(10,42),
			"up": Vector2i(10,42),
		},
		4 : {
			"left": Vector2i(17,43),
			"right": Vector2i(17,43),
			"down": Vector2i(15,42),
			"up": Vector2i(15,42),
		},
	},
	"couch": {
		1 : {
			"left": Vector2i(8,46),
			"right": Vector2i(6,46),
			"down": Vector2i(0,47),
			"up": Vector2i(3,47),
		},
		2 : {
			"left": Vector2i(18,46),
			"right": Vector2i(16,46),
			"down": Vector2i(10,47),
			"up": Vector2i(13,47),
		},
		3 : {
			"left": Vector2i(28,46),
			"right": Vector2i(26,46),
			"down": Vector2i(20,47),
			"up": Vector2i(23,47),
		},
	},
}

var rotatable_object_atlas_tiles = {
	"furnace": {
		"up": Vector2i(0,4),
		"right": Vector2i(1,4),
		"down": Vector2i(2,4),
		"left": Vector2i(3,4)
	},
	"wood chest": {
		"up": Vector2i(6,12),
		"right": Vector2i(19,11),
		"down": Vector2i(0,12),
		"left": Vector2i(12,11)
	},
	"stone chest": {
		"up": Vector2i(6,15),
		"right": Vector2i(19,14),
		"down": Vector2i(0,15),
		"left": Vector2i(12,14)
	},
	"tool cabinet": {
		"up": Vector2i(3,8),
		"right": Vector2i(0,7),
		"down": Vector2i(1,8),
		"left": Vector2i(5,7)
	},
	"workbench #1": {
		"down": Vector2i(0,17),
		"up": Vector2i(2,17),
		"right": Vector2i(4,17),
		"left": Vector2i(5,17)
	},
	"workbench #2": {
		"down": Vector2i(6,17),
		"up": Vector2i(8,17),
		"right": Vector2i(10,17),
		"left": Vector2i(11,17)
	},
	"workbench #3": {
		"down": Vector2i(12,17),
		"up": Vector2i(14,17),
		"right": Vector2i(16,17),
		"left": Vector2i(17,17)
	},
	"stove #1": {
		"down": Vector2i(0,20),
		"up": Vector2i(2,20),
		"right": Vector2i(4,20),
		"left": Vector2i(5,20)
	},
	"stove #2": {
		"down": Vector2i(6,20),
		"up": Vector2i(8,20),
		"right": Vector2i(10,20),
		"left": Vector2i(11,20)
	},
	"stove #3": {
		"down": Vector2i(12,20),
		"up": Vector2i(14,20),
		"right": Vector2i(16,20),
		"left": Vector2i(17,20)
	},
	"grain mill #1": {
		"down": Vector2i(0,24),
		"up": Vector2i(2,24),
		"right": Vector2i(4,24),
		"left": Vector2i(5,24)
	},
	"grain mill #2": {
		"down": Vector2i(6,24),
		"up": Vector2i(8,24),
		"right": Vector2i(10,24),
		"left": Vector2i(11,24)
	},
	"grain mill #3": {
		"down": Vector2i(12,24),
		"up": Vector2i(14,24),
		"right": Vector2i(16,24),
		"left": Vector2i(17,24)
	},
	"brewing table #1": {
		"down": Vector2i(0,27),
		"up": Vector2i(2,27),
		"right": Vector2i(4,27),
		"left": Vector2i(5,27)
	},
	"brewing table #2": {
		"down": Vector2i(6,27),
		"up": Vector2i(8,27),
		"right": Vector2i(10,27),
		"left": Vector2i(11,27)
	},
	"brewing table #3": {
		"down": Vector2i(12,27),
		"up": Vector2i(14,27),
		"right": Vector2i(16,27),
		"left": Vector2i(17,27)
	},
	"wood gate": {
		"down": Vector2i(0,68),
		"up": Vector2i(0,68),
		"right": Vector2i(12,66),
		"left": Vector2i(12,66)
	},
	"stone gate": {
		"down": Vector2i(0,73),
		"up": Vector2i(0,73),
		"right": Vector2i(12,71),
		"left": Vector2i(12,71)
	},
	"metal gate": {
		"down": Vector2i(0,78),
		"up": Vector2i(0,78),
		"right": Vector2i(12,76),
		"left": Vector2i(12,76)
	},
	"wood door": {
		"down": Vector2i(0,53),
		"up": Vector2i(0,53),
		"right": Vector2i(6,58),
		"left": Vector2i(6,58)
	},
	"metal door": {
		"down": Vector2i(8,53),
		"up": Vector2i(8,53),
		"right": Vector2i(14,57),
		"left": Vector2i(14,57)
	},
	"armored door": {
		"down": Vector2i(16,53),
		"up": Vector2i(16,53),
		"right": Vector2i(22,57),
		"left": Vector2i(22,57)
	},
}


var crop_atlas_tiles = {
	"wheat" : {
		"seeds" : Vector2i(23,0),
		"1" : Vector2i(22,1),
		"2" : Vector2i(23,1),
		"3" : Vector2i(24,0),
		"harvest" : Vector2i(25,0),
		"dead" : Vector2i(26,0)
	},
	"potato": {
		"seeds": Vector2i(23,2),
		"1": Vector2i(22,3),
		"2": Vector2i(23,3),
		"3": Vector2i(24,2),
		"harvest": Vector2i(25,2),
		"dead": Vector2i(26,2)
		},
	"yellow onion": {
		"seeds": Vector2i(23,4),
		"1": Vector2i(22,5),
		"2": Vector2i(23,5),
		"3": Vector2i(24,4),
		"harvest": Vector2i(25,4),
		"dead": Vector2i(26,4)
		},
	"garlic": {
		"seeds": Vector2i(23,6),
		"1": Vector2i(22,7),
		"2": Vector2i(23,7),
		"3": Vector2i(24,6),
		"harvest": Vector2i(25,6),
		"dead": Vector2i(26,6),
		},
	"radish": {
		"seeds": Vector2i(23,8),
		"1": Vector2i(22,9),
		"2": Vector2i(23,9),
		"3": Vector2i(24,8),
		"harvest": Vector2i(25,8),
		"dead": Vector2i(26,8),
		},
	"carrot": {
		"seeds": Vector2i(23,10),
		"1": Vector2i(22,11),
		"2": Vector2i(23,11),
		"3": Vector2i(24,10),
		"harvest": Vector2i(25,10),
		"dead": Vector2i(26,10),
		},
	"cauliflower": {
		"seeds": Vector2i(23,12),
		"1": Vector2i(22,13),
		"2": Vector2i(23,13),
		"3": Vector2i(24,13),
		"harvest": Vector2i(25,13),
		"dead": Vector2i(26,12)
		},
	"lettuce": {
		"seeds": Vector2i(23,14),
		"1": Vector2i(22,15),
		"2": Vector2i(23,15),
		"3": Vector2i(24,15),
		"harvest": Vector2i(25,15),
		"dead": Vector2i(26,14)
		},
	"corn": {
		"seeds": Vector2i(29,0),
		"1": Vector2i(28,1),
		"2": Vector2i(29,1),
		"3": Vector2i(30,0),
		"4": Vector2i(31,0),
		"harvest": Vector2i(32,0),
		"empty": Vector2i(33,0),
		"dead": Vector2i(34,0)
		},
	"tomato": {
		"seeds": Vector2i(29,2),
		"1": Vector2i(28,3),
		"2": Vector2i(29,3),
		"3": Vector2i(30,2),
		"4": Vector2i(31,2),
		"harvest": Vector2i(32,2),
		"empty": Vector2i(33,2),
		"dead": Vector2i(34,2)
		},
	"red pepper": {
		"seeds": Vector2i(29,4),
		"1": Vector2i(28,5),
		"2": Vector2i(29,5),
		"3": Vector2i(30,4),
		"4": Vector2i(31,4),
		"harvest": Vector2i(32,4),
		"empty": Vector2i(33,4),
		"dead": Vector2i(34,4)
		},
	"yellow pepper": {
		"seeds": Vector2i(29,6),
		"1": Vector2i(28,7),
		"2": Vector2i(29,7),
		"3": Vector2i(30,6),
		"4": Vector2i(31,6),
		"harvest": Vector2i(32,6),
		"empty": Vector2i(33,6),
		"dead": Vector2i(34,6)
		},
	"green pepper": {
		"seeds": Vector2i(29,8),
		"1": Vector2i(28,9),
		"2": Vector2i(29,9),
		"3": Vector2i(30,8),
		"4": Vector2i(31,8),
		"harvest": Vector2i(32,8),
		"empty": Vector2i(33,8),
		"dead": Vector2i(34,8)
		},
	"zucchini": {
		"seeds": Vector2i(29,10),
		"1": Vector2i(28,11),
		"2": Vector2i(29,11),
		"3": Vector2i(30,10),
		"4": Vector2i(31,10),
		"harvest": Vector2i(32,10),
		"empty": Vector2i(33,10),
		"dead": Vector2i(34,10)
		},
	"asparagus": {
		"seeds": Vector2i(29,12),
		"1": Vector2i(28,13),
		"2": Vector2i(29,13),
		"3": Vector2i(30,12),
		"4": Vector2i(31,12),
		"harvest": Vector2i(32,12),
		"dead": Vector2i(33,12)
		},
	"strawberry": {
		"seeds": Vector2i(29,14),
		"1": Vector2i(28,15),
		"2": Vector2i(29,15),
		"3": Vector2i(30,14),
		"4": Vector2i(31,14),
		"harvest": Vector2i(32,14),
		"empty": Vector2i(33,14),
		"dead": Vector2i(34,14)
		},
	"grape": {
		"seeds": Vector2i(37,0),
		"1": Vector2i(38,0),
		"2": Vector2i(39,0),
		"3": Vector2i(40,0),
		"4": Vector2i(41,0),
		"harvest": Vector2i(42,0),
		"empty": Vector2i(43,0),
		"dead": Vector2i(44,0)
		},
	"green bean": {
		"seeds": Vector2i(37,2),
		"1": Vector2i(38,2),
		"2": Vector2i(39,2),
		"3": Vector2i(40,2),
		"4": Vector2i(41,2),
		"harvest": Vector2i(42,2),
		"empty": Vector2i(43,2),
		"dead": Vector2i(44,2)
		},
	"jalapeno": {
		"seeds": Vector2i(37,4),
		"1": Vector2i(38,4),
		"2": Vector2i(39,4),
		"3": Vector2i(40,4),
		"4": Vector2i(41,4),
		"harvest": Vector2i(42,4),
		"empty": Vector2i(43,4),
		"dead": Vector2i(44,4)
		},
	"honeydew melon": {
		"seeds": Vector2i(37,6),
		"1": Vector2i(36,7),
		"2": Vector2i(37,7),
		"3": Vector2i(38,6),
		"4": Vector2i(39,6),
		"5": Vector2i(40,6),
		"harvest": Vector2i(41,6),
		"empty": Vector2i(42,6),
		"dead": Vector2i(43,6)
		},
	"blueberry": {
		"seeds": Vector2i(37,8),
		"1": Vector2i(36,9),
		"2": Vector2i(37,9),
		"3": Vector2i(38,8),
		"4": Vector2i(39,8),
		"5": Vector2i(40,8),
		"harvest": Vector2i(41,8),
		"empty": Vector2i(42,8),
		"dead": Vector2i(43,8)
		},
	"sugar cane": {
		"seeds": Vector2i(37,10),
		"1": Vector2i(36,11),
		"2": Vector2i(37,11),
		"3": Vector2i(38,10),
		"4": Vector2i(39,10),
		"5": Vector2i(40,10),
		"harvest": Vector2i(41,10),
		"dead": Vector2i(42,10)
		},
		
}


var log_atlas_tile_cords = {
	1: Vector2i(13,31),
	2: Vector2i(14,31),
	3: Vector2i(15,31),
	4: Vector2i(13,32),
	5: Vector2i(14,32),
	6: Vector2i(15,32),
	7: Vector2i(13,33),
	8: Vector2i(14,33),
	9: Vector2i(15,33),
	10: Vector2i(13,34),
	11: Vector2i(14,34),
	12: Vector2i(15,34)
}

var large_ore_atlas_cords = {
	"stone1": Vector2i(8,2),
	"stone2": Vector2i(8,4),
	"bronze ore": Vector2i(8,6),
	"gold ore": Vector2i(3,2),
	"iron ore": Vector2i(3,4)
}

var small_ore_atlas_cords = {
	"stone1": {
		1: Vector2i(5,2),
		2: Vector2i(6,2),
		3: Vector2i(7,2),
		4: Vector2i(5,3),
		5: Vector2i(6,3),
		6: Vector2i(7,3),
	},
	"stone2": {
		1: Vector2i(5,4),
		2: Vector2i(6,4),
		3: Vector2i(7,4),
		4: Vector2i(5,5),
		5: Vector2i(6,5),
		6: Vector2i(7,5),
	},
	"gold ore": {
		1: Vector2i(0,2),
		2: Vector2i(1,2),
		3: Vector2i(2,2),
		4: Vector2i(0,3),
		5: Vector2i(1,3),
		6: Vector2i(2,3),
	},
	"iron ore": {
		1: Vector2i(0,4),
		2: Vector2i(1,4),
		3: Vector2i(2,4),
		4: Vector2i(0,5),
		5: Vector2i(1,5),
		6: Vector2i(2,5),
	},
	"bronze ore": {
		1: Vector2i(5,6),
		2: Vector2i(6,6),
		3: Vector2i(7,6),
		4: Vector2i(5,7),
		5: Vector2i(6,7),
		6: Vector2i(7,7),
	},
}

var weed_atlas_cords = {
	"A1": Vector2i(14,2),
	"A2": Vector2i(15,2),
	"A3": Vector2i(14,3),
	"A4": Vector2i(15,3),
	"B1": Vector2i(14,4),
	"B2": Vector2i(15,4),
	"B3": Vector2i(14,5),
	"B4": Vector2i(15,5),
	"C1": Vector2i(14,6),
	"C2": Vector2i(15,6),
	"C3": Vector2i(14,7),
	"C4": Vector2i(15,7),
	"D1": Vector2i(14,8),
	"D2": Vector2i(15,8),
	"D3": Vector2i(14,9),
	"D4": Vector2i(15,9),
}
�\��@tool
extends Node

func _ready():
	randomize()

# the percent chance something happens
func chance(num):
	randomize()

	if randi() % 100 <= num:  return true
	else:                     return false

# Util.choose(["one", "two"])   returns one or two
func choose(choices):
	randomize()

	var rand_index = randi() % choices.size()
	return choices[rand_index]

func tojson(body):
	var test_json_conv = JSON.new()
	test_json_conv.parse(body)
	var jsonParseResult: JSON = test_json_conv.get_data()
	return jsonParseResult.result	
	
func jsonParse(body):
	var stringResult: String = body.get_string_from_utf8()
	var test_json_conv = JSON.new()
	test_json_conv.parse(stringResult)
	var jsonParseResult: JSON = test_json_conv.get_data()
	return jsonParseResult.result

func toMessage(name, data):
	data["n"] = name
	return JSON.stringify(data).to_utf8_buffer()
	
#func string_to_vector2(string := "") -> Vector2:
#	if string:
#		var new_string: String = string
#		new_string.erase(0, 1)
#		new_string.erase(new_string.length() - 1, 1)
#		var array: Array = new_string.split(", ")
#
#		return Vector2(array[0], array[1])
#
#	return Vector2.ZERO

func string_to_vector2(string) -> Vector2:
	if string is String:
		var new_string: String = string
		new_string.left(1)
		new_string.left(-1)
		var array: Array = new_string.split(", ")

		return Vector2(array[0], array[1])

	return string

func isStorageItem(item_name):
	if item_name == "crate" or item_name == "barrel" or item_name == "chest" or \
	item_name == "tool cabinet" or item_name == "furnace" or item_name == "stove #1" or \
	item_name == "stove #2" or item_name == "stove #3" or item_name == "grain mill #1" or \
	item_name == "grain mill #2" or item_name == "grain mill #3" or item_name == "campfire":
		return true
	return false

func isFruitTree(tree_name):
	if tree_name == "cherry" or tree_name == "apple" or tree_name == "plum" or tree_name == "pear":
		return true
	return false

func isNonFruitTree(tree_name):
	if tree_name == "oak" or tree_name == "pine" or tree_name == "birch" or tree_name == "spruce" or tree_name == "evergreen":
		return true
	return false

func return_advanced_tree_phase(current_phase):
	match current_phase:
		"sapling":
			return "1"
		"1":
			return "2"
		"2":
			return "3"
		"3":
			return "4"
		"4":
			return "5"

func return_advanced_fruit_tree_phase(current_phase):
	match current_phase:
		"sapling":
			return "1"
		"1":
			return "2"
		"2":
			return "3"
		"3":
			return "4"
		"4":
			return "empty"
		"empty":
			if get_node("/root/Main").server_data["season"] == "fall":
				return "mature1"
			return "empty"
		"mature1":
			if get_node("/root/Main").server_data["season"] == "fall":
				return "mature2"
			return "empty"
		"mature2":
			if get_node("/root/Main").server_data["season"] == "fall":
				return "harvest"
			return "empty"



func is_border_tile(_loc, _tiles):
	if not _tiles.has(_loc+Vector2i(1,0)):
		return true
	if not _tiles.has(_loc+Vector2i(-1,0)):
		return true
	if not _tiles.has(_loc+Vector2i(0,1)):
		return true
	if not _tiles.has(_loc+Vector2i(0,-1)):
		return true
	return false


func return_chunk_from_location(loc):
	var column
	var row
	var x = float(loc.x)
	var y = float(loc.y)
	if x < 187.5:
		column = 1
	elif x < 250:
		column = 2
	elif x < 312.5:
		column = 3
	elif x < 375:
		column = 4
	elif x < 437.5:
		column = 5
	elif x < 500:
		column = 6
	elif x < 562.5:
		column = 7
	elif x < 625:
		column = 8
	elif x < 687.5:
		column = 9
	elif x < 750:
		column = 10
	elif x < 812.5:
		column = 11
	else:
		column = 12
	if y < 187.5:
		row = "A"
	elif y < 250:
		row = "B"
	elif y < 312.5:
		row = "C"
	elif y < 375:
		row = "D"
	elif y < 437.5:
		row = "E"
	elif y < 500:
		row = "F"
	elif y < 562.5:
		row = "G"
	elif y < 625:
		row = "H"
	elif y < 687.5:
		row = "I"
	elif y < 750:
		row = "J"
	elif y < 812.5:
		row = "K"
	else:
		row = "L"
	return row+str(column)


func return_autotile_id(loc,tiles):
	var array = [0,0,0,0,0,0,0,0]
	if tiles.has(loc+Vector2i(-1,-1)):
		array[0] = 1
	if tiles.has(loc+Vector2i(1,-1)):
		array[1] = 1
	if tiles.has(loc+Vector2i(1,1)):
		array[2] = 1
	if tiles.has(loc+Vector2i(-1,1)):
		array[3] = 1
	if tiles.has(loc+Vector2i(0,-1)):
		array[4] = 1
	if tiles.has(loc+Vector2i(1,0)):
		array[5] = 1
	if tiles.has(loc+Vector2i(0,1)):
		array[6] = 1
	if tiles.has(loc+Vector2i(-1,0)):
		array[7] = 1
	if array == [1,1,1,1,1,1,1,1]:
		return 0 
	elif array == [1,1,0,1,1,1,1,1]: # corners
		return 1
	elif array == [1,1,1,0,1,1,1,1]:
		return 2 
	elif array == [0,1,1,1,1,1,1,1]:
		return 3  
	elif array == [1,0,1,1,1,1,1,1]:
		return 4 
	elif array[2] == 1 and array[3] == 1 and array[5] == 1 and array[6] == 1 and array[7] == 1: # top side
		return 5
	elif array[0] == 1 and array[3] == 1 and array[4] == 1 and array[7] == 1 and array[6] == 1: # right side
		return 6
	elif array[0] == 1 and array[1] == 1 and array[4] == 1 and array[5] == 1 and array[7] == 1: # bottom side
		return 7
	elif array[1] == 1 and array[2] == 1 and array[4] == 1 and array[5] == 1 and array[6] == 1: # left side
		return 8
	elif array[2] == 1 and array[5] == 1 and array[6] == 1: # top left
		return 9
	elif array[3] == 1 and array[6] == 1 and array[7] == 1: # top right
		return 10 
	elif array[0] == 1 and array[4] == 1 and array[7] == 1: # bottom right
		return 11
	elif array[1] == 1 and array[4] == 1 and array[5] == 1: # bottom right
		return 12
	return null #INVALID
��?��xeQF�$��bextends Node


@rpc("call_local", "any_peer", "unreliable")
func set_hoed_tile(loc):
	var chunk = Util.return_chunk_from_location(loc)
	get_parent().world[chunk]["tile"][loc] = "h"
	rpc("change_tile_in_world",{"l":loc, "t":"h"})

@rpc("call_local", "any_peer", "unreliable")
func set_watered_tile(loc): 
	var chunk = Util.return_chunk_from_location(loc)
	get_parent().world[chunk]["tile"][loc] = "w"
	rpc("change_tile_in_world",{"l":loc, "t":"w"})

@rpc("call_local", "any_peer", "unreliable")
func remove_hoed_tile(loc): 
	var chunk = Util.return_chunk_from_location(loc)
	get_parent().world[chunk]["tile"].erase(loc)
	rpc("change_tile_in_world",{"l":loc, "t":"r"})

@rpc 
func change_tile_in_world(data): pass

E ���Pextends Node


@rpc ("call_local", "any_peer", "unreliable")
func forage_object_picked_up(id,loc): 
	var chunk = Util.return_chunk_from_location(loc)
	if get_parent().world[chunk]["forage"].has(id):
		get_parent().world[chunk]["forage"].erase(id)
		rpc("destroy_forage_object", {"id": id, "chunk": chunk})

@rpc
func destroy_forage_object(data): pass
�extends Node


@rpc ("call_local", "any_peer", "unreliable")
func weed_hit(id,loc): 
	var chunk = Util.return_chunk_from_location(loc)
	if get_parent().world[chunk]["tall_grass"].has(id):
		get_parent().world[chunk]["tall_grass"].erase(id)
		rpc("destroy_weed",{"id":id, "chunk": chunk})

@rpc ("call_local", "any_peer", "unreliable")
func front_tall_grass_hit(player_id,id,loc): 
	var chunk = Util.return_chunk_from_location(loc)
	if get_parent().world[chunk]["tall_grass"].has(id):
		get_parent().world[chunk]["tall_grass"][id]["fh"] -= 1
		rpc("update_front_tall_grass",{"id":id, "fh":get_parent().world[chunk]["tall_grass"][id]["fh"], "chunk": chunk, "player_id":player_id})
		if get_parent().world[chunk]["tall_grass"][id]["fh"] <= 0 and get_parent().world[chunk]["tall_grass"][id]["bh"] <= 0:
			get_parent().world[chunk]["tall_grass"].erase(id)
			rpc("erase_tall_grass",{"id":id, "chunk": chunk, "player_id":player_id})

@rpc ("call_local", "any_peer", "unreliable")
func back_tall_grass_hit(player_id,id,loc): 
	var chunk = Util.return_chunk_from_location(loc)
	if get_parent().world[chunk]["tall_grass"].has(id):
		get_parent().world[chunk]["tall_grass"][id]["bh"] -= 1
		rpc("update_back_tall_grass",{"id":id, "bh":get_parent().world[chunk]["tall_grass"][id]["bh"],"chunk": chunk, "player_id":player_id})
		if get_parent().world[chunk]["tall_grass"][id]["fh"] <= 0 and get_parent().world[chunk]["tall_grass"][id]["bh"] <= 0:
			get_parent().world[chunk]["tall_grass"].erase(id)
			rpc("erase_tall_grass",{"id":id, "chunk": chunk, "player_id":player_id})

@rpc
func erase_tall_grass(data): pass
@rpc
func destroy_weed(data): pass
@rpc
func update_back_tall_grass(data): pass
@rpc
func update_front_tall_grass(data): pass
]�𶙢�� GST2   �   �      ����               � �        $  RIFF  WEBPVP8L  /������!"2�H�l�m�l�H�Q/H^��޷������d��g�(9�$E�Z��ߓ���'3���ض�U�j��$�՜ʝI۶c��3� [���5v�ɶ�=�Ԯ�m���mG�����j�m�m�_�XV����r*snZ'eS�����]n�w�Z:G9�>B�m�It��R#�^�6��($Ɓm+q�h��6�5��I��'���F�"ɹ{�p����	"+d������M�q��� .^>и��6��a�q��gD�h:L��A�\D�
�\=k�(���_d2W��dV#w�o�	����I]�q5�*$8Ѡ$G9��lH]��c�LX���ZӞ3֌����r�2�2ؽL��d��l��1�.��u�5�!�]2�E��`+�H&�T�D�ި7P��&I�<�ng5�O!��͙������n�
ؚѠ:��W��J�+�����6��ɒ�HD�S�z�����8�&�kF�j7N�;YK�$R�����]�VٶHm���)�rh+���ɮ�d�Q��
����]	SU�9�B��fQm]��~Z�x.�/��2q���R���,snV{�7c,���p�I�kSg�[cNP=��b���74pf��)w<:Ŋ��7j0���{4�R_��K܅1�����<߁����Vs)�j�c8���L�Um% �*m/�*+ �<����S��ɩ��a��?��F�w��"�`���BrV�����4�1�*��F^���IKJg`��MK������!iVem�9�IN3;#cL��n/�i����q+������trʈkJI-����R��H�O�ܕ����2
���1&���v�ֳ+Q4蝁U
���m�c�����v% J!��+��v%�M�Z��ꚺ���0N��Q2�9e�qä�U��ZL��䜁�u_(���I؛j+0Ɩ�Z��}�s*�]���Kܙ����SG��+�3p�Ei�,n&���>lgC���!qյ�(_e����2ic3iڦ�U��j�q�RsUi����)w��Rt�=c,if:2ɛ�1�6I�����^^UVx*e��1�8%��DzR1�R'u]Q�	�rs��]���"���lW���a7]o�����~P���W��lZ�+��>�j^c�+a��4���jDNὗ�-��8'n�?e��hҴ�iA�QH)J�R�D�̰oX?ؿ�i�#�?����g�к�@�e�=C{���&��ށ�+ڕ��|h\��'Ч_G�F��U^u2T��ӁQ%�e|���p ���������k	V����eq3���8 � �K�w|�Ɗ����oz-V���s ����"�H%* �	z��xl�4��u�"�Hk�L��P���i��������0�H!�g�Ɲ&��|bn�������]4�"}�"���9;K���s��"c. 8�6�&��N3R"p�pI}��*G��3@�`��ok}��9?"@<�����sv� ���Ԣ��Q@,�A��P8��2��B��r��X��3�= n$�^ ������<ܽ�r"�1 �^��i��a �(��~dp-V�rB�eB8��]
�p ZA$\3U�~B�O ��;��-|��
{�V��6���o��D��D0\R��k����8��!�I�-���-<��/<JhN��W�1���H�#2:E(*�H���{��>��&!��$| �~�\#��8�> �H??�	E#��VY���t7���> 6�"�&ZJ��p�C_j���	P:�a�G0 �J��$�M���@�Q��[z��i��~q�1?�E�p�������7i���<*�,b�е���Z����N-
��>/.�g�'R�e��K�)"}��K�U�ƹ�>��#�rw߶ȑqF�l�Ο�ͧ�e�3�[䴻o�L~���EN�N�U9�������w��G����B���t��~�����qk-ί�#��Ξ����κ���Z��u����;{�ȴ<������N�~���hA+�r ���/����~o�9>3.3�s������}^^�_�����8���S@s%��]K�\�)��B�w�Uc۽��X�ǧ�;M<*)�ȝ&����~$#%�q����������Q�4ytz�S]�Y9���ޡ$-5���.���S_��?�O/���]�7�;��L��Zb�����8���Guo�[''�،E%���;����#Ɲ&f��_1�߃fw�!E�BX���v��+�p�DjG��j�4�G�Wr����� 3�7��� ������(����"=�NY!<l��	mr�՚���Jk�mpga�;��\)6�*k�'b�;	�V^ݨ�mN�f�S���ն�a���ϡq�[f|#U����^����jO/���9͑Z��������.ɫ�/���������I�D��R�8�5��+��H4�N����J��l�'�כ�������H����%"��Z�� ����`"��̃��L���>ij~Z,qWXo�}{�y�i�G���sz�Q�?�����������lZdF?�]FXm�-r�m����Ф:�З���:}|x���>e������{�0���v��Gş�������u{�^��}hR���f�"����2�:=��)�X\[���Ů=�Qg��Y&�q�6-,P3�{�vI�}��f��}�~��r�r�k�8�{���υ����O�֌ӹ�/�>�}�t	��|���Úq&���ݟW����ᓟwk�9���c̊l��Ui�̸~��f��i���_�j�S-|��w�R�<Lծd�ٞ,9�8��I�Ү�6 *3�ey�[�Ԗ�k��R���<������
g�R���~��a��
��ʾiI9u����*ۏ�ü�<mԤ���T��Amf�B���ĝq��iS��4��yqm-w�j��̝qc�3�j�˝mqm]P��4���8i�d�u�΄ݿ���X���KG.�?l�<�����!��Z�V�\8��ʡ�@����mK�l���p0/$R�����X�	Z��B�]=Vq �R�bk�U�r�[�� ���d�9-�:g I<2�Oy�k���������H�8����Z�<t��A�i��#�ӧ0"�m�:X�1X���GҖ@n�I�겦�CM��@������G"f���A$�t�oyJ{θxOi�-7�F�n"�eS����=ɞ���A��Aq�V��e����↨�����U3�c�*�*44C��V�:4�ĳ%�xr2V�_)^�a]\dZEZ�C 
�*V#��	NP��\�(�4^sh8T�H��P�_��}�1�V�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://c4gm7dsqhtyls"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 G�!=�'b&~_���hFextends Node

@onready var ItemDrop = load("res://ItemDrop/ItemDrop.tscn")

@rpc ("call_local", "any_peer", "unreliable")
func add_item_drop(item: Array, pos: Vector2):
	var itemDrop = ItemDrop.instantiate()
	itemDrop.item_name = item[0]
	itemDrop.item_quantity = item[1]
#itemDrop.item_health = item[2]
	itemDrop.position = pos + Vector2(randi_range(-6, 6), randi_range(-6, 6))
	add_child(itemDrop,true)

@rpc ("call_local", "any_peer")
func player_picked_up_item(data): 
	for item in self.get_children():
		if item.name == data["id"]:
			item.player_id = data["player_id"]
			item.player_pos = data["player_pos"]
			item.being_picked_up = true
			return


@rpc ("call_local", "any_peer")
func add_item_to_inventory(data): pass
�+j�A�Lextends Node


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

func remove_player_character(peer_id):
	$Players.get_node(str(peer_id)).queue_free()

=���xRSRC                     PackedScene            ��������                                                  ..    resource_local_to_scene    resource_name 	   _bundled    script       Script    res://main.gd ��������   Script    res://NatureObjects.gd ��������   Script    res://Time.gd ��������   Script    res://PlaceableObjects.gd ��������   Script    res://ForageObjects.gd ��������   Script    res://GrassObjects.gd ��������   Script    res://ItemDrops.gd ��������   Script    res://FarmingTiles.gd ��������      local://PackedScene_rbrfp B         PackedScene          	         names "         Main    script    Node    Players    MultiplayerSpawner    _spawnable_scenes    spawn_path    NatureObjects    Time    Timer 
   wait_time    PlaceableObjects    ForageObjects    GrassObjects 
   ItemDrops    FarmingTiles    _on_timer_timeout    timeout    	   variants                 "         res://player_character.tscn                                  @@                                    "         res://ItemDrop/ItemDrop.tscn                node_count             nodes     n   ��������       ����                            ����                     ����                                 ����                           ����                    	   	   ����   
                        ����                           ����                           ����                           ����      	       	             ����      
                           ����                   conn_count             conns                                     node_paths              editable_instances              version             RSRC�extends MultiplayerSynchronizer


#@export var position:Vector2
#@export var animation: String = "idle_down"
#@export var tool_name: String = ""
#@export var current_animation: String
����i`��extends Node

@rpc ("call_local", "any_peer", "unreliable")
func nature_object_hit(peer_id,type,id,loc,tool_name): 
	var chunk = Util.return_chunk_from_location(loc)
	if get_parent().world[chunk][type].has(id):
		get_parent().world[chunk][type][id]["h"] -= Stats.return_tool_damage(tool_name)
		if get_parent().world[chunk][type][id]["h"] <= 0:
			get_parent().world[chunk][type].erase(id)
			rpc("destroy_nature_object",{"player_id":peer_id, "type":type, "id":id, "chunk":chunk,"tool_name": tool_name})
		else:
			rpc("update_nature_health",{"player_id":peer_id, "type":type, "id":id, "chunk":chunk, "health":get_parent().world[chunk][type][id]["h"],"tool_name": tool_name})



@rpc
func destroy_nature_object(data): pass

@rpc
func update_nature_health(data): pass
�extends Node


@export var rotation: float
@export var location: Vector2i
@export var variety: String
@export var id: String

#func _ready():
#	name = str(get_multiplayer_authority())
i��J9J:RSRC                     PackedScene            ��������                                                  . 	   rotation 	   location    variety    resource_local_to_scene    resource_name    properties/0/path    properties/0/spawn    properties/0/sync    properties/1/path    properties/1/spawn    properties/1/sync    properties/2/path    properties/2/spawn    properties/2/sync    script 	   _bundled       Script    res://nature_object.gd ��������   %   local://SceneReplicationConfig_df7s4 4         local://PackedScene_il46j �         SceneReplicationConfig 
                                    	               
                                                            PackedScene          	         names "         nature_object    script    Node    MultiplayerSynchronizer    replication_config    	   variants                                 node_count             nodes        ��������       ����                            ����                   conn_count              conns               node_paths              editable_instances              version             RSRCr��extends Node


@export var position: Vector2
@export var current_footsteps_sound: String = ""
@export var animation: String = "idle_down"
@export var tool_name: String = ""
@export var footstep_stream_paused: bool
@export var holding_item_name: String = ""
K���ȂE2:L�,KFextends Node


@rpc("call_local", "any_peer", "unreliable")
func player_place_object(player_id,type,id,data):
	if type == "placeable":
		if Util.isStorageItem(data["n"]):
			get_parent().server_data["ui_slots"][id] = {"o":false,"t":0}
	get_parent().world[Util.return_chunk_from_location(data["l"])][type][id] = data
	rpc("add_new_object_to_world",player_id,type,id,data)


@rpc("call_local", "any_peer", "unreliable")
func player_remove_object(player_id,type,id,data):
	var chunk = Util.return_chunk_from_location(data["l"])
	get_parent().world[chunk]["placeable"].erase(id)
	rpc("destroy_placeable_object",{"player_id":player_id, "id":id, "chunk":chunk})
	if get_parent().server_data["ui_slots"].has(id):
		get_parent().server_data["ui_slots"].erase(id)


@rpc ("call_local", "any_peer", "unreliable")
func placeable_object_hit(peer_id,id,loc,tool_name): 
	var chunk = Util.return_chunk_from_location(loc)
	var item_name = get_parent().world[chunk]["placeable"][id]["n"]
	if get_parent().world[chunk]["placeable"].has(id):
		if item_name == "foundation" or item_name == "wall" or item_name == "wood door" or item_name == "metal door" or item_name == "armored door":
			get_parent().world[chunk]["placeable"][id]["h"] -= Stats.return_tool_damage(tool_name)
		else:
			if get_parent().server_data["ui_slots"].has(id):
				if get_parent().server_data["ui_slots"][id].keys().size() > 2:
					get_parent().world[chunk]["placeable"][id]["h"] -= 1
				else:
					get_parent().world[chunk]["placeable"][id]["h"] = 0
			else:
				get_parent().world[chunk]["placeable"][id]["h"] = 0
		if get_parent().world[chunk]["placeable"][id]["h"] <= 0:
			get_parent().world[chunk]["placeable"].erase(id)
			rpc("destroy_placeable_object",{"player_id":peer_id, "id":id, "chunk":chunk})
			if get_parent().server_data["ui_slots"].has(id):
				for item in get_parent().server_data["ui_slots"][id].keys():
					if item != "o" and item != "t":
						get_node("../ItemDrops").add_item_drop(get_parent().server_data["ui_slots"][id][item], loc*16)
				get_parent().server_data["ui_slots"].erase(id)
		else:
			rpc("update_placeable_health",{"player_id":peer_id, "id":id, "chunk":chunk, "health":get_parent().world[chunk]["placeable"][id]["h"]})


@rpc("call_local", "any_peer", "unreliable")
func player_interact_with_object(data): 
	var chunk = Util.return_chunk_from_location(data["l"])
	if get_parent().world[chunk]["placeable"].has(data["id"]):
		get_parent().world[chunk]["placeable"][data["id"]]["o"] = not get_parent().world[chunk]["placeable"][data["id"]]["o"]
		rpc("change_object_data",{"n":data["n"], "player_id":data["player_id"], "id":data["id"], "chunk":chunk, "o":get_parent().world[chunk]["placeable"][data["id"]]["o"]})


@rpc 
func change_object_data(data): pass

@rpc
func add_new_object_to_world(player_id,type,id,data): pass

@rpc
func destroy_placeable_object(data): pass

@rpc
func update_placeable_health(data): pass
�AV'� 頶��:extends Node


@export var position:Vector2
@export var animation: String
@export var tool_name: String 
@export var current_animation: String
@export var holding_item_name: String
@export var footstep_stream_paused: bool

func _ready():
	name = str(get_multiplayer_authority())
��F,(��cRSRC                     PackedScene            ��������                                                  . 
   animation    current_animation 
   tool_name    footstep_stream_paused 	   position    current_footsteps_sound    resource_local_to_scene    resource_name    properties/0/path    properties/0/spawn    properties/0/sync    properties/1/path    properties/1/spawn    properties/1/sync    properties/2/path    properties/2/spawn    properties/2/sync    properties/3/path    properties/3/spawn    properties/3/sync    properties/4/path    properties/4/spawn    properties/4/sync    properties/5/path    properties/5/spawn    properties/5/sync    script 	   _bundled       Script    res://player_character.gd ��������   %   local://SceneReplicationConfig_qye4c P         local://PackedScene_1nb4v          SceneReplicationConfig    	               
                                                                                                                                                                                                PackedScene          	         names "         player_character    script    Node    MultiplayerSynchronizer    replication_config    	   variants                                 node_count             nodes        ��������       ����                            ����                   conn_count              conns               node_paths              editable_instances              version             RSRC��extends Node

var minutes_increment = 15

var week_days = ["Mon.","Tue.","Wed.","Thu.","Fri.","Sat.","Sun."]
var seasons = ["spring", "summer", "fall", "winter"]


func _on_timer_timeout():
	get_parent().server_data["time_minutes"] += minutes_increment
	if get_parent().server_data["time_minutes"] == 60:
		get_parent().server_data["time_minutes"] = 0
		get_parent().server_data["time_hours"] += 1
		if get_parent().server_data["time_hours"] == 6:
			advance_crop_day()
		elif get_parent().server_data["time_hours"] == 24:
			advance_day()
		elif get_parent().server_data["time_hours"] == 25:
			get_parent().server_data["time_hours"] = 1
	rpc("set_new_time", get_parent().server_data["time_minutes"], get_parent().server_data["time_hours"])
#		set_date_time()
#		advance_clock_icon()

@rpc 
func set_new_time(minutes,hours): pass

@rpc 
func set_new_day(day_num,day_week): pass

@rpc 
func set_new_season(season): pass

func advance_crop_day(): 
	for chunk in get_parent().world.keys():
		for id in get_parent().world[chunk]["tree"]:
			if Util.isNonFruitTree(get_parent().world[chunk]["tree"][id]["v"]): # if non-fruit tree
				if not str(get_parent().world[chunk]["tree"][id]["p"]) == "5":
					get_parent().world[chunk]["tree"][id]["p"] = Util.return_advanced_tree_phase(get_parent().world[chunk]["tree"][id]["p"])
			else:
				if not get_parent().world[chunk]["tree"][id]["p"] == "harvest" and not get_parent().world[chunk]["tree"][id]["b"] == "snow":
					get_parent().world[chunk]["tree"][id]["p"] = Util.return_advanced_fruit_tree_phase(get_parent().world[chunk]["tree"][id]["p"])
		for id in get_parent().world[chunk]["crop"]: 
			var loc = get_parent().world[chunk]["crop"][id]["l"]
			if not get_parent().world[chunk]["crop"][id]["dww"] == 2: # if crop isn't already dead
				if get_parent().world[chunk]["tile"][loc] == "w": # if crop is watered, advance a day
					get_parent().world[chunk]["crop"][id]["dh"] -= 1 
					get_parent().world[chunk]["crop"][id]["dww"] = 0
				else: 
					get_parent().world[chunk]["crop"][id]["dww"] += 1 # crop not watered
		for tile in get_parent().world[chunk]["tile"]: # if tile is watered, set to not watered
			if get_parent().world[chunk]["tile"][tile] == "w":
				get_parent().world[chunk]["tile"][tile] = "h"
		rpc("refresh_crop_and_tree_chunk", chunk, get_parent().world[chunk]["tree"], get_parent().world[chunk]["crop"], get_parent().world[chunk]["tile"])
#		if Server.world.name == "Overworld": # clear watered tiles if in world
#			Tiles.watered_tiles.clear()

@rpc
func refresh_crop_and_tree_chunk(chunk, tree_dict, crop_dict, tile_dict): pass
	

func advance_day():
	var index = week_days.find(get_parent().server_data["day_week"])
	index += 1
	if index == 7:
		index = 0
	get_parent().server_data["day_week"] = week_days[index] 
	get_parent().server_data["day_number"] += 1
	rpc("set_new_day",get_parent().server_data["day_number"], get_parent().server_data["day_week"])
	if get_parent().server_data["day_number"] == 31:
		advance_season()


func advance_season():
	var index = seasons.find(get_parent().server_data["season"])
	index += 1
	if index == 4:
		index = 0
	var new_szn = seasons[index]
	get_parent().server_data["season"] = new_szn
	get_parent().server_data["day_number"] = 1
	rpc("set_new_season",get_parent().server_data["season"])
	#PlayerData.emit_signal("season_changed")
	

�M|�����V[remap]

path="res://.godot/exported/133200997/export-5715ff5fe974e0aca9746844d399f9cd-example.res"
���t�_��̌]4[remap]

path="res://.godot/exported/133200997/export-cab95416bda32297f5ea672fee8f6504-ItemDrop.scn"
�������E N�[remap]

path="res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn"
3���j�/;�G�nx[remap]

path="res://.godot/exported/133200997/export-12fdf63175bc1965fd4d12be864862d4-nature_object.scn"
e����R[remap]

path="res://.godot/exported/133200997/export-563b40137a906541d6c03fbc25671f96-player_character.scn"
=><svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><g transform="translate(32 32)"><path d="m-16-32c-8.86 0-16 7.13-16 15.99v95.98c0 8.86 7.13 15.99 16 15.99h96c8.86 0 16-7.13 16-15.99v-95.98c0-8.85-7.14-15.99-16-15.99z" fill="#363d52"/><path d="m-16-32c-8.86 0-16 7.13-16 15.99v95.98c0 8.86 7.13 15.99 16 15.99h96c8.86 0 16-7.13 16-15.99v-95.98c0-8.85-7.14-15.99-16-15.99zm0 4h96c6.64 0 12 5.35 12 11.99v95.98c0 6.64-5.35 11.99-12 11.99h-96c-6.64 0-12-5.35-12-11.99v-95.98c0-6.64 5.36-11.99 12-11.99z" fill-opacity=".4"/></g><g stroke-width="9.92746" transform="matrix(.10073078 0 0 .10073078 12.425923 2.256365)"><path d="m0 0s-.325 1.994-.515 1.976l-36.182-3.491c-2.879-.278-5.115-2.574-5.317-5.459l-.994-14.247-27.992-1.997-1.904 12.912c-.424 2.872-2.932 5.037-5.835 5.037h-38.188c-2.902 0-5.41-2.165-5.834-5.037l-1.905-12.912-27.992 1.997-.994 14.247c-.202 2.886-2.438 5.182-5.317 5.46l-36.2 3.49c-.187.018-.324-1.978-.511-1.978l-.049-7.83 30.658-4.944 1.004-14.374c.203-2.91 2.551-5.263 5.463-5.472l38.551-2.75c.146-.01.29-.016.434-.016 2.897 0 5.401 2.166 5.825 5.038l1.959 13.286h28.005l1.959-13.286c.423-2.871 2.93-5.037 5.831-5.037.142 0 .284.005.423.015l38.556 2.75c2.911.209 5.26 2.562 5.463 5.472l1.003 14.374 30.645 4.966z" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 919.24059 771.67186)"/><path d="m0 0v-47.514-6.035-5.492c.108-.001.216-.005.323-.015l36.196-3.49c1.896-.183 3.382-1.709 3.514-3.609l1.116-15.978 31.574-2.253 2.175 14.747c.282 1.912 1.922 3.329 3.856 3.329h38.188c1.933 0 3.573-1.417 3.855-3.329l2.175-14.747 31.575 2.253 1.115 15.978c.133 1.9 1.618 3.425 3.514 3.609l36.182 3.49c.107.01.214.014.322.015v4.711l.015.005v54.325c5.09692 6.4164715 9.92323 13.494208 13.621 19.449-5.651 9.62-12.575 18.217-19.976 26.182-6.864-3.455-13.531-7.369-19.828-11.534-3.151 3.132-6.7 5.694-10.186 8.372-3.425 2.751-7.285 4.768-10.946 7.118 1.09 8.117 1.629 16.108 1.846 24.448-9.446 4.754-19.519 7.906-29.708 10.17-4.068-6.837-7.788-14.241-11.028-21.479-3.842.642-7.702.88-11.567.926v.006c-.027 0-.052-.006-.075-.006-.024 0-.049.006-.073.006v-.006c-3.872-.046-7.729-.284-11.572-.926-3.238 7.238-6.956 14.642-11.03 21.479-10.184-2.264-20.258-5.416-29.703-10.17.216-8.34.755-16.331 1.848-24.448-3.668-2.35-7.523-4.367-10.949-7.118-3.481-2.678-7.036-5.24-10.188-8.372-6.297 4.165-12.962 8.079-19.828 11.534-7.401-7.965-14.321-16.562-19.974-26.182 4.4426579-6.973692 9.2079702-13.9828876 13.621-19.449z" fill="#478cbf" transform="matrix(4.162611 0 0 -4.162611 104.69892 525.90697)"/><path d="m0 0-1.121-16.063c-.135-1.936-1.675-3.477-3.611-3.616l-38.555-2.751c-.094-.007-.188-.01-.281-.01-1.916 0-3.569 1.406-3.852 3.33l-2.211 14.994h-31.459l-2.211-14.994c-.297-2.018-2.101-3.469-4.133-3.32l-38.555 2.751c-1.936.139-3.476 1.68-3.611 3.616l-1.121 16.063-32.547 3.138c.015-3.498.06-7.33.06-8.093 0-34.374 43.605-50.896 97.781-51.086h.066.067c54.176.19 97.766 16.712 97.766 51.086 0 .777.047 4.593.063 8.093z" fill="#478cbf" transform="matrix(4.162611 0 0 -4.162611 784.07144 817.24284)"/><path d="m0 0c0-12.052-9.765-21.815-21.813-21.815-12.042 0-21.81 9.763-21.81 21.815 0 12.044 9.768 21.802 21.81 21.802 12.048 0 21.813-9.758 21.813-21.802" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 389.21484 625.67104)"/><path d="m0 0c0-7.994-6.479-14.473-14.479-14.473-7.996 0-14.479 6.479-14.479 14.473s6.483 14.479 14.479 14.479c8 0 14.479-6.485 14.479-14.479" fill="#414042" transform="matrix(4.162611 0 0 -4.162611 367.36686 631.05679)"/><path d="m0 0c-3.878 0-7.021 2.858-7.021 6.381v20.081c0 3.52 3.143 6.381 7.021 6.381s7.028-2.861 7.028-6.381v-20.081c0-3.523-3.15-6.381-7.028-6.381" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 511.99336 724.73954)"/><path d="m0 0c0-12.052 9.765-21.815 21.815-21.815 12.041 0 21.808 9.763 21.808 21.815 0 12.044-9.767 21.802-21.808 21.802-12.05 0-21.815-9.758-21.815-21.802" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 634.78706 625.67104)"/><path d="m0 0c0-7.994 6.477-14.473 14.471-14.473 8.002 0 14.479 6.479 14.479 14.473s-6.477 14.479-14.479 14.479c-7.994 0-14.471-6.485-14.471-14.479" fill="#414042" transform="matrix(4.162611 0 0 -4.162611 656.64056 631.05679)"/></g></svg>
�!   �Vcyϝ>   res://Global/Functions/maujoe.custom_gradient_texture/icon.jpg�����4�c>   res://Global/Functions/maujoe.custom_gradient_texture/info.jpg��>L��n   res://ItemDrop/ItemDrop.tscnp��}ͪ^   res://icon.svg���n��   res://main.tscn�1�j�0�Z   res://nature_object.tscn�x�]F   res://player_character.tscnECFG      application/config/name         faefolk_server     application/run/main_scene         res://main.tscn    application/config/features$   "         4.0    Forward Plus       application/config/icon         res://icon.svg     autoload/Constants          *res://Util/Constants.gd   autoload/GenerateNewWorld0      (   *res://GenerateWorld/GenerateNewWorld.gd   autoload/Stats$         *res://Global/Data/Stats.gd    autoload/Util         *res://Util/Util.gd f��