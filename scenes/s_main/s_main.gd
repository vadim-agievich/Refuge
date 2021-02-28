extends Spatial

#-----------------SCENE--SCRIPT------------------#
#    Close your game faster by clicking 'Esc'    #
#   Change mouse mode by clicking 'Shift + F1'   #
#------------------------------------------------#
var player = null

##################################################
func sub(s):
	var n 

func _ready():
	OS.center_window()
	pause(0)
		
func pause (s=0):
	get_tree().paused = bool(s)
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED if !s else Input.MOUSE_MODE_VISIBLE)	

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		pause(0)
	sub('menu_pause')
	
