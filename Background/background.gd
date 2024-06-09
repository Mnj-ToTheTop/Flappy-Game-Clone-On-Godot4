extends Area2D


func _on_timer_timeout():
	if $AnimatedSprite2D.animation == "morning":
		$AnimatedSprite2D.animation = "night"
	else:
		$AnimatedSprite2D.animation = "morning"
	
