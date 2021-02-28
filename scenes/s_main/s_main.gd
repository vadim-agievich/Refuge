extends Spatial

#-----------------SCENE--SCRIPT------------------#
#    Close your game faster by clicking 'Esc'    #
#   Change mouse mode by clicking 'Shift + F1'   #
#------------------------------------------------#
var player = null
var x = 2

##################################################

func _ready():
	OS.center_window()
	G.pause(0)
		
func pause (s=0):
	get_tree().paused = bool(s)
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED if !s else Input.MOUSE_MODE_VISIBLE)	

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		G.pause(0)
	G.sub('menu_pause')
	
