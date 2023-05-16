extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	for x in range(150):
		for y in range(150):
			if Util.chance(2):
				var loc = Vector2(x,y)
				add_tree_stump_node("random",loc)
				remove_nav_tiles(Vector2i(loc)+Vector2i(-1,0), Vector2i(2,2))
	


func remove_nav_tiles(location, dimensions = Vector2i(1,1)):
	location = Vector2i(location.x,location.y)
	for x in range(dimensions.x):
		for y in range(dimensions.y):
			$NavigationTiles.erase_cell(0,location+Vector2i(x,-y))


func add_tree_stump_node(id,loc):
	var treeStump = load("res://Main/Nature/tree_stump.tscn").instantiate()
	treeStump.name = id
	treeStump.position = Vector2(loc)*16
	$NatureObjects.add_child(treeStump,true)
