extends Node2D

var location


func _on_area_2d_area_entered(area):
	get_parent().weed_hit(name,location)
