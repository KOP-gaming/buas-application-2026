extends Area2D

var bodycount: int = 0

func _ready() -> void:
	body_entered.connect(EnterCheck)
	body_exited.connect(ExitCheck)


#check when body enters or exits the button
func EnterCheck(body) -> void:
	bodycount += 1
	if bodycount == 1:
		$AnimationPlayer.play("door2")
		$door_closing.stop()
		$door_open.play()
		var exit = $wall3
		exit.set_collision_layer_value(1, false)
		await $AnimationPlayer.animation_finished
		var light = $switchlight
		light.color = Color(0, 255, 0, 255)
	
func ExitCheck(body) -> void:
	bodycount -= 1
	if bodycount == 0:
		$door_open.stop()
		$AnimationPlayer.play_backwards("door2")
		$door_closing.play()
		var exit = $wall3
		exit.set_collision_layer_value(1, true)
		var light = $switchlight
		light.color = Color(255, 0, 0, 255)
		await $AnimationPlayer.animation_finished
		light.color = Color(255, 0, 0, 255)
	
