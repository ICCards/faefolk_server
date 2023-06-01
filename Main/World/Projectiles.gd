extends Node


@rpc("call_local", "any_peer", "unreliable")
func single_arrow_shot(data): 
#	match data["i"]:
#		1:
			var arrow = load("res://Main/Projectiles/arrow_projectile.tscn").instantiate()
			arrow.position = data["p"]
			arrow.velocity = data["v"]
			call_deferred("add_child",arrow,true)

@rpc("call_local", "any_peer", "unreliable")
func play_wind_spell(data):
	match data["i"]:
		1:
			var tornado = load("res://Main/Projectiles/wind/tornado_projectile.tscn").instantiate()
			tornado.player_id = data["p_id"]
			tornado.position = data["p"]
			tornado.velocity = data["v"]
			call_deferred("add_child",tornado,true)
		2:
			rpc("play_dash_effect", data)
		3:
			var lingering_tornado = load("res://Main/Projectiles/wind/lingering_tornado.tscn").instantiate()
			lingering_tornado.player_id = data["p_id"]
			lingering_tornado.position = data["p"]
			lingering_tornado.target = data["t"]
			call_deferred("add_child",lingering_tornado,true)
		4:
			rpc("play_whirlwind_effect",data)

@rpc 
func play_dash_effect(data): pass

@rpc
func play_whirlwind_effect(data): pass
