extends Node2D

onready var Enemy3 = load("res://Enemy/Enemy3.tscn")


export var prob = 0.6

onready var height = get_viewport().size.y
onready var width = get_viewport().size.x

func _on_Timer_timeout():
	if randf() < prob:
		var enemy3 = Enemy3.instance()
		enemy3.position.y = int(height)/1.5
		enemy3.speed = Vector2(3, 0)
		add_child(enemy3)
		
