extends Area2D

@export var speed: float = 400.0

func _ready() -> void:
	# connecter le signal si besoin dans l'éditeur.
	
	pass

func _physics_process(delta: float) -> void:
	# Déplacement simple vers le haut.
	position.y -= speed * delta
	
	# TODO: si la balle sort de l'écran (position.y < une valeur), la détruite avec queue_free().
	
	pass

func _on_Bullet_body_entered(body: Node) -> void:
	# Cette fonction est à relier au signal body_entered ou area_entered dans le squelette.
	# TODO: Si body est un ennemi, le détruire et se détruire.
	# TODO: prévenir la scène principale pour ajouter des points (signal, méthode globale, etc.).
	
	pass
