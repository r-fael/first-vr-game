extends XRToolsPickable

@export var bullet : PackedScene

func action():
	_shoot_bullet()

func _shoot_bullet():
	if bullet:
		var new_scene = bullet.instantiate()
		if(new_scene):
			new_scene.top_level = true
			add_child(new_scene)
			new_scene.transform = $spawpoint.global_transform
			new_scene.linear_velocity = new_scene.transform.basis.z * 30.0
			$AudioStreamPlayer.play()
