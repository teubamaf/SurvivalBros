extends Node2D

func get_input():
	look_at(get_global_mouse_position())

func _physics_process(delta):
	get_input()
