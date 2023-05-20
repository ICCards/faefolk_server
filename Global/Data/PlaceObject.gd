extends Node


func place_tree_stump_node(id,loc):
	var NatureObjects = get_node("/root/Main/NatureObjects")
	var treeStump = load("res://Main/Nature/tree_stump.tscn").instantiate()
	treeStump.name = id
	treeStump.position = Vector2(loc)*16
	NatureObjects.call_deferred("add_child",treeStump,true)
	
func place_log_node(id,loc):
	var NatureObjects = get_node("/root/Main/NatureObjects")
	var log = load("res://Main/Nature/log.tscn").instantiate()
	log.name = id
	log.position = Vector2(loc)*16 + Vector2(8,8)
	NatureObjects.call_deferred("add_child",log,true)
	
func place_small_ore_node(id,loc):
	var NatureObjects = get_node("/root/Main/NatureObjects")
	var ore = load("res://Main/Nature/small_ore.tscn").instantiate()
	ore.name = id
	ore.position = Vector2(loc)*16 + Vector2(8,8)
	NatureObjects.call_deferred("add_child",ore,true)
	
func place_large_ore_node(id,loc):
	var NatureObjects = get_node("/root/Main/NatureObjects")
	var large_ore = load("res://Main/Nature/large_ore.tscn").instantiate()
	large_ore.name = id
	large_ore.position = Vector2(loc)*16
	NatureObjects.call_deferred("add_child",large_ore,true)

func place_forage_node(id,loc):
	var NatureObjects = get_node("/root/Main/NatureObjects")
	var forage = load("res://Main/Nature/forage.tscn").instantiate()
	forage.name = id
	forage.position = Vector2(loc)*16 + Vector2(8,8)
	NatureObjects.call_deferred("add_child",forage,true)
