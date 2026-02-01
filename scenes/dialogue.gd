extends CanvasLayer

@onready var dialogue_text = $Control/Panel/DialogueText
@onready var choices_container = $Control/Panel/ChoicesContainer
@onready var animal_str: String = ""
@onready var poster = $Control/Poster
@onready var stamp = $Control/Chop
@onready var stamp_img: Texture2D

var typing_speed := 0.03
var current_dialogue := {}

func show_dialogue(dialogue):
	current_dialogue = dialogue
	choices_container.hide()
	clear_choices()

	dialogue_text.text = dialogue["text"]
	dialogue_text.visible_characters = 0
	show()
	$Control.show()

	animate_text()
	
func load_poster(animal):
	animal_str = animal
	poster.show_zodiac_info(animal)


func animate_text():
	while dialogue_text.visible_characters < dialogue_text.text.length():
		dialogue_text.visible_characters += 1
		await get_tree().create_timer(typing_speed).timeout

	show_choices()
	
	
func show_choices():
	if current_dialogue["choices"].is_empty():
		return

	choices_container.show()

	for choice in current_dialogue["choices"]:
		var btn = Button.new()
		btn.text = choice["text"]
		btn.pressed.connect(_on_choice_selected.bind(choice))
		choices_container.add_child(btn)


func clear_choices():
	for child in choices_container.get_children():
		child.queue_free()


func _on_choice_selected(choice):
	if choice["next"] == null:
		hide()
	else:
		var next_dialogue = DialogueData.dialogues[choice["next"]]
		show_dialogue(next_dialogue)


func _on_approve_button_pressed():
	stamp_img = load("res://assets/chop/youdu_chop.png")
	stamp.texture = stamp_img
	stamp.visible = true
	await get_tree().create_timer(1.0).timeout
	var ui = get_tree().get_first_node_in_group("dialogue_ui")
	ui.hide()
	stamp.visible = false


func _on_reject_button_pressed():
	stamp_img = load("res://assets/chop/reject_chop.png")
	stamp.texture = stamp_img
	stamp.visible = true
	await get_tree().create_timer(1.0).timeout
	var ui = get_tree().get_first_node_in_group("dialogue_ui")
	ui.hide()
	stamp.visible = false
