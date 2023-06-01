extends Node2D

var location

func _on_hurtbox_area_entered(area):
	get_parent().nature_object_hit(area.player_id,"log",name,location,area.tool_name)
