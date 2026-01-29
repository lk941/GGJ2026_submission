extends Control


func _ready():
	var ui = get_tree().get_first_node_in_group("dialogue_ui")
	ui.hide()
	
