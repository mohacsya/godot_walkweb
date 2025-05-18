extends Camera3D

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var mouse_sensitivity := 0.00003
	if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
		var mouse_motion := Input.get_last_mouse_screen_velocity()
		rotation.y -= mouse_motion.x * mouse_sensitivity
		rotation.x = clamp(rotation.x - mouse_motion.y * mouse_sensitivity, deg_to_rad(-89), deg_to_rad(89))
