extends Node3D

func _on_button_pressed(name):
	if name == 'ax_button':
		if $"Laser".visible == true:
			$"Laser".visible = false
		else:
			$"Laser".visible = true
