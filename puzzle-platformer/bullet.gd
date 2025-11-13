extends Area2D
@export var lifetime : = 2
var speed =  400
var direction = 1

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
func antercheck(area):
	queue_free()
	
