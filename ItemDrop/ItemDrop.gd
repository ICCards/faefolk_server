extends CharacterBody2D

const MAX_SPEED = 285
const ACCELERATION = 300

@export var item_name: String
@export var item_quantity: int
@export var item_health: int

var being_picked_up: bool = false
var being_added_to_inventory: bool = false
var player_id
var player_pos
var adjustedPosition
var randomInt

func _ready():
	randomize()
	randomInt = randi_range(1,6)
	$AnimationPlayer.play(str(randomInt))
	adjustPosition(randomInt)
	await get_tree().create_timer(0.8).timeout
	$CollisionShape2D.set_deferred("disabled", false)
	

func _physics_process(_delta):
	if not being_picked_up:
		velocity = Vector2.ZERO
	else:
		#print(str(get_node("/root/Main/Players/"+player_id).position)) NOT WORKING
		adjustPosition(randomInt)
		var direction = adjustedPosition.direction_to(player_pos)
		velocity = velocity.move_toward(direction * MAX_SPEED, ACCELERATION)
		var distance = adjustedPosition.distance_to(player_pos)
		if distance < 4: 
			if being_added_to_inventory:
				return
			else:
				being_added_to_inventory = true
				get_parent().rpc_id(player_id.to_int(),"add_item_to_inventory",name,{"n":item_name,"q":item_quantity,"h":item_health})
				queue_free()
	velocity.normalized()
	set_velocity(velocity)
	set_up_direction(Vector2.UP)
	move_and_slide()


func adjustPosition(animation):
	if animation == 1:
		adjustedPosition = position + Vector2(24,0)
	elif animation == 2:
		adjustedPosition = position + Vector2(-24,0)
	elif animation == 3:
		adjustedPosition = position + Vector2(12,-10)
	elif animation == 4:
		adjustedPosition = position + Vector2(-12,-10)
	elif animation == 5:
		adjustedPosition = position + Vector2(4, -8)
	elif animation == 6:
		adjustedPosition = position + Vector2(-8, 4)

