extends Area2D

@export var speed: float = 50.0
@export var direction: int = 1

@export var min_x: float = 32.0
@export var max_x: float = 1100.0
@export var drop_distance: float = 16.0

# signal request_move_down


func _physics_process(delta: float) -> void:
	global_position.x += speed * direction * delta

	if global_position.x < min_x:
		global_position.x = min_x
		direction *= -1
		global_position.y += drop_distance
	elif global_position.x > max_x:
		global_position.x = max_x
		direction *= -1
		global_position.y += drop_distance


func on_hit() -> void:
	queue_free()
