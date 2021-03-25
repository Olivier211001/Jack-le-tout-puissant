extends KinematicBody2D

const GRAVITY = 20
const SPEED = 50
const FLOOR = Vector2(0, -1)

var velocity = Vector2()

var direction = -1

	
func _physics_process(_delta):
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


