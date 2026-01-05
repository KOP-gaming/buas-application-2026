extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	body_entered.connect(EnterCheck)
	body_exited.connect(ExitCheck)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func EnterCheck(body) -> void:
	$AnimationPlayer.play("level1door")
func ExitCheck(body) -> void:
	pass
