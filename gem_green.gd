extends Area2D

@export var current_level_number = 1

func _on_body_entered(body):
	if body.name == "Player":
		GameManager.ganar_nivel(current_level_number)
