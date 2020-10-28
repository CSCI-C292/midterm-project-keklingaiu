extends Node2D

onready var Enemy2 = load("res://Enemy/Enemy2.tscn")


export var prob = 1.5

onready var height = get_viewport().size.y
onready var width = get_viewport().size.x

func _on_Timer_timeout():
	if randf() < prob:
		var enemy2 = Enemy2.instance()
		enemy2.position.y = int(height)/3
		enemy2.speed = Vector2(7, 0)
		add_child(enemy2)
		
