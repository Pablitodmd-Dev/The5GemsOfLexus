extends Node

var unlocked_levels = 1

func win_level(number):
	if number == unlocked_levels:
		unlocked_levels += 1
	get_tree().change_scene_to_file("res://level_select.tscn")
