extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	body_entered.connect(EnterCheck)
	body_exited.connect(ExitCheck)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func EnterCheck(body) -> void:
	var followcam = get_node("/root/Node2D/player/followcam")
	if followcam.is_enabled():
		followcam.set_enabled(false)
	else:
		pass
	var cam2 = $cam2
	if cam2.is_enabled():
		pass
	else:
		cam2.set_enabled(true)
		
func ExitCheck(body) -> void:
	var cam2 = $cam2
	cam2.set_enabled(false)
