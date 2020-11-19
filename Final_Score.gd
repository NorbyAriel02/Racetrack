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
	get_tree().change_scene("res://scenes/Nivel1/Nivel1.tscn")
	pass # Replace with function body.
