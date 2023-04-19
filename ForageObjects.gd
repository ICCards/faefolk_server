extends Node


@rpc ("call_local", "any_peer", "unreliable")
func forage_object_picked_up(id,loc): 
	var chunk = Util.return_chunk_from_location(loc)
	if get_parent().world[chunk]["forage"].has(id):
		get_parent().world[chunk]["forage"].erase(id)
		rpc("destroy_forage_object", {"id": id, "chunk": chunk})

@rpc
func destroy_forage_object(data): pass
