extends KinematicBody2D

const GRAVITY = 20
const SPEED = 50
const FLOOR = Vector2(0, -1)

var velocity = Vector2()

var direction = -1

var dead = false

var attack = false



func _physics_process(_delta):

	if dead == false && attack == false:

		$killzone/c1.disabled = false;
		$killzone/c2.disabled = false;
		velocity.x = SPEED * direction
		if direction == 1:
		  $AnimatedSprite.flip_h = true
		else:
		  $AnimatedSprite.flip_h = false

		$AnimatedSprite.play("run")

		velocity.y += GRAVITY

		velocity = move_and_slide(velocity, FLOOR)

		if is_on_wall():
			 direction = direction * -1
			 $RayCast2D.position.x *= -1





func _on_Area2D_area_entered(area):
	if area.is_in_group("Jack"):


		attack = true


		$AnimatedSprite.play("attack")
		$killzone/c1.disabled = false;
		$killzone/c2.disabled = false;


	if area.is_in_group("Sword"):
		
		  dead = true
		  $AnimatedSprite.play("die")
		



func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "die":
		queue_free()
	if $AnimatedSprite.animation == "attack":
		$killzone/c1.disabled
		$killzone/c2.disabled
		attack = false
	
		
	
		
			
			
		
		
