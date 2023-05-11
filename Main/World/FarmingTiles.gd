extends Node


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

