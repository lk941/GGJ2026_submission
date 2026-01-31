extends CharacterBody2D

@export var dialogue_id := "dragon"

@onready var _animated_sprite = $AnimatedSprite2D


func _ready():
	_animated_sprite.play()


func _on_mouse_entered():
	
	print("hello")


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int):
	if event is InputEventMouseButton and event.pressed:
		print("Character clicked!")
		var ui = get_tree().get_first_node_in_group("dialogue_ui")
		ui.show_dialogue(DialogueData.dialogues[dialogue_id])
