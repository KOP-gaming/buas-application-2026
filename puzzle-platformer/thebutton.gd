extends Area2D

var bodycount: int = 0

func _ready() -> void:
	body_entered.connect(EnterCheck)
	body_exited.connect(ExitCheck)


#check when body enters or exits the button
func EnterCheck(body) -> void:
	bodycount += 1
	if bodycount == 1:
		$AnimationPlayer.play("door")
		$doorclosing.stop()
		$dooropen.play()
	
func ExitCheck(body) -> void:
	bodycount -= 1
	if bodycount == 0:
		$dooropen.stop()
		$AnimationPlayer.play_backwards("door")
		$doorclosing.play()
		
	
