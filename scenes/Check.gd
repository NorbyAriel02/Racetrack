extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Check_body_entered(body):
	if body.get_name() =="topWheel":
		print("Check")
		get_tree().get_nodes_in_group("Spawn")[0].global_position = global_position
	pass
