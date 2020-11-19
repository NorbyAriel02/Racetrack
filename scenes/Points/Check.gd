extends Area2D

func _ready():
	pass

func _on_Area2D_body_entered(body):
	if (body.is_in_group("Player")):
		get_tree().get_nodes_in_group("sp")[0].global_position = global_position
	pass 
