extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var menus = get_node("/root/Node2D/player/menu")
	if button_pressed:
		menus.set_visible(false)
		get_tree().paused = false
