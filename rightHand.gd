extends XRController3D

@export var Power1 : PackedScene

@export var Power2 : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed(name):
	if(name == 'by_button'):
		if(global.power):
			var power: PackedScene = Power1 if global.power == 1 else Power2 
			var new_power = power.instantiate()
			new_power.top_level = true
			add_child(new_power)
			new_power.transform = $spawnpoint.global_transform
			new_power.linear_velocity = new_power.transform.basis.x * -10.0
			$AudioStreamPlayer.play()
		
