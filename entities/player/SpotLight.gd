extends SpotLight


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body

	if (Input.is_action_pressed('Flashlight')):
		light_energy = 6
	else:
		light_energy = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
