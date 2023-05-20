extends Node


@export var position:Vector2
@export var animation: String
@export var tool_name: String 
@export var current_animation: String
@export var holding_item_name: String
@export var footstep_stream_paused: bool
@export var play_animation_backwards: bool
@export var walk_legs: bool

func _ready():
	name = str(get_multiplayer_authority())
