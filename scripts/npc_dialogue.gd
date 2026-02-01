extends Node


var dialogues = {
	"dragon": {
		"text": "Hello... can I help you?",
		"choices": [
			{ "text": "[Question] What year were you born in?", "next": "dragon_year" },
			{ "text": "[Question] Who's your bestie?", "next": "dragon_friend" }
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
	"dragon_friend": {
	"text": "I'm friends with everyone! Though Rooster gets me a lil more",
	"choices": []
	},
	"dragon_year": {
	"text": "1988. As good as it gets.",
	"choices": []
	}
}
