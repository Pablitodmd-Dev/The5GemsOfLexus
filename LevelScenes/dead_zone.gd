extends Area2D

@onready var death_sound = $"../DeathSound"

func _on_body_entered(body):
	if body.name == "Player":
		var music = body.get_node("MusicNode")
		if music:
			music.stop()
		
		if death_sound:
			death_sound.play()
		
		body.set_physics_process(false)
		body.hide()
		
		await get_tree().create_timer(5.0).timeout
		
		get_tree().change_scene_to_file("res://level_select.tscn")
