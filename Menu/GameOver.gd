extends Control

onready var global = get_node("/root/Global")

func _on_Play_Again_pressed():
	global.level = 1
	get_tree().change_scene("res://Game.tscn")

func _on_Quit_pressed():
	get_tree().quit()
