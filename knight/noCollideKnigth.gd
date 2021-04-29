extends Node2D

var changelife

var isDead = false

func _ready():
	pass 

func _physics_process(_delta):
	
	if isDead == false:
		changelife = get_tree().root.get_node("Forêt").get_node("knight").life 
	if changelife == 0:
		$StaticBody2D/CollisionShape2D.disabled = true
		isDead = true
