extends Area2D

@export var current_level_number = 4

func _on_body_entered(body):
	if body.name == "Player":
		GameManager.win_level(current_level_number)
