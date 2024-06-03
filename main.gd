extends Node3D

@onready var player = $Player

var xr_interface: XRInterface

func _ready():
	xr_interface = XRServer.find_interface("OpenXR")
	
	if xr_interface and xr_interface.is_initialized():
		print("OpenXR initialised successfully")
		
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		
		get_viewport().use_xr = true
	else:
		print("OpenXR not initialised, please check if your headset is connected")

func _physics_process(delta):
	get_tree().call_group('enemies', 'update_target_location', player.global_transform.origin)
