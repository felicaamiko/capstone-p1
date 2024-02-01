extends Sprite2D

var isHovered = false
var selected = false
var mouseoffset = Vector2(0,0)
var firstframe = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#if Input.is_action_just_pressed("click"):
		#mouseoffset = position - get_global_mouse_position()
	
	if (isHovered == true and Input.is_action_pressed("click")):
		if (firstframe):
			mouseoffset = position - get_global_mouse_position()
			firstframe = false
		print_debug("held down")
		position = get_global_mouse_position() + mouseoffset
	else:
		firstframe = true


func _on_area_2d_mouse_entered():
	print_debug("entered")
	isHovered = true

func _on_area_2d_mouse_exited():
	print_debug("exited")
	isHovered = false
