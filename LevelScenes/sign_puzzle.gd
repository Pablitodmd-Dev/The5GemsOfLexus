extends Area2D

@onready var ui = $"../CanvasLayer2/PuzzleUI"
@onready var input = $"../CanvasLayer2/PuzzleUI/AnswerInput"
@onready var label = $"../CanvasLayer2/PuzzleUI/Label"
@onready var wall = $"../PuzzleWall"
@onready var collision_shape = $CollisionShape2D

func _on_body_entered(body):
	if body.name == "Player":
		ui.show()
		input.grab_focus()
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

func _on_answer_input_text_submitted(new_text):
	if new_text.to_lower() == "4":
		if wall:
			wall.queue_free()
		collision_shape.set_deferred("disabled", true)
		ui.hide()
	else:
		input.text = ""
		label.text = "Incorrect solution, try again!"
