extends Node

var niveles_desbloqueados = 1 # Empezamos con el 1

func ganar_nivel(numero_actual):
	if numero_actual == niveles_desbloqueados:
		niveles_desbloqueados += 1
	get_tree().change_scene_to_file("res://LevelSelectorScreen.tscn")
