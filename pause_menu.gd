extends CanvasLayer

func _ready():
	hide()

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		toggle_pause()

func toggle_pause():
	var is_paused = !get_tree().paused
	get_tree().paused = is_paused
	visible = is_paused
	
func _on_resume_button_pressed():
	toggle_pause()

func _on_quit_button_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://level_select.tscn")
