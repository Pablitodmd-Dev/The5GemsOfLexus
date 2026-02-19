extends Area2D

@onready var win_sound = $AudioStreamPlayer2D
@export var current_level_number = 6

func _on_body_entered(body):
	if body.name == "Player":
		if win_sound:
			win_sound.play()

		body.set_physics_process(false)
		
		if "velocity" in body:
			body.velocity = Vector2.ZERO
		
		await get_tree().create_timer(10.0).timeout
		get_tree().change_scene_to_file("res://level_select.tscn")
		GameManager.win_level(current_level_number)
