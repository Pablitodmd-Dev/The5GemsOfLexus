extends CharacterBody2D

var speed = 200
var jump_velocity = -400
var gravity = 1000
var is_dead = false 

func _physics_process(delta):
	if is_dead: return 

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

func die():
	if is_dead: return 
	
	is_dead = true
	velocity = Vector2.ZERO 
	$AnimatedSprite2D.play("idle") 

	if has_node("MusicNode"): 
		$MusicNode.stop()

	if has_node("AudioStreamPlayer2D"):
		$AudioStreamPlayer2D.play()

	await get_tree().create_timer(5.0).timeout
	get_tree().reload_current_scene()
