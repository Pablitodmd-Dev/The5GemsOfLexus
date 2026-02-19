extends Control

func _ready():
	$CenterContainer/PanelContainer/MarginContainer/VBoxContainer/Button.grab_focus()

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://MainMenu.tscn")

func _on_button_pressed():
	get_tree().change_scene_to_file("res://MainMenu.tscn")
