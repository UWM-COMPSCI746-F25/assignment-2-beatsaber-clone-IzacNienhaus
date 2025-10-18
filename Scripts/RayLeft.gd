extends Node3D

@export var raycast_length = 3

func _physics_process(delta: float):
	var space_state = get_world_3d().direct_space_state
	
	var origin = global_position
	var dir = global_basis.z * -1
	var end = origin + (dir * raycast_length)
	var query = PhysicsRayQueryParameters3D.create(origin, end)
	query.collide_with_areas = true
	var result = space_state.intersect_ray(query)
	
	
	$"LineRenderer".points[0] = origin
	$"LineRenderer".points[1] = end
	

func _on_button_pressed(name):
	if name == "ax_button":
		if $"LineRenderer".visible == true:
			$"LineRenderer".visible = false
		else:
			$"LineRenderer".visible = true
