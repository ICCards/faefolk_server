extends Node


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
