extends Node2D

onready var tiempo = get_node("UI_FINAL/Tiempo")
var tardo = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	tardo = Global.tiempo
	
	tiempo.text =("Tiempo " + str (tardo))
	Global.tiempo = 0
	Global.fin_game = false	
	pass 

func _on_TextureButton_button_down():
	get_tree().change_scene("res://scenes/Nivel1.tscn")
	pass


func _on_LS_button_down():
	get_tree().change_scene("res://scenes/LevelSelection/LevelSelecion.tscn")
	pass 


func _on_SN2_button_down():
	get_tree().change_scene("res://scenes/Niveles/Nivel-2.tscn")
	pass 
