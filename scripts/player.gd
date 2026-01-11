extends CharacterBody2D

@export var speed: float = 250.0
@export var bullet_scene: PackedScene

# Limites horizontales (à ajuster dans le TP)
@export var min_x: float = 0.0
@export var max_x: float = 640.0

func _physics_process(delta: float) -> void:
	# TODO: lire les actions de déplacement (ui_left, ui_right).
	# TODO: mettre à jour velocity.x en fonction de l'input et de speed.
	# TODO: appeler move_and_slide()
	
	# TODO: empêcher le joueur de sortir de l'écran (clamp de position.x).
	
	pass

func _unhandled_input(event: InputEvent) -> void:
	# TODO: si la touche de tir est pressée (ex: "ui_accept"),
	# intancier une balle à partir de bullet_scene, 
	# positionner la balle sur le Marker2D "Muzzle",
	# puis l'ajouter à la scène (par exemple "get_tree().current_scene.add_child(bullet)").
	
	pass
