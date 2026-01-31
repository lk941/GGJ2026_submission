extends Node


var dialogues = {
	"dragon": {
		"text": "Hello... jade pendants for sale...",
		"choices": [
			{ "text": "No thanks!", "next": null },
			{ "text": "I'm lost", "next": "dragon_help" }
		]
	},
	"snake": {
		"text": "This place does that to people.",
		"choices": []
	},
	"sheep": {
		"text": "Hello, have you eaten?",
		"choices":  [
			{ "text": "Yes!", "next": "sheep_response" },
			{ "text": "Yup! I need help with an investigation, do you have info on...", "next": "sheep_help" }
		]
	},
	"sheep_response": {
	"text": "That's good! Talk to me whenever you need anything!",
	"choices": []
	},
	"sheep_help": {
	"text": "Yeah... snake and dragon are my friends, but they seem to have issues right now.",
	"choices": []
	},
	"dragon_help": {
	"text": "I can help you.",
	"choices": []
	}
}
