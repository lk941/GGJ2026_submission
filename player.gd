extends CharacterBody2D

const SPEED = 150.0
 
@onready var _animated_sprite = $AnimatedSprite2D


func _ready():
	$Camera2D.make_current()
	_animated_sprite.play("right")

		
func _physics_process(delta):
	
	var input = Vector2.ZERO
	input.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	velocity = input.normalized() * 200
	move_and_slide()
	
	var direction_h = Input.get_axis("move_left", "move_right")		# horizontal movement
	var direction_v = Input.get_axis("move_up", "move_down")			# vertical movement
	
	if direction_h:
		velocity.y = 0.0
		velocity.x = direction_h * SPEED
		_animated_sprite.play("right")
		_animated_sprite.flip_h = direction_h < 0
		
		move_and_slide()
		
	elif direction_v:
		velocity.x = 0.0
		velocity.y = direction_v * SPEED
		#if direction_v < 0:
			#_animated_sprite.play("Up")
		#else:
			#_animated_sprite.play("Down")
		
		move_and_slide()
	
	#else:
		#_animated_sprite.stop()
		
		
		
	
