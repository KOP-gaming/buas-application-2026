extends Area2D

func _ready() -> void:
	body_entered.connect(EnterCheck)
	body_exited.connect(ExitCheck)


#check when body enters or exits the button
func EnterCheck(body) -> void:
	$AnimationPlayer.play("door3")
	#var exit = $w3
	#exit.set_collision_layer_value(1, false)
	#await $AnimationPlayer.animation_finished
	#var light = $switchlight
	#light.color = Color(0, 255, 0, 255)
	pass
func ExitCheck(body) -> void:
	pass
