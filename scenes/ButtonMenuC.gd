extends Button


func _on_ButtonMenuC_pressed():
	var err = get_tree().change_scene("res://Scenes/Menu.tscn")
	if err != OK:
		print("Error al cambiar a escena Menu")
	
	pass # Replace with function body.
