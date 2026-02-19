extends Control

var blue_color = Color(0.2, 0.6, 1) 
var red_color = Color(1, 0.2, 0.2)  
var white_color = Color(1, 1, 1)    

func _ready():
	var progress = GameManager.unlocked_levels

	$Level1Button/Label.text = "1"
	if progress > 1:
		$Level1Button.modulate = blue_color
		$Level1Button.disabled = false
	elif progress == 1:
		$Level1Button.modulate = red_color
		$Level1Button.disabled = false
	else:
		$Level1Button.modulate = white_color
		$Level1Button.disabled = true

	$Level2Button/Label.text = "2"
	if progress > 2:
		$Level2Button.modulate = blue_color
		$Level2Button.disabled = false
	elif progress == 2:
		$Level2Button.modulate = red_color
		$Level2Button.disabled = false
	else:
		$Level2Button.modulate = white_color
		$Level2Button.disabled = true

	$Level3Button/Label.text = "3"
	if progress > 3:
		$Level3Button.modulate = blue_color
		$Level3Button.disabled = false
	elif progress == 3:
		$Level3Button.modulate = red_color
		$Level3Button.disabled = false
	else:
		$Level3Button.modulate = white_color
		$Level3Button.disabled = true

	$Level4Button/Label.text = "4"
	if progress > 4:
		$Level4Button.modulate = blue_color
		$Level4Button.disabled = false
	elif progress == 4:
		$Level4Button.modulate = red_color
		$Level4Button.disabled = false
	else:
		$Level4Button.modulate = white_color
		$Level4Button.disabled = true

	$Level5Button/Label.text = "5"
	if progress > 5:
		$Level5Button.modulate = blue_color
		$Level5Button.disabled = false
	elif progress == 5:
		$Level5Button.modulate = red_color
		$Level5Button.disabled = false
	else:
		$Level5Button.modulate = white_color
		$Level5Button.disabled = true

	$Level6Button/Label.text = "6"
	if progress > 6:
		$Level6Button.modulate = blue_color
		$Level6Button.disabled = false
	elif progress == 6:
		$Level6Button.modulate = red_color
		$Level6Button.disabled = false
	else:
		$Level6Button.modulate = white_color
		$Level6Button.disabled = true

func _on_level_1_button_pressed():
	get_tree().change_scene_to_file("res://LevelScenes/Level1.tscn")

func _on_level_2_button_pressed():
	get_tree().change_scene_to_file("res://LevelScenes/Level2.tscn")

func _on_level_3_button_pressed():
	get_tree().change_scene_to_file("res://LevelScenes/Level3.tscn")

func _on_level_4_button_pressed():
	get_tree().change_scene_to_file("res://LevelScenes/Level4.tscn")

func _on_level_5_button_pressed():
	get_tree().change_scene_to_file("res://LevelScenes/Level5.tscn")

func _on_level_6_button_pressed():
	get_tree().change_scene_to_file("res://LevelScenes/Level6.tscn")
