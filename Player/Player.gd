extends Node2D

onready var max_length = 50
onready var max_divergence = 15
onready var timeout = false;


func _ready():
	move_to_mouse()


func _process(_delta):
	look_at(get_global_mouse_position())
	if position != get_global_mouse_position():
		move_to_mouse()
	
	
func move_to_mouse():
	if (Input.is_action_pressed("Click") && (timeout == false)):
		timeout = true
		get_child(0).start()
		var mouse_position = Vector2(get_global_mouse_position().x, get_global_mouse_position().y)
		if(position.x + max_divergence < mouse_position.x):
			position = Vector2(position.x + max_length, position.y)
		if(position.y + max_divergence < mouse_position.y):
			position = Vector2(position.x, position.y + max_length)
		if(position.x - max_divergence > mouse_position.x):
			position = Vector2(position.x - max_length, position.y)
		if(position.y - max_divergence > mouse_position.y):
			position = Vector2(position.x, position.y - max_length)



func _on_Timer_timeout():
	timeout = false;
		
