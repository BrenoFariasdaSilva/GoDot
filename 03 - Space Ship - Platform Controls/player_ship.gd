extends CharacterBody2D
class_name PlayerShip

const SPEED: float = 400
const ROTATION_SPEED: float = 5
@onready var _size: Vector2 = $Sprite2D.get_rect().size

var _input: Vector2 = Vector2.ZERO
var _direction: Vector2 = Vector2.ZERO
var _screen_size: Vector2

func _ready() -> void:
	_screen_size = get_viewport_rect().size


func _process(_delta: float) -> void:
	#_move_4_directions(_delta)
	#_move_4_directions_nonstop(_delta)
	#_move_in_any_direction(_delta)
	_move_and_turn(_delta)
	
func _move_and_turn(_delta: float) -> void:
	if Input.is_action_pressed("ui_left"):
		rotation -= ROTATION_SPEED * _delta
	elif Input.is_action_pressed("ui_right"):
		rotation += ROTATION_SPEED * _delta
		
	if Input.is_action_pressed("ui_up"):
		# _input += Vector2.from_angle(rotation) * SPEED * 2 * _delta
		_input += Vector2(cos(rotation), sin(rotation)) * SPEED * 2 * _delta
	elif Input.is_action_pressed("ui_down"):
		#_input = _input.move_toward(Vector2.ZERO, SPEED * _delta)
		_input = _input * 0.95
		
	velocity = _input.limit_length(SPEED)
	move_and_slide()
	_wrap_screen()
	


func _move_in_any_direction(_delta: float) -> void:
	_input = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")

	_move_and_rotate(_delta)


func _move_4_directions_nonstop(_delta: float) -> void:
	if Input.is_action_pressed("ui_left"):
		_input = Vector2.LEFT
	elif Input.is_action_pressed("ui_right"):
		_input = Vector2.RIGHT
	elif Input.is_action_pressed("ui_up"):
		_input = Vector2.UP
	elif Input.is_action_pressed("ui_down"):
		_input = Vector2.DOWN

	_move_and_rotate(_delta)	


func _move_4_directions(_delta: float) -> void:
	_input = Vector2.ZERO
	
	if Input.is_action_pressed("ui_left"):
		_input.x = -1
	elif Input.is_action_pressed("ui_right"):
		_input.x = 1
	elif Input.is_action_pressed("ui_up"):
		_input.y = -1
	elif Input.is_action_pressed("ui_down"):
		_input.y = 1

	_move_and_rotate(_delta)
	
	
func _move_and_rotate(delta: float) -> void:
	#if _input:
	#	_direction = _input
		
	_direction = _direction.slerp(_input, 20.00 * delta)
	rotation = _direction.angle()
	
	velocity = _input * SPEED
	move_and_slide()
	_wrap_screen()	


func _clamp_screen() -> void:
	position.x = clamp(position.x, _size.x/2, _screen_size.x - _size.x/2)
	position.y = clamp(position.y, _size.y/2, _screen_size.y - _size.y/2)

func _wrap_screen() -> void:
	position.x = wrap(position.x, 0, _screen_size.x)
	position.y = wrap(position.y, 0, _screen_size.y)
