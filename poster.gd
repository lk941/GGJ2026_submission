extends Node2D


@onready var name_text = $ZodiacName
@onready var logo = $ZodiacLogo
@onready var close_up = $ZodiacCloseUp
@onready var years_text = $Years
@onready var personality_text = $Personality
@onready var friends_text = $Friends
@onready var enemies_text = $Enemies


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
