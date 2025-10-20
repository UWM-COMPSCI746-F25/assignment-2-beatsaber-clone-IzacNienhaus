extends Node3D


func _on_button_pressed(name):
	if name == 'ax_button':
		if $CSGBox3D/Laser.visible == true:
			$CSGBox3D/Laser.visible = false
		else:
			$CSGBox3D/Laser.visible = true
