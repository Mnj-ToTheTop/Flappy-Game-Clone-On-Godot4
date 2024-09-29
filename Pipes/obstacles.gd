extends Node2D

const Player = preload("res://Bird/bird.tscn")
const SPEED = 300
func _ready():
	randomize()
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= SPEED*delta


func _on_pipes_2_body_entered(body):
	$AudioStreamPlayer.play()
	get_tree().change_scene_to_file("res://Scence/end_scene.tscn")


func _on_pipes_body_entered(body):
	$AudioStreamPlayer.play()
	get_tree().change_scene_to_file("res://Scence/end_scene.tscn")


func _on_area_2d_body_entered(body):
	$Score.play()
	Global.curr += 1

