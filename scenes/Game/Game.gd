extends Node2D


export (PackedScene) var car

func _ready():
	var Jugador = car.instance()
	add_child(Jugador)
	Jugador.global_position = get_tree().get_nodes_in_group("Spawn")[0].global_position
	pass 

func _on_Pared_Muerte_body_entered(body):
	if body.get_name() =="topWheel":
	#get_tree().get_nodes_in_group("Player")[0].global.position = get_tree().get_nodes_in_group("Spawn")[0].global_position
		var Jugador = car.instance()
		add_child(Jugador)
		Jugador.global_position = get_tree().get_nodes_in_group("Spawn")[0].global_position
	pass 
