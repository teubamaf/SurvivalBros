extends CharacterBody2D

@export var speed = 200

var hand

var playerpos
var angle

func _ready():
	hand = get_node("Sprite2D/Hand")

func get_input():
	var input = Vector2()
	if Input.is_action_pressed('right'):
		input.x += 1
	if Input.is_action_pressed('left'):
		input.x -= 1
	if Input.is_action_pressed('down'):
		input.y += 1
	if Input.is_action_pressed('up'):
		input.y -= 1
	return input

func _physics_process(delta):
	var direction = get_input()
	velocity = direction * speed
	move_and_slide()
	playerpos = get_position()
