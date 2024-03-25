extends CharacterBody2D
class_name PlayerBot

const SPEED = 300
const ACCELERATION  = 800
const FRICTION = 900
const JUMP_SPEED = -900
const JUMP_MIN_SPEED = JUMP_SPEED/3

var _gravity = 980*2
var _direction = 0

# override
func _process(_delta: float) -> void:
	var _input = Input.get_axis("ui_left", "ui_right")
	
	if _input:
		velocity.x = _input * SPEED
		_direction = sign(_input)
	else:
		velocity.x = 0
		
	move_and_slide()
	_animate_player()
	
func _animate_player():
	if velocity.x != 0:
		$AnimatedSprite2D.play("run")	
	else:
		$AnimatedSprite2D.play("idle")	
		
	$AnimatedSprite2D.scale.x = _direction
