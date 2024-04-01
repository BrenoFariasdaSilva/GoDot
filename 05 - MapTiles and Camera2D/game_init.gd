extends Node2D
class_name GameInit

@onready var _camera: CameraUtils = $Ship2/Camera2D

func _ready() -> void:
	_camera.init_camera_limits(_get_map_bounds($TileMap))
	
func _get_map_bounds(tileMap: TileMap) -> Rect2:
	# Obtem o retângulo do mapa em células.
	var map_rect: Rect2 = tileMap.get_used_rect()
	var cell_size: float = tileMap.cell_quadrant_size * tileMap.scale.x
	
	var pos := map_rect.position * cell_size
	var size := map_rect.size * cell_size
	
	return Rect2(pos, size)
