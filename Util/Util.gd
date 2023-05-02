@tool
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

func isCookingItem(item_name):
	if item_name == "furnace" or item_name == "stove #1" or item_name == "stove #2" \
	or item_name == "stove #3" or item_name == "campfire" or item_name == "barrel":
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
