extends CharacterBody2D

var speed = 150
var jump_force = -350
var gravity = 800

var player = null
var can_jump = true

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
		$AnimatedSprite2D.play("jump")
		
		if player != null:
			if player.global_position.x > global_position.x:
				velocity.x = speed
				$AnimatedSprite2D.flip_h = false
			else:
				velocity.x = -speed
				$AnimatedSprite2D.flip_h = true
	else:
		$AnimatedSprite2D.play("idle")
		velocity.x = 0
		
		if player != null and can_jump:
			can_jump = false
			$JumpTime.start()
		
	move_and_slide()

func _on_jump_time_timeout() -> void:
	if player != null:
		velocity.y = jump_force
		can_jump = true

func _on_damage_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		player = body

func _on_dead_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		body.velocity.y = -250
		queue_free()
