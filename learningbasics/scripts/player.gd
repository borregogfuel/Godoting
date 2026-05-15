extends CharacterBody2D

const SPEED := 200.0
const JUMP_VELOCITY := -480.0
const GRAVITY := 980.0

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	if Input.is_key_pressed(KEY_SPACE) and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var dir := 0.0
	if Input.is_key_pressed(KEY_D):
		dir += 1.0
	if Input.is_key_pressed(KEY_A):
		dir -= 1.0

	velocity.x = dir * SPEED
	move_and_slide()
