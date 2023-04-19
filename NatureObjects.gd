extends Node

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
