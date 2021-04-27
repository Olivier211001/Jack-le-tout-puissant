extends KinematicBody2D


const GRAVITY = 20
const SPEED = 50
const FLOOR = Vector2(0, -1)

var velocity = Vector2()

var direction = -1


var dead = false

var attack = false

var life = 10

var hurted = false

var flip = false

var dir = true

var yep = 1

func _physics_process(_delta):
   
	if dead == false && attack == false && hurted == false && flip == false: 	
		if life == 0:
			 $AnimatedSprite.play("die")
		$killzone/c1.disabled = false;
		$killzone/c2.disabled = false;
		velocity.x = SPEED * direction
		if direction == 1:
		  $AnimatedSprite.flip_h = false
		else:
		  $AnimatedSprite.flip_h = true
		if dir == false:
		  $AnimatedSprite.flip_h = true
		  direction = -1
		if dir == true:
		  $AnimatedSprite.flip_h = false
		  direction = 1
		$AnimatedSprite.play("run")
		
		velocity.y += GRAVITY
		
		velocity = move_and_slide(velocity, FLOOR)
		
		if is_on_wall():
			 if dir == false:
				  dir = true
			 else:
				  dir = false
			
			 direction = direction * -1
			 $RayCast2D.position.x *= -1
			
			

		 

func _on_Area2D_area_entered(area):
	if area.is_in_group("Jack"):
		
		
		attack = true
		hurted = false
		flip = false
		dead = false
		
		$AnimatedSprite.play("attack")
		$killzone/c1.disabled = false;
		$killzone/c2.disabled = false;
		
		
	if area.is_in_group("Sword"):
		life = life - 1	
		hurted = true
		attack = false	
		flip = false	
		if life == 0:
		  dead = true
		  hurted = false
		  $AnimatedSprite.play("die")
		elif dead == false:
		  flip = false
		  $AnimatedSprite.play("hurt")	

		
	if area.is_in_group("Flip") && dead == false && hurted == false:
		 attack = false
		 yep = 1
		 flip = true
		 $AnimatedSprite.play("idle")	
	if area.is_in_group("Flip2") && dead == false && hurted == false:
		 attack = false
		 yep = 2
		 flip = true
		 $AnimatedSprite.play("idle")	
	
		

func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "die":
		life = 0
		queue_free()
		get_tree().change_scene("res://TitleScreen/TitleScreen.tscn")
	if $AnimatedSprite.animation == "attack":
		$killzone/c1.disabled
		$killzone/c2.disabled
		attack = false
	if $AnimatedSprite.animation == "hurt":
		hurted = false
		
	if $AnimatedSprite.animation == "idle":	
		 if yep == 1:
			 dir = false
		 if yep == 2:
			 dir = true
		 flip = false
	
		
func _on_flipD_area_entered(area):
	
	 if area.is_in_group("Flip"):
		 $AnimatedSprite.flip_h == true
				
