extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	body_entered.connect(EnterCheck)
	body_exited.connect(ExitCheck)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func EnterCheck(body) -> void:
	var cam2 = $cam2
	if cam2.is_enabled():
		pass
	else:
		cam2.set_enabled(true)
	#check if camera2d IS already anabled and otherwise enable it
	#if cam1 = enabled:
	#pass
	#else:
	#enable
	

func ExitCheck(body) -> void:
	var cam2 = $cam2
	cam2.set_enabled(false)
