extends Node3D

@onready var cube = load("res://Scenes/cube.tscn")
@onready var timer = $Timer

@export var min_wait_time: float = 0.5
@export var max_wait_time: float = 2.0

var red_material = preload("res://Materials/RedLaser.tres")
var blue_material = preload("res://Materials/BlueLaser.tres")
var materials = [red_material, blue_material]

#func _process(delta: float) -> void:
	#var instance = cube.instantiate()
	#add_child(instance)

func _on_timer_timeout() -> void:
	var random_wait = randf_range(min_wait_time, max_wait_time)
	$Timer.wait_time = random_wait
	
	var instance = cube.instantiate()
	randomize()
	var chosen_material = materials.pick_random()
	instance.material = chosen_material
	instance.position.x = randf_range(-2, 2)
	instance.position.y = randf_range(-2, 2)
	
	add_child(instance)
	
	$Timer.start()
