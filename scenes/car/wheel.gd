extends RigidBody2D


const BASE_ACCEL = 1200000


func _ready():
	pass 
func _physics_process(delta):
	_update_accel(_get_direction(), delta)
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().change_scene("res://scenes/levelSelection/LevelSelection.tscn")
	
func _update_accel(direction, delta):
	var accel = direction * BASE_ACCEL
	applied_torque = accel * delta
	pass
	
func _get_direction():
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		direction -=1
	if Input.is_action_pressed("ui_right"):
		direction +=1
	return direction

	pass # Replace with function body.
