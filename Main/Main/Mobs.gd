extends Node2D


@rpc ("call_local", "any_peer", "unreliable")
func mob_hit(data):
	get_node(str(data["id"])).hit(data)

@rpc
func destroy_mob(data): pass

@rpc
func update_mob_hit(data): pass
