extends CharacterBody2D
@onready var bullet = preload("res://bullet.tscn")
const SPEED = 300.0
@export var JUMP_VELOCITY = -400.0
const DOWN = 600
var push_force = 30.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	# Handle jump and down boost + shooting
	if Input.is_action_just_pressed("up") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	if Input.is_action_just_pressed("down"):
		velocity.y = DOWN
	if Input.is_action_just_pressed("shoot"):
		var bullet_temp = bullet.instantiate()
		bullet_temp.direction = 1
		get_tree().current_scene.add_child(bullet_temp)
		bullet_temp.global_position = global_position
	if Input.is_action_just_pressed("menu"):
		$menu.set_visible(true)
		get_tree().paused = true
	

	# Get the input direction and handle the movement/deceleration.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	#change decelaration for on the ground and in the air
	else:
		if is_on_floor():
			velocity.x = move_toward(velocity.x, 0, SPEED)
		else:
			velocity.x = move_toward(velocity.x, 0, 6)
	for i in get_slide_collision_count():
		var c = get_slide_collision(i)
		if c.get_collider() is RigidBody2D:
			c.get_collider().apply_central_impulse(-c.get_normal() * push_force)

	move_and_slide()
