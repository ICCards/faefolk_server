extends Node2D

var speed = 100
@export var target: Vector2
var player_id

func _ready():
	$Hitbox.player_id = player_id
	$Hitbox.tool_name = "lingering tornado"
	$AnimationPlayer.play("play")
	await $AnimationPlayer.animation_finished
	call_deferred("queue_free")

func _physics_process(delta):
	position = position.move_toward(target, delta * speed)
