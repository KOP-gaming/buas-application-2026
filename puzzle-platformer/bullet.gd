extends Area2D
@export var lifetime : = 1.5
var speed =  500
var direction = 1
var push_force = 1250

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	body_entered.connect(entercheck)
	area_entered.connect(antercheck)
	await get_tree().create_timer(lifetime).timeout
	queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += speed * direction * delta
	
	
	
func entercheck(body):
	if body is StaticBody2D:
		body.queue_free()
		queue_free()
	if body is RigidBody2D:
		var dir = (body.global_position - global_position).normalized()
		body.apply_central_impulse(dir * push_force)
		queue_free()
func antercheck(area):
	queue_free()
	
