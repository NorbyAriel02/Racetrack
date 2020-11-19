extends Node2D

export (PackedScene) var car
export (PackedScene) var Nivel1
onready var Pared_muerte = get_node("Pared_Muerte")
var level = null
var Jugador = null
func _ready():
	LoadLevel()
	SpawndCar()
	pass 



func SpawndCar():
	Jugador = preload("res://scenes/car/car.tscn").instance()
	add_child(Jugador)
	Global.spawnPoint = level.get_tree().get_nodes_in_group("Spawn")[0].global_position
	Jugador.global_position = Global.spawnPoint
	pass

func LoadLevel():
	if (Global.level == 1):
		level = preload("res://scenes/Niveles/Nivel1.tscn").instance()
		add_child(level)
	elif (Global.level == 2):
		level = preload("res://scenes/Niveles/Nivel2.tscn").instance()
		add_child(level)
	elif (Global.level == 3):
		level = preload("res://scenes/Niveles/Nivel3.tscn").instance()
		add_child(level)
		
	Pared_muerte.global_position = level.get_tree().get_nodes_in_group("PosParedMuerte")[0].global_position
	pass


func _on_Pared_Muerte_body_entered(body):
	if body.get_name() == "frontWheel":
		Jugador = preload("res://scenes/car/car.tscn").instance()
		call_deferred("add_child", Jugador)
		Jugador.global_position = Global.spawnPoint
pass # Replace with function body.
