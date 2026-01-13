extends Area2D

@export var speed: float = 400.0


func _physics_process(delta: float) -> void:
	global_position.y -= speed * delta

	var viewport_rect = get_viewport_rect()
	if global_position.y < -10.0 or global_position.y > viewport_rect.size.y + 10.0:
		queue_free()


func _on_Bullet_body_entered(body: Node2D) -> void:
	var main := get_tree().current_scene
	if body.is_in_group("enemy"):
		if body.has_method("on_hit"):
			body.on_hit()
		main.add_score(10)
		Events.enemy_died.emit()
		queue_free()
