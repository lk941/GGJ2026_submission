extends Control

@onready var dialogue_box = $Panel


func _on_gui_input(event: InputEvent):
	if event is InputEventMouseButton and event.pressed:
		if not dialogue_box.get_global_rect().has_point(event.position):
			hide_dialogue()
			
			
func hide_dialogue():
	hide()
