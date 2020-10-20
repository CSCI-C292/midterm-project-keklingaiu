extends Area2D

onready var global = get_node("/root/Global")



func _on_Level_area_entered(area):
	if(area.name == "Player"):

		global.level = 3
		get_tree().change_scene("res://Levels/Level3.tscn")
