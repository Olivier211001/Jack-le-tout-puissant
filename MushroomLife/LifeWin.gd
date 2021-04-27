extends Node2D

var winLife

func _physics_process(_delta):
	$AnimatedSprite.play("idle")


func _on_Area2D_area_entered(area):
	if area.is_in_group("Jack"):
		winLife = get_tree().root.get_node("Forêt").get_node("Jack").life
		winLife = winLife +1
		get_tree().root.get_node("Forêt").get_node("Jack").life = winLife
		queue_free()
   
