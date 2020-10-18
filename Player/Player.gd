extends KinematicBody2D


func _ready():
	move_to_mouse()


func _process(delta):
	look_at(get_global_mouse_position())
	if position != get_global_mouse_position():
		move_to_mouse()
	
	
func move_to_mouse():
	if Input.is_action_pressed("Click"):
		position = get_global_mouse_position()


func _on_Damage_body_entered(body):	get_tree().reload_current_scene()
