extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	body_entered.connect(EnterCheck)
	body_exited.connect(ExitCheck)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func EnterCheck(body) -> void:
	var cam3 = $cam3
	if cam3.is_enabled():
		pass
	else:
		cam3.set_enabled(true)
	
	

func ExitCheck(body) -> void:
	var cam3 = $cam3
	cam3.set_enabled(false)
