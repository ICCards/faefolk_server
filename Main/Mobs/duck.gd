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
var running_state: bool = false
@export var sync_velocity: Vector2

func _ready():
	randomize()
	_timer.wait_time = randf_range(5.0,10.0)
	_timer.connect("timeout",Callable(self,"_update_pathfinding"))
	$Timers/DropEggTimer.wait_time = randf_range(60, 180)

func _physics_process(delta):
	if navigation_agent.is_target_reached() or not navigation_agent.is_target_reachable() or destroyed:
		sync_velocity = Vector2.ZERO
		return
	var current_pos: Vector2 = global_position
	var next_path_pos: Vector2 = navigation_agent.get_next_path_position()
	
	var new_velocity: Vector2 = next_path_pos - current_pos
	new_velocity = new_velocity.normalized()
	new_velocity = new_velocity * navigation_agent.max_speed
	velocity = new_velocity
	sync_velocity = new_velocity
	move_and_slide()


func _update_pathfinding():
	if not running_state:
		_timer.wait_time = randf_range(5.0,10.0)
	else:
		_timer.wait_time = randf_range(1.5,3.0)
	if not thread.is_started():
		thread.start(Callable(self,"_get_path").bind(Util.get_random_idle_pos(position, MAX_MOVE_DISTANCE)))


func _get_path(pos):
	call_deferred("calculate_path", pos)
	
func calculate_path(pos):
	if not destroyed:
		await get_tree().process_frame
		navigation_agent.call_deferred("set_target_position",pos)
		await get_tree().process_frame
	thread.wait_to_finish()

#func move(_velocity: Vector2) -> void:
#	if tornado_node or stunned or destroyed:
#		return
#	if frozen:
#		set_velocity(_velocity*0.75)
#		move_and_slide()
#	elif poisoned:
#		set_velocity(_velocity*0.9)
#		move_and_slide()
#	else:
#		set_velocity(_velocity)
#		move_and_slide()


func hit(data):
	if not destroyed:
		var dmg = Stats.return_tool_damage(data["t"])
		health -= dmg
		if health > 0:
			start_running_state()
			get_parent().rpc("update_mob_hit",{"id":data["id"],"dmg":dmg})
		else:
			destroyed = true
			get_parent().rpc("destroy_mob",data)
			await get_tree().create_timer(1.0).timeout
			get_node("../../ItemDrops").add_item_drop(["raw wing",1], position)
			if Util.chance(50):
				get_node("../../ItemDrops").add_item_drop(["raw egg",1], position) 
			call_deferred("queue_free")


func start_running_state():
	running_state = true
	$Timers/RunStateTimer.start(30)
	navigation_agent.max_speed = 100
	if not thread.is_started():
		thread.start(Callable(self,"_get_path").bind(Util.get_random_idle_pos(position, MAX_MOVE_DISTANCE)))


func _on_run_state_timer_timeout():
	running_state = false

func _on_drop_egg_timer_timeout():
	if destroyed or velocity == Vector2.ZERO:
		return
	drop_egg()

func start_eating_state(): pass

func drop_egg(): pass


func _on_hurtbox_area_entered(area):
	hit({"t":area.tool_name,"id":name})
