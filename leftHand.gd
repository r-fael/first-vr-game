extends XRController3D


func _on_button_pressed(name):
	if(name == 'by_button'):
		global.power = 2 if global.power == 1 else 1
