extends Node2D

const Player = preload("res://Scenes/Player/Player.gd")

var mousepos

func _process(_delta: float) -> void:
	mousepos = get_global_mouse_position()
	look_at(mousepos)
