extends Node


var dialogues = {
	"dragon": {
		"text": "Hello... jade pendants for sale...",
		"choices": [
			{ "text": "No thanks!", "next": null },
			{ "text": "Why do you have a mask on?", "next": "snake" }
		]
	},
	"snake": {
		"text": "This place does that to people.",
		"choices": []
	},
	"dragon_help": {
	"text": "I can help you.",
	"choices": []
	}
}
