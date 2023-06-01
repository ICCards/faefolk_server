extends Node2D


var location

func _on_area_2d_area_entered(area):
	get_parent().rpc_id(1,"front_tall_grass_hit",area.player_id,name,location)


func _on_back_area_2d_area_entered(area):
	get_parent().rpc_id(1,"back_tall_grass_hit",area.player_id,name,location)
