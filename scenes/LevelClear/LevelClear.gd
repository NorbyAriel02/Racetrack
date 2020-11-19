extends Control

onready var tiempo = get_node("LabelTimeLevel")
onready var colectables = get_node("LabelColectables")
onready var nivel = get_node("LabelLevel")
onready var ranked = get_node("LabelRanked")
var tardo = 0
var win = false


# Called when the node enters the scene tree for the first time.
func _ready():
	Actualizar_csv()
	Ranked()
	tardo = Global.tiempo
	tiempo.text =("Tiempo " + str (tardo))
	Global.tiempo = 0
	Global.fin_game = false
	nivel.text = "Level " + str(Global.level)
	colectables.text = "Colectables " + str(Global.colectables)
	Global.colectables = 0
	pass 

func _on_ButtonMenuLS_pressed():
	get_tree().change_scene("res://scenes/levelSelection/LevelSelection.tscn")
	pass # Replace with function body.

func _on_ButtonPlay1_pressed():
	
	if(win == true):
		Global.level += 1
		print("Pasa por win")
	else:
		print("NO NO NO Pasa por win")
	pass
	
	if (Global.level > 3):
		get_tree().change_scene("res://scenes/levelSelection/LevelSelection.tscn")
	else:
		get_tree().change_scene("res://scenes/Game/Game.tscn")
	pass # Replace with function body.
	
func Ranked():
	if(int(Global.tiempo) < 16 && int(Global.colectables) > 3):
		ranked.text = "A"
	elif(int(Global.tiempo) < 20 &&  int(Global.tiempo) > 2):
		ranked.text = "B"
	else:
		ranked.text = "C"
	pass

func Actualizar_csv():    
	var fichero = File.new()
	var lineas = [[1, 99, 99, 1],[2, 99, 99, 0],[3, 99, 99, 0]]
	var a = 0
	fichero.open("res://datos.csv", File.READ)
	while not fichero.eof_reached():
		if(a == 3):
			break
		var ln = fichero.get_line().split("|")
		lineas[a] = ln
		if(int(ln[0]) == int(Global.level)):
			if(int(ln[2]) > int(Global.tiempo)):
				win = true
			pass			
			if(int(ln[1]) > int(Global.tiempo)):
				lineas[a][1] = str(Global.tiempo)
			else:
				lineas[a][1] = ln[1]
			pass
		pass
		
		if(int(ln[0]) == int(Global.level+1)):			
			lineas[a][3] = "1"
		pass
		a = (a + 1)
	pass
	fichero.close()
	
	var escribir = File.new() 
	escribir.open("res://datos.csv", File.WRITE) 
	for l in lineas:
		escribir.store_csv_line(l, '|')
	
	escribir.close()
pass
