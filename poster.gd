extends Node2D


@onready var name_text = $ZodiacName
@onready var logo = $ZodiacLogo
@onready var years_text = $Years
@onready var personality_text = $Personality
@onready var friends_text = $Friends
@onready var enemies_text = $Enemies


func show_zodiac_info(animal):
	var animal_logo = load(ZodiacInfo.zodiac_info[animal]["logo"])
	
	name_text.text = ZodiacInfo.zodiac_info[animal]["name"]
	logo.texture = animal_logo
	years_text.text = ZodiacInfo.zodiac_info[animal]["years"]
	personality_text.text = ZodiacInfo.zodiac_info[animal]["personality"]
	friends_text.text = ZodiacInfo.zodiac_info[animal]["friends"]
	enemies_text.text = ZodiacInfo.zodiac_info[animal]["enemies"]
