extends ColorRect
@onready var dropbox = preload("res://bullet.tscn")
@export var timer: = 1.5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	while true:
		
		var dropbox_temp = dropbox.instantiate()
		dropbox.direction = 1
		get_tree().current_scene.add_child(dropbox)
		dropbox.global_position = global_position
		await timer


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
