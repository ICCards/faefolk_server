extends Node

@onready var ItemDrop = load("res://Main/ItemDrop/ItemDrop.tscn")

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
