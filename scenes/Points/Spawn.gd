extends Node2D

export (PackedScene) var car

func _ready():
	var Jugador = car.instance()
	add_child(Jugador)
	Jugador.global_position = get_tree().get_nodes_in_group("SP")[0].global_position
	if Global.muere_jugador ==true:
		print("ANDA")
		respawn()
pass
func respawn():
	var Jugador = car.instance()
	add_child(Jugador)
	Jugador.global_position = get_tree().get_nodes_in_group("SP")[0].global_position
	pass
	
