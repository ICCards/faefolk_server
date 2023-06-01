extends CharacterBody2D

var speed = 100
@export var sync_velocity: Vector2
var player_id

func _ready():
	sync_velocity = velocity
	$Hitbox.player_id = player_id
	$Hitbox.tool_name = "tornado spell"
#	$Hitbox.knockback_vector = velocity


func _physics_process(delta):
	move_and_collide(velocity * delta * speed)


func _on_timer_timeout():
	destroy()


func destroy():
	$Hitbox/CollisionShape2D.set_deferred("disabled",true)
	await get_tree().create_timer(3.0).timeout
	call_deferred("queue_free")
