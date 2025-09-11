extends PointLight2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.color = Color(255, 0, 0, 255)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_area_entered(area: Area2D) -> void:
	pass
