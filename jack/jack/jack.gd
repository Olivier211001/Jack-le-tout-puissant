extends KinematicBody2D

var speed = 300
var jump_speed = 500
var gravity = 20

var velocity = Vector2()

var isAttacking = false

var life = 10

var hurted = false

func _physics_process(_delta):
 if hurted == false:
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
	   JackAttack()
	   isAttacking = true
	   $AttackArea/CollisionShape2D.disabled = false
	   $AttackArea/CollisionShape2D2.disabled = false
	  else:
	   $AnimatedSprite.play("respiration")
	   $AttackArea/CollisionShape2D2.disabled = true
	   $AttackArea/CollisionShape2D.disabled = true
	  if is_on_floor():
		  if Input.is_action_pressed("jump"):
			  velocity.y = -jump_speed 
	  else:
			  $AnimatedSprite.play("sauter")


func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "attack":
	   $AttackArea/CollisionShape2D.disabled 
	   $AttackArea/CollisionShape2D2.disabled 
	   isAttacking = false

	if $AnimatedSprite.animation == "hurt":
		hurted = false

	if $AnimatedSprite.animation == "die":
		queue_free()
		get_tree().reload_current_scene()


func _on_jackarea_area_entered(area):
	if area.is_in_group("fallwall"):
		get_tree().reload_current_scene()
	if area.is_in_group("Killzone"):
	  hurted = true
	  $AnimatedSprite.play("hurt")
	  life = life - 1
	if area.is_in_group("Grr"):
	  hurted = true
	  $AnimatedSprite.play("hurt")
	  life = life - 1
	if life == 0:
		$AnimatedSprite.play("die")
		
func JackAttack():
	
	 $AnimatedSprite.play("attack")
	 
