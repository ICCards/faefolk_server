extends Node


func place_tree_stump_node(id,type,loc):
	var NatureObjects = get_node("/root/Main/NatureObjects")
	var tree = load("res://Main/Nature/tree/tree_object.tscn").instantiate()
	tree.type = type
	tree.location = loc
	tree.name = id
	tree.position = Vector2(loc)*16
	NatureObjects.call_deferred("add_child",tree,true)
	
func place_log_node(id,loc):
	var NatureObjects = get_node("/root/Main/NatureObjects")
	var log = load("res://Main/Nature/tree/log.tscn").instantiate()
	log.location = loc
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
