extends CharacterBody2D
class_name PlayerShip

@export var speed: float = 400

# On Ready são variáveis que só são definidas na função Ready().
@onready var _player_ship_size: Vector2 = ($PlayerShip as Sprite2D).get_rect().size

var _input: Vector2 = Vector2.ZERO
var _direction: Vector2 = Vector2.ZERO
var _screen_size: Vector2

# A função ready seria o init, que é chamado apenas uma vez e depois o process é chamado a cada frame.
func _ready() -> void:
	_screen_size = get_viewport_rect().size

func _process(_delta: float) -> void:
	# _move_4_directions(_delta)
	# _move_4_directions_nonstop(_delta)
	_move_in_any_direction(_delta)
	
func _move_4_directions_nonstop(_delta: float) -> void:	
	if Input.is_action_pressed("ui_left"):
		# _input = Vector2(-1, 0)
		_input = Vector2.LEFT
	elif Input.is_action_pressed("ui_right"):
		_input = Vector2.RIGHT
	elif Input.is_action_pressed("ui_up"):
		_input = Vector2.UP
	elif Input.is_action_pressed("ui_down"):
		_input = Vector2.DOWN
		
	_move_and_rotate()
	
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
		
	_move_and_rotate()
	
func _move_in_any_direction(_delta: float) -> void:
	_input = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	_move_and_rotate()

func _move_and_rotate() -> void:
	if _input:
		_direction = _input # Atualiza a direção da nave conforme o input.

	rotation = _direction.angle()
	velocity = _input * speed
	# position += velocity * delta -> Não passa pelo motor de física
	move_and_slide() # Passa pelo motor de física.
	
	# _clamp_screen()
	_wrap_screen()
	
func _clamp_screen() -> void:
	# Se chegar em alguma borda, ele fica parado naquela posição.
	position.x = clamp(position.x, _player_ship_size.x/2, _screen_size.x - _player_ship_size.x/2)
	position.y = clamp(position.y, _player_ship_size.y/2, _screen_size.y - _player_ship_size.y/2)

func _wrap_screen() -> void:
	# Se chegar em alguma borda, ele atravessa para o outro lado.
	
	# Atravessar ele por inteiro para o outro lado da tela.
	# position.x = wrap(position.x, _player_ship_size.x/2, _screen_size.x - _player_ship_size.x/2)
	# position.y = wrap(position.y, _player_ship_size.y/2, _screen_size.y - _player_ship_size.y/2)
	
	# Atravessa apenas metade para o outro lado da tela.
	position.x = wrap(position.x, 0, _screen_size.x)
	position.y = wrap(position.y, 0, _screen_size.y)
