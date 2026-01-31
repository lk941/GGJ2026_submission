extends CharacterBody2D

@export var dialogue_id := "test"

@onready var _animated_sprite = $AnimatedSprite2D


func _ready():
	_animated_sprite.play()

#
#func _on_mouse_entered():
	#dialogue_id = get_parent().name
	#
	#print(dialogue_id)


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int):
	if event is InputEventMouseButton and event.pressed:
		dialogue_id = get_parent().name
		print("Character clicked!")
		var ui = get_tree().get_first_node_in_group("dialogue_ui")
		ui.show_dialogue(DialogueData.dialogues[dialogue_id])
		ui.load_poster(dialogue_id)
		
