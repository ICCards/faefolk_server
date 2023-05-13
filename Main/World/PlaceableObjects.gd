extends Node

@rpc("call_local", "any_peer", "unreliable")
func player_move_object(player_id,id,prev_object_data,data): 
	get_parent().world[Util.return_chunk_from_location(prev_object_data["l"])]["placeable"].erase(id)
	get_parent().world[Util.return_chunk_from_location(data["l"])]["placeable"][id] = data
	rpc("place_object_in_new_location",player_id,id,prev_object_data,data)


@rpc("call_local", "any_peer", "unreliable")
func player_place_object(player_id,type,id,data):
	if type == "placeable":
		if Util.isStorageItem(data["n"]):
			if Util.isCookingItem(data["n"]):
				get_parent().server_data["ui_slots"][id] = {"tr":null,"lo":null}
			else:
				get_parent().server_data["ui_slots"][id] = {}
	get_parent().world[Util.return_chunk_from_location(data["l"])][type][id] = data
	rpc("add_new_object_to_world",player_id,type,id,data)


@rpc("call_local", "any_peer", "unreliable")
func player_remove_object(player_id,type,id,loc):
	var chunk = Util.return_chunk_from_location(loc)
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
					if item != "lo" and item != "tr":
						get_node("../ItemDrops").add_item_drop(get_parent().server_data["ui_slots"][id][item], loc*16)
				get_parent().server_data["ui_slots"].erase(id)
		else:
			rpc("update_placeable_health",{"player_id":peer_id, "id":id, "chunk":chunk, "health":get_parent().world[chunk]["placeable"][id]["h"]})


@rpc("call_local", "any_peer", "unreliable")
func player_interact_with_object(data): 
	var chunk = Util.return_chunk_from_location(data["l"])
	if get_parent().world[chunk]["placeable"].has(data["id"]):
		get_parent().world[chunk]["placeable"][data["id"]]["o"] = not get_parent().world[chunk]["placeable"][data["id"]]["o"]
		rpc("change_object_data",{"id":data["id"], "chunk":chunk, "o":get_parent().world[chunk]["placeable"][data["id"]]["o"]})


@rpc("call_local", "any_peer", "unreliable")
func send_updated_ui_slots(id,data):
	if get_parent().server_data["ui_slots"].has(id):
		get_parent().server_data["ui_slots"][id] = data
		rpc("update_ui_slots",id,data)

@rpc("call_local", "any_peer", "unreliable")
func player_repair_object(data): 
	var chunk = Util.return_chunk_from_location(data["l"])
	if get_parent().world[chunk]["placeable"].has(data["id"]):
		var item_name = get_parent().world[chunk]["placeable"][data["id"]]["n"]
		if item_name == "foundation" or item_name == "wall": 
			var current_tier = get_parent().world[chunk]["placeable"][data["id"]]["t"] 
			get_parent().world[chunk]["placeable"][data["id"]]["h"] = Stats.return_max_building_health(current_tier)
		else:
			get_parent().world[chunk]["placeable"][data["id"]]["h"] = Stats.return_max_door_health(item_name)
		rpc("repair",data)

@rpc("call_local", "any_peer", "unreliable")
func player_upgrade_object(data): 
	var chunk = Util.return_chunk_from_location(data["l"])
	if get_parent().world[chunk]["placeable"].has(data["id"]):
		get_parent().world[chunk]["placeable"][data["id"]]["t"] = data["t"]
		get_parent().world[chunk]["placeable"][data["id"]]["h"] = Stats.return_max_building_health(data["t"])
		rpc("upgrade",data)

@rpc
func upgrade(data): pass

@rpc
func repair(data): pass

@rpc
func place_object_in_new_location(player_id,id,prev_object_data,data): pass

@rpc
func update_ui_slots(id,dict): pass

@rpc 
func change_object_data(data): pass

@rpc
func add_new_object_to_world(player_id,type,id,data): pass

@rpc
func destroy_placeable_object(data): pass

@rpc
func update_placeable_health(data): pass
