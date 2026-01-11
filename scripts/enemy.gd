extends Area2D

@export var speed: float = 50.0
@export var direction: int = 1 # 1 ou -1

# Ces limites peuvent être configurées dans l'éditeur sur la scène Enemy
@export var min_x: float = 32.0
@export var max_x: float = 608.0
@export var drop_distance: float = 16.0

signal request_move_down

func _physics_process(delta: float) -> void:
	# TODO: déplacer l'ennemi horizontalement : position.x += speed * direction * delta.
	# TODO: si on atteint un bord (min_x / max_x), émettre un signal pour se déplacer vers le bas.
	# Le changement de direction se fera dans la scène Main.
	
	pass

func on_hit() -> void:
	# Appelée quand une balle touche l'ennemi.
	# TODO: éventuellement jouer un effet, puis se détruire.
	queue_free()
