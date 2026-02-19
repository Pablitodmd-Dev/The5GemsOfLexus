extends Area2D

@onready var collect_sound = $AudioStreamPlayer2D 

func _on_body_entered(body):
	if body.name == "Player":
		if collect_sound:
			collect_sound.play()
		visible = false
		monitoring = false 
		var wall = get_parent().get_node_or_null("Wall4")
		if wall:
			wall.queue_free()
		await collect_sound.finished
		queue_free()
