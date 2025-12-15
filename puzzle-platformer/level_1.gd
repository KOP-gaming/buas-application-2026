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
	var cam1 = $cam1
	if cam1.is_enabled():
		pass
	else:
		cam1.set_enabled(true)
	
	

func ExitCheck(body) -> void:
	var cam1 = $cam1
	cam1.set_enabled(false)
	var followcam = get_node("/root/Node2D/player/followcam")
	followcam.set_enabled(true)
