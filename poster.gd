extends Node2D


@onready var name_text = $ZodiacName
@onready var logo = $ZodiacLogo
@onready var close_up = $ZodiacCloseUp
@onready var years_text = $Years
@onready var personality_text = $Personality
@onready var friends_text = $Friends
@onready var enemies_text = $Enemies

@onready var zoom_poster = $Control/CanvasLayer

@onready var zoom_name_text = $Control/CanvasLayer/ZodiacName
@onready var zoom_logo = $Control/CanvasLayer/ZodiacLogo
@onready var zoom_years_text = $Control/CanvasLayer/Years
@onready var zoom_personality_text = $Control/CanvasLayer/Personality
@onready var zoom_friends_text = $Control/CanvasLayer/Friends
@onready var zoom_enemies_text = $Control/CanvasLayer/Enemies


func show_zodiac_info(animal):
	var animal_logo = load(ZodiacInfo.zodiac_info[animal]["logo"])
	var animal_head = load(ZodiacInfo.zodiac_info[animal]["profile"])
	
	name_text.text = ZodiacInfo.zodiac_info[animal]["name"]
	logo.texture = animal_logo
	close_up.texture = animal_head
	years_text.text = ZodiacInfo.zodiac_info[animal]["years"]
	personality_text.text = ZodiacInfo.zodiac_info[animal]["personality"]
	friends_text.text = ZodiacInfo.zodiac_info[animal]["friends"]
	enemies_text.text = ZodiacInfo.zodiac_info[animal]["enemies"]


func _on_texture_button_pressed():
	var animal = name_text.text.to_lower()
	var animal_logo = load(ZodiacInfo.zodiac_info[animal]["logo"])
		
	zoom_name_text.text = ZodiacInfo.zodiac_info[animal]["name"]
	zoom_logo.texture = animal_logo
	zoom_years_text.text = ZodiacInfo.zodiac_info[animal]["years"]
	zoom_personality_text.text = ZodiacInfo.zodiac_info[animal]["personality"]
	zoom_friends_text.text = ZodiacInfo.zodiac_info[animal]["friends"]
	zoom_enemies_text.text = ZodiacInfo.zodiac_info[animal]["enemies"]
	zoom_poster.visible = true


func _on_zoom_poster_button_pressed():
	zoom_poster.visible = false
