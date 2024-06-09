extends CharacterBody2D



const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var GRAVITY = 20    

func _physics_process(delta):
	# Add the gravity.
	velocity.y += GRAVITY

	if Input.is_action_just_pressed("Jump"):
		velocity.y = JUMP_VELOCITY
		$AudioStreamPlayer.play()
	move_and_slide()


func _on_visible_on_screen_notifier_2d_screen_exited():
	get_tree().change_scene_to_file("res://Level/level.tscn")
