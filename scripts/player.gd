extends CharacterBody2D

@export var speed: float = 250.0
@export var bullet_scene: PackedScene

@export var min_x: float = 32.0
@export var max_x: float = 1100.0

@onready var muzzle: Marker2D = $Muzzle
@onready var timer: Timer = $Timer

var shot_possible: bool = true


func _physics_process(delta: float) -> void:
	var input_dir := 0.0
	if Input.is_action_pressed("ui_left"):
		input_dir -= 25.0
	if Input.is_action_pressed("ui_right"):
		input_dir += 25.0

	velocity.x = input_dir * speed * delta
	velocity.y = 0.0

	move_and_slide()

	global_position.x = clamp(global_position.x, min_x, max_x)

func _on_timer_timeout() -> void:
	shot_possible = true

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept") and shot_possible:
		shot_possible = false
		timer.start()
		_shoot()


func _shoot() -> void:
	if bullet_scene == null:
		return

	var bullet = bullet_scene.instantiate()
	var root = get_tree().current_scene
	root.add_child(bullet)

	bullet.global_position = muzzle.global_position
