extends CharacterBody2D

var speed = 200
var jump_velocity = -400
var gravity = 1000

func _physics_process(delta):

	if Input.is_action_pressed("right"): 
		velocity.x = speed
		$AnimatedSprite2D.play("walk")
		$AnimatedSprite2D.flip_h = false
	elif Input.is_action_pressed("left"): 
		velocity.x = -speed
		$AnimatedSprite2D.play("walk")
		$AnimatedSprite2D.flip_h = true
	else:
		velocity.x = 0
		$AnimatedSprite2D.play("idle")

	if not is_on_floor():
		velocity.y += gravity * delta
		$AnimatedSprite2D.play("jump")

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity

	move_and_slide()
