extends Node2D

onready var Enemy = load("res://Enemy/Enemy.tscn")
export var prob = 0.8

onready var height = get_viewport().size.y
onready var width = get_viewport().size.x

func _on_Timer_timeout():
	if randf() < prob:
		var enemy = Enemy.instance()
		enemy.position.y = randi() % int(height)/1.5
		enemy.speed = Vector2(3, 0)
		add_child(enemy)
