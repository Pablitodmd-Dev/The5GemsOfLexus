extends Area2D

@onready var mensaje = %Panel 

func _on_body_entered(body):
	if body.name == "Player":
		mensaje.show()

func _on_body_exited(body):
	if body.name == "Player":
		mensaje.hide()
