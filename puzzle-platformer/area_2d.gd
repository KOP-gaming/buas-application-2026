extends Area2D

func _ready() -> void:
	body_entered.connect(EnterCheck)
	body_exited.connect(ExitCheck)


#check when body enters or exits the button
func EnterCheck(body) -> void:
	var light = $switchlight
	light.color = Color(0, 255, 0, 255)
	var exit = $wall
	exit.set_collision_layer_value(1, false)
func ExitCheck(body) -> void:
	pass
