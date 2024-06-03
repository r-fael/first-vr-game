extends Button

@export var object : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _pressed():
	if(object):
		var new_object = object.instantiate()
		new_object.top_level = true
		add_child(new_object)
		new_object.transform = get_tree().get_first_node_in_group('player').global_transform
		
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
