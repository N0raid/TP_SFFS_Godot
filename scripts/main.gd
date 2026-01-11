extends Node2D

@export var player_scene: PackedScene
@export var enemy_scene: PackedScene

var score: int = 0

func _ready() -> void:
	# TODO: instancier le joueur au centre en bas de l'écran.
	# Exemple (à compléter avec la bonne position :
	# var player = player_scene.instantiate()
	# add_child(player)
	# player.position = Vector2( ... )
	
	# TODO: créer une petite formation d'ennemis (boucle for)
	
	pass

func add_score(points: int) -> void:
	score += points
	# TODO: prévenir le HUD que le score a changé (signal, appel direct, etc.)
