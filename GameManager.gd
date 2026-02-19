extends Node

var unlocked_levels = 1
var audio_player = AudioStreamPlayer.new()

func _ready():
	add_child(audio_player)
	audio_player.stream = load("res://Music/soundGem.mp3")

func win_level(number):
	audio_player.play()
	
	if number == unlocked_levels:
		unlocked_levels += 1
	
	get_tree().change_scene_to_file("res://level_select.tscn")
