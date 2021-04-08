extends KinematicBody2D



func _physics_process(_delta):
  $AnimatedSprite.play("attack")
