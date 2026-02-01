extends Control


func _on_gui_input(event: InputEvent):
	if event is InputEventMouseButton and event.pressed:
		hide_dialogue()
			
			
func hide_dialogue():
	hide()
	var ui = get_tree().get_first_node_in_group("dialogue_ui")
	ui.hide()
