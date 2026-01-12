extends Area2D

func _ready() -> void:
	body_entered.connect(EnterCheck)
	body_exited.connect(ExitCheck)


#check when body enters or exits the button
func EnterCheck(body) -> void:
	$AnimationPlayer.play("door2")
	$door_open.play()
	var exit = $wall3
	exit.set_collision_layer_value(1, false)
	await $AnimationPlayer.animation_finished
	var light = $switchlight
	light.color = Color(0, 255, 0, 255)
func ExitCheck(body) -> void:
	pass
