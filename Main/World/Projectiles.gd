extends Node


@rpc("call_local", "any_peer", "unreliable")
func single_arrow_shot(data): 
	var arrow = load("res://Main/Projectiles/arrow_projectile.tscn").instantiate()
	arrow.position = data["p"]
	arrow.velocity = data["v"]
	call_deferred("add_child",arrow,true)
