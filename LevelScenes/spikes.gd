extends Area2D

@onready var death_sound = $"../DeathSound" 

var ya_murio = false

func _on_body_entered(body):
	if body.name == "Player" and not ya_murio:
		ya_murio = true # Bloqueamos futuras entradas
		
		var music = body.get_node_or_null("MusicNode")
		if music:
			music.stop()
		
		if death_sound:
			death_sound.play()
		
		body.set_physics_process(false)
		
		if body.has_node("AnimatedSprite2D"):
			body.get_node("AnimatedSprite2D").stop() 
		
		await get_tree().create_timer(5.0).timeout

		if get_tree():
			get_tree().change_scene_to_file("res://level_select.tscn")
