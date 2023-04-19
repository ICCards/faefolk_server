extends Node



@rpc("call_local", "any_peer", "unreliable")
func player_place_object(player_id,type,id,data):
	get_parent().world[Util.return_chunk_from_location(data["l"])][type][id] = data
	rpc("add_new_object_to_world",player_id,type,id,data)


@rpc
func add_new_object_to_world(player_id,type,id,data): pass



#@rpc ("call_local", "any_peer", "unreliable")
#func object_hit(peer_id,type,id,loc,tool_name): 
#	var chunk = Util.return_chunk_from_location(loc)
#	if get_parent().world[chunk][type].has(id):
#		get_parent().world[chunk][type][id]["h"] -= Stats.return_tool_damage(tool_name)
#		if get_parent().world[chunk][type][id]["h"] <= 0:
#			get_parent().world[chunk][type].erase(id)
#			rpc("destroy_nature_object",{"player_id":peer_id, "type":type, "id":id, "chunk":chunk})
#		else:
#			rpc("update_nature_health",{"player_id":peer_id, "type":type, "id":id, "chunk":chunk, "health":get_parent().world[chunk][type][id]["h"]})
