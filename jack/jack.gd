extends KinematicBody2D

var speed = 300
var jump_speed = 500
var gravity = 20

var velocity = Vector2()

var isAttacking = false

func _physics_process(_delta):
  velocity.x = (int(Input.is_action_pressed("right")) - int(Input.is_action_pressed("left"))) * speed 

  velocity.y += gravity
  velocity = move_and_slide(velocity, Vector2(0, -1))

  if Input.is_action_pressed("right"):
   $AnimatedSprite.flip_h = false
   $AnimatedSprite.play("courir")
  elif Input.is_action_pressed("left"):
   $AnimatedSprite.flip_h = true
   $AnimatedSprite.play("courir")
  elif Input.is_action_pressed("sword"):
   $AnimatedSprite.play("attack")
  else:
   $AnimatedSprite.play("respiration")


  if is_on_floor():
	  if Input.is_action_pressed("jump"):
		  velocity.y = -jump_speed 
  else:
		  $AnimatedSprite.play("sauter")
	

  
		
			
