extends Node2D

onready var timer = get_node("Timer")
onready var UI_tiempo = get_node("UI/Tiempo")
onready var Score = get_node("UI_Final/Score_tiempo")
onready var icono = get_node("icon")
onready var items = get_node("UI_Final/Items_agarrados")
var numero = 0

func _ready():
	timer.set_wait_time(1)
	timer.start()
	pass
	
func _on_Timer_timeout():
	numero +=1
	UI_tiempo.text = ("Tiempo: " + str(numero))
	if Global.fin_game == true:
		timer.stop()
		Score.text =("Score: " + str (numero))
		Global.tiempo = numero
		get_tree().change_scene("res://scenes/LevelClear/LevelClear.tscn")
	pass
