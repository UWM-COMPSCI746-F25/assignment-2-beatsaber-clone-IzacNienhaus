extends CSGBox3D

@export var dir = Vector3(0, 0, 1)
@export var speed = 50
@onready var blue = load("res://Materials/BlueLaser.tres")
@onready var red = load("res://Materials/RedLaser.tres")

func _process(delta: float) -> void:
	position.z += (speed * delta)
	
	
func _on_area_3d_area_entered(area):
	if area.name == "rightArea" && material == blue:
		if area.get_parent().visible == true:
			$AudioStreamPlayer3D.play()
			$".".visible = false
	elif area.name == "leftArea" && material == red:
		if area.get_parent().visible == true:
			$AudioStreamPlayer3D.play()
			$".".visible = false
	elif area.name == "backdrop":
		queue_free()
