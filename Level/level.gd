extends Node

const OBS = preload("res://Pipes/obstacles.tscn")

func _ready():
	Global.curr = 0
	randomize()
	
func _on_ground_body_entered(body):
	$Audio.play()
	get_tree().change_scene_to_file("res://Scence/end_scene.tscn")
	

func _process(delta):
	$Label.text = "score: " + str(Global.curr)

func _on_obs_timer_timeout():
	randomize()
	var newObs = OBS.instantiate()
	$Obstacles.add_child(newObs)
	var positive = randi()%10
	var negative = -randi()%10
	var listing = []
	listing.append(positive)
	listing.append(negative)
	var xy = listing[randi()%2]
	newObs.position.y = xy*10 + 427
	$ObsTimer.wait_time = randi()%3
