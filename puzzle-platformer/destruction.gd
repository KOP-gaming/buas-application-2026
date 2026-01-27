extends Area2D

func _ready() -> void:
	#Connect the body_entered signal to EnterCheck
	body_entered.connect(EnterCheck)

func EnterCheck(body: Node) -> void:
	print("entered", body)
	if body is RigidBody2D:
		# set tp location
		var new_tp = Transform2D().translated(Vector2(2837, 300))
		# tp rigidbody
		PhysicsServer2D.body_set_state(
			body.get_rid(),
			PhysicsServer2D.BODY_STATE_TRANSFORM,
			new_tp
			)
		body.angular_velocity = 0.0
		body.set_linear_velocity(Vector2(0,0))

func _process(delta: float) -> void:
	pass  # Currently nothing happens every frame
