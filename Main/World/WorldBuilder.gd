extends Node


@rpc("call_local", "any_peer", "unreliable")
func get_chunk_data(peer_id,chunks):
	for chunk in chunks:
		rpc_id(int(str(peer_id)),"receive_chunk_data",chunk,get_parent().world[chunk])
		await get_tree().create_timer(0.5).timeout

@rpc("call_remote")
func receive_chunk_data(chunk_name,data): pass
