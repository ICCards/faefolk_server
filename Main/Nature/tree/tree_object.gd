extends Node2D

var location
var type 

func _on_hurtbox_area_entered(area):
	get_parent().nature_object_hit(area.player_id,type,name,location,area.tool_name)

