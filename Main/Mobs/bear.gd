extends CharacterBody2D

@onready var navigation_agent: NavigationAgent2D = $NavigationAgent2D
@onready var timer: Timer = $Timer

var destroyed: bool = false
var stunned: bool = false

var state = IDLE

var thread := Thread.new()


enum {
	IDLE,
	WALK,
	CHASE,
	ATTACK,
	DEATH,
	RETREAT
}


func _ready():
	position = Vector2(10*16,10*16)
	timer.connect("timeout",Callable(self,"_update_pathfinding_chase"))
	navigation_agent.connect("velocity_computed",Callable(self,"move_deferred"))

func move_deferred(_velocity: Vector2) -> void:
	#print("MOVE " + str(_velocity))
	call_deferred("move", _velocity)
	
	
func move(_velocity: Vector2) -> void:
#	if not visible or tornado_node or stunned or attacking or destroyed or state == IDLE:
#		return
#	if frozen:
#		set_velocity(_velocity*0.75)
#		move_and_slide()
#		velocity = velocity
#		bear_sprite.modulate = Color("00c9ff")
#	elif poisoned:
#		set_velocity(_velocity*0.9)
#		move_and_slide()
#		velocity = velocity
#		bear_sprite.modulate = Color("009000")
#	else:
	set_velocity(_velocity)
	move_and_slide()
#	bear_sprite.modulate = Color("ffffff")

func _update_pathfinding_chase():
	if not thread.is_started() and not destroyed:
		thread.start(Callable(self,"_get_path").bind(Vector2(-10,20)))

func _get_path(pos):
	call_deferred("calculate_path", pos)
	
func calculate_path(pos):
	if not destroyed:
		await get_tree().process_frame
		navigation_agent.call_deferred("set_target_position",pos)
		await get_tree().process_frame
	thread.wait_to_finish()


func _physics_process(delta):
	if not navigation_agent.is_target_reachable():
		print("TARGET NOT REACHABLE")
		return
	elif navigation_agent.is_target_reached():
		print("TARGET REACHED")
		return
	print(position)
		
#	if not visible or destroyed or stunned: 
#		return
#	$LineOfSight.look_at(player.global_position)
#	if knocking_back:
#		velocity = velocity.move_toward(knockback * KNOCKBACK_SPEED * 7, ACCELERATION * delta * 8)
#		set_velocity(velocity)
#		move_and_slide()
#		return
#	if navigation_agent.is_navigation_finished() and state == WALK:
#		state = IDLE
#		velocity = Vector2.ZERO
#		return
#	if (player.state == 5 or player.get_node("Magic").invisibility_active) and chasing:
#		end_chase_state()
#	elif not (player.state == 5 or player.get_node("Magic").invisibility_active) and $DetectPlayer.get_overlapping_areas().size() >= 1 and not chasing and state != RETREAT:
#		start_chase_state()
#	if chasing and (position + Vector2(0,-18)).distance_to(player.position) < 35:
#		state = ATTACK
#		swing()
	var target = navigation_agent.get_next_path_position()
	var move_direction = position.direction_to(target)
	var desired_velocity = move_direction * navigation_agent.max_speed
	var steering = (desired_velocity - velocity) * delta * 4.0
	velocity += steering
	navigation_agent.set_velocity(velocity)
