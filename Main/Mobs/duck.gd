extends CharacterBody2D


@onready var _timer: Timer = $Timers/Timer
@onready var navigation_agent: NavigationAgent2D = $NavigationAgent2D

var MAX_MOVE_DISTANCE: float = 300.0
var thread := Thread.new()
var health: int
var destroyed: bool = false
var stunned: bool = false
var frozen: bool = false
var poisoned: bool = false
var tornado_node
@export var variety: int
@export var sync_velocity: Vector2

func _ready():
	randomize()
	variety = randi_range(1,3)
	_timer.wait_time = randf_range(4.0,8.0)
	_timer.connect("timeout",Callable(self,"_update_pathfinding"))
	navigation_agent.connect("velocity_computed",Callable(self,"move_deferred"))
	$Timers/DropEggTimer.wait_time = randf_range(60, 180)

func _physics_process(delta):
	if navigation_agent.is_target_reached():
		sync_velocity = Vector2.ZERO
		return
	var target = navigation_agent.get_target_position()
	var move_direction = position.direction_to(target)
	var desired_velocity = move_direction * navigation_agent.max_speed
	var steering = (desired_velocity - velocity) * delta * 4.0
	velocity += steering
	sync_velocity = velocity
	navigation_agent.set_velocity(velocity)

func _update_pathfinding():
	_timer.wait_time = randf_range(4.0,8.0)
	if not thread.is_started() and visible:
		thread.start(Callable(self,"_get_path").bind(Util.get_random_idle_pos(position, MAX_MOVE_DISTANCE)))

func move_deferred(_velocity: Vector2) -> void:
	call_deferred("move", _velocity)

func _get_path(pos):
	call_deferred("calculate_path", pos)
	
func calculate_path(pos):
	if not destroyed:
		await get_tree().process_frame
		navigation_agent.call_deferred("set_target_position",pos)
		await get_tree().process_frame
	thread.wait_to_finish()

func move(_velocity: Vector2) -> void:
	if tornado_node or stunned or destroyed:
		return
	if frozen:
		set_velocity(_velocity*0.75)
		move_and_slide()
	elif poisoned:
		set_velocity(_velocity*0.9)
		move_and_slide()
	else:
		set_velocity(_velocity)
		move_and_slide()


func hit(data):
	if not destroyed:
		var dmg = Stats.return_tool_damage(data["t"])
		print("DMG " + str(dmg))
		health -= dmg
		print("HEALTH " + str(health))
		if health > 0:
			get_parent().rpc("update_mob_hit",{"id":data["id"],"dmg":dmg})
		else:
			destroyed = true
			get_parent().rpc("destroy_mob",data)
			await get_tree().create_timer(1.0).timeout
			get_node("../../ItemDrops").add_item_drop(["raw wing",1], position)
			if Util.chance(50):
				get_node("../../ItemDrops").add_item_drop(["raw egg",1], position) 
			call_deferred("queue_free")



#func destroy(data): 
#	rpc("destroy_mob",data)
	

