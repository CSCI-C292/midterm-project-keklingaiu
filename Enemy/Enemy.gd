extends Node2D


export var speed = Vector2(3,0)


func _physics_process(_delta):
	position -= speed

	if position.y > get_viewport().size.x + 100:
		queue_free()

func die():
	queue_free()





func _on_Area2D_area_entered(area):
	if(area.name == "Player"):
		get_tree().reload_current_scene()
