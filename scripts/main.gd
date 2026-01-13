extends Node2D

@export var player_scene: PackedScene
@export var enemy_scene: PackedScene
@export var game_over_scene: PackedScene

var score: int = 0
var hud: CanvasLayer

func _ready() -> void:
	hud = $HUD
	_spawn_player()
	_spawn_enemies()
	Events.enemy_died.connect(check_game_over)

func _spawn_player() -> void:
	var player = player_scene.instantiate()
	add_child(player)

	var viewport_size = get_viewport_rect().size
	player.position = Vector2(viewport_size.x * 0.5, viewport_size.y - 40.0)


func _spawn_enemies() -> void:
	var rows := 3
	var cols := 5
	var start_x := 80.0
	var start_y := 60.0
	var spacing_x := 80.0
	var spacing_y := 40.0

	for row in range(rows):
		for col in range(cols):
			var enemy = enemy_scene.instantiate()
			add_child(enemy)
			enemy.position = Vector2(
				start_x + col * spacing_x,
				start_y + row * spacing_y
			)


func add_score(points: int) -> void:
	score += points
	if hud:
		hud.set_score(score)
	

func check_game_over() -> void:
	var enemies := get_tree().get_nodes_in_group("enemy")
	print(enemies.size())
	if enemies.size() <= 1:
		print("Something's been done")
		add_child(game_over_scene.instantiate())
