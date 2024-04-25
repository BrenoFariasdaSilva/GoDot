extends CharacterBody2D
class_name PlayerBot

const SPEED: float = 300
const ACCELERATION: float = 800
const FRICTION: float = 900
const JUMP_VELOCITY: float = -900
const JUMP_VELOCITY_MIN: float = JUMP_VELOCITY/3

@onready var _animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

var _gravity = 980*2
var _direction = 1
var _double_jump: bool = false

# override
func _process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += _gravity * delta
		
	if Input.is_action_just_pressed("jump"):
		if is_on_floor() or not _double_jump:
			velocity.y = JUMP_VELOCITY
			if not is_on_floor():
				_double_jump = true	
			else:
				_double_jump = false
	elif Input.is_action_just_released("jump"):
		if velocity.y < JUMP_VELOCITY_MIN:
			velocity.y = JUMP_VELOCITY_MIN
	
	var input: float = Input.get_axis("ui_left", "ui_right")
	if input:
		# velocity.x = input * SPEED
		velocity.x = move_toward(velocity.x, input * SPEED, ACCELERATION * delta)
		_direction = sign(input)
	else:
		# velocity.x = 0
		velocity.x = move_toward(velocity.x, 0, FRICTION * delta)
		
	if velocity.y > 0:
		velocity.y = clamp(velocity.y, 0, 800)
		
	move_and_slide()
	_animate_player()


func _animate_player():
	if is_on_floor():
		if velocity.x != 0:
			_animated_sprite.play("run")
		else:
			_animated_sprite.play("idle")
	else:
		if velocity.y < 0:
			_animated_sprite.play("jump")
		else:
			_animated_sprite.play("fall")
		

	_animated_sprite.scale.x = _direction
