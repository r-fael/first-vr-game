extends XRToolsPickable

@export var spell : PackedScene

func action():
	_shoot_spell()

func _shoot_spell():
	if spell:
		var new_spell = spell.instantiate()
		if(new_spell):
			new_spell.top_level = true
			add_child(new_spell)
			new_spell.transform = $spawpoint.global_transform
			new_spell.linear_velocity = new_spell.transform.basis.y * 10.0
			$AudioStreamPlayer.play()
