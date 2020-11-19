extends Area2D

func _ready():
	pass 


func _on_Area2D_body_entered(body):
	#print("varGLOB" + str (Global.muere_jugador))
	print(body.name)
	if (body.get_tree().get_nodes_in_group("Player")[0]):
		Global.muere_jugador=true
		#get_tree().get_nodes_in_group("main")[0].respawn()
		print("varGLOB" + str (Global.muere_jugador))
		#get_tree().reload_current_scene()
	pass 
