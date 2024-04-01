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

# override
func _process(delta: float) -> void:
	var input = Input.get_axis("ui_left", "ui_right")
	if input:
		velocity.x = input * SPEED
		_direction = sign(input)
	else:
		velocity.x = 0
		
	move_and_slide()
	_animate_player()


func _animate_player():
	if velocity.x != 0:
		_animated_sprite.play("run")
	else:
		_animated_sprite.play("idle")

	_animated_sprite.scale.x = _direction
