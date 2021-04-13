extends KinematicBody2D


const GRAVITY = 20
const SPEED = 50
const FLOOR = Vector2(0, -1)

var velocity = Vector2()

var direction = -1

var dead = false

var attack = false

var life = 5

var hurted = false


func _physics_process(_delta):
   
	if dead == false && attack == false && hurted == false: 	
		
		$killzone/c1.disabled = false;
		$killzone/c2.disabled = false;
		velocity.x = SPEED * direction
		if direction == 1:
		  $AnimatedSprite.flip_h = false
		else:
		  $AnimatedSprite.flip_h = true
		
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
		life = life - 1	
		hurted = true
		attack = false		
		if life == 0:
		  dead = true
		  $AnimatedSprite.play("die")
		else:
		  $AnimatedSprite.play("hurt")	
		
	if area.is_in_group("Flip"):
		
		 if $AnimatedSprite.flip_h == true:
				$AnimatedSprite.flip_h = false
		 else:
				$AnimatedSprite.flip_h = true
			


func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "die":
		queue_free()
	if $AnimatedSprite.animation == "attack":
		$killzone/c1.disabled
		$killzone/c2.disabled
		attack = false
	if $AnimatedSprite.animation == "hurt":
		hurted = false
		
		
	
		
func _on_flipD_area_entered(area):
	
	 if area.is_in_group("Flip"):
		
		 if $AnimatedSprite.flip_h == true:
				$AnimatedSprite.flip_h = false
		 else:
				$AnimatedSprite.flip_h = true
