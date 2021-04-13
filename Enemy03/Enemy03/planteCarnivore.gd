extends KinematicBody2D

var attack = false

func _physics_process(_delta):
	if attack == false:
		$AnimatedSprite.play("idle")
		$heatzone/CollisionShape2D.disabled = false
		$heatzone/CollisionShape2D2.disabled = false


func _on_planti_area_entered(area):
	if area.is_in_group("Jack"):
		attack = true		
		$AnimatedSprite.play("attack")
		$heatzone/CollisionShape2D.disabled = false


func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "attack":
		attack = false
	if $AnimatedSprite.animation == "attack2":
		attack = false
	$heatzone/CollisionShape2D.disabled
	$heatzone/CollisionShape2D2.disabled


func _on_planti2_area_entered(area):
	if area.is_in_group("Jack"):
		attack = true		
		$AnimatedSprite.play("attack2")
		$heatzone/CollisionShape2D2.disabled = false
