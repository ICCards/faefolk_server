extends CharacterBody2D


var speed = 350
@export var sync_velocity: Vector2

@export var destroyed: bool

func _ready():
	destroyed = false
	sync_velocity = velocity
	rotation_degrees = rad_to_deg(Vector2(1,0).angle_to(velocity))
	$Hitbox.tool_name = "arrow"
#	$Hitbox.knockback_vector = velocity

func _physics_process(delta):
	if destroyed == true:
		return
	move_and_collide(velocity * delta * speed)
	

func destroy():
	$Hitbox/CollisionShape2D.set_deferred("disabled",true)
	destroyed = true
	await get_tree().create_timer(1.0).timeout
	call_deferred("queue_free")


func _on_hitbox_area_entered(area):
	destroy()
