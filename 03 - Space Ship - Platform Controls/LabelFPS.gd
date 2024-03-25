extends Label
class_name LabelFPS

func _process(delta: float) -> void:
	self.text = str(Engine.get_frames_per_second())
