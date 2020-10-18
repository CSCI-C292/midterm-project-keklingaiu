extends KinematicBody2D


export var speed = Vector2(-3,0)


func _physics_process(delta):
	position += speed

	if position.y > get_viewport().size.x + 100:
		queue_free()

func die():
	queue_free()
