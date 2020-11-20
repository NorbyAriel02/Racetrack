extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	leer_fichero_csv()
	#escribir_fichero_csv()
	pass # Replace with function body.

func _on_ButtonMenuLS_pressed():
	get_tree().change_scene("res://scenes/menu/Menu.tscn")
	pass # Replace with function body.
func WriteFile(var path):
	var lineas = [[1, 99, 99, 1],[2, 99, 99, 0],[3, 99, 99, 0]]
	var escribir = File.new() 
	escribir.open(path, File.WRITE) 
	for l in lineas:
		escribir.store_csv_line(l, '|')
	
	escribir.close()
	pass
func leer_fichero_csv():    
	var fichero = File.new()
	var path = OS.get_user_data_dir() + "/datos.txt"
	if !fichero.file_exists(path):
		WriteFile(path)
		
	fichero.open(path, File.READ)
	while not fichero.eof_reached():
		var ln = fichero.get_line().split("|")
		if(ln[0] != ""):
			if(ln[3] == "0"):
				var btn = get_node("ButtonPlay"+ln[0])
				btn.set("visible", false)
			pass
			if(ln[1] != "-1"):
				var lbl = get_node("LabelRanked"+ln[0])
				lbl.set("text", ln[1])
			pass
		pass
	
	fichero.close()
pass


func _on_ButtonPlay1_pressed():
	Global.level = 1
	get_tree().change_scene("res://scenes/Game/Game.tscn")
	pass # Replace with function body.


func _on_ButtonPlay2_pressed():
	Global.level = 2
	get_tree().change_scene("res://scenes/Game/Game.tscn")
	pass # Replace with function body.


func _on_ButtonPlay3_pressed():
	Global.level = 3
	get_tree().change_scene("res://scenes/Game/Game.tscn")
	pass # Replace with function body.
