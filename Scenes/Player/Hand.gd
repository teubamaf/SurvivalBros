extends Node2D
# Récupération de la position de la souris
var mouse_position
# Récupération de la position de la main du personnage
var hand_position

#distance de la souris
var dx
var dy

# Calcul de la distance entre la souris et la main
var distance
var hand

var angle


func _ready():
	hand = get_node("Hand")

func get_input():
	mouse_position = get_global_mouse_position()
	#print(mouse_position)
	hand_position = hand.get_position()
	dx = mouse_position.x - hand_position.x
	dy = mouse_position.y - hand_position.y
	distance = sqrt(dx*dx + dy*dy)
	angle = atan2(dx,dy)
	hand.rotate(angle)

func _physics_process(delta):
	get_input()
