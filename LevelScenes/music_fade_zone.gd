extends Area2D

func _on_body_entered(body):
	if body.name == "Player":
		var music_player = body.get_node_or_null("MusicNode")
		
		if music_player:
			var tween = create_tween()
			tween.tween_property(music_player, "volume_db", -80.0, 3.0)
			tween.finished.connect(func(): music_player.stop())
