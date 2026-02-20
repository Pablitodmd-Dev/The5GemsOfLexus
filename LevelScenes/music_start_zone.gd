extends Area2D

@onready var trigger_sound = $TriggerSound

var has_played: bool = false

func _on_body_entered(body):
	if body.name == "Player" and not has_played:
		if trigger_sound:
			trigger_sound.play()
			has_played = true 
			print("Sound triggered for the first and only time!")
