extends CharacterBody2D
class_name PlayerShip

@export var speed: float  = 400
var _input: Vector2 = Vector2.ZERO

func _process(delta: float) -> void:
	_input = Vector2.ZERO
	
	if  Input.is_action_pressed("ui_left"):	
		_input.x = -1
	elif Input.is_action_pressed("ui_right"):	
		_input.x = 1
	if  Input.is_action_pressed("ui_up"):	
		_input.y = -1
	elif Input.is_action_pressed("ui_down"):	
		_input.y = 1
		
	rotation = _input.angle()
	velocity = _input * speed
	position += velocity * delta
