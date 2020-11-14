extends Button


func _on_ButtonLevelSelection_pressed():
	var err = get_tree().change_scene("res://Scenes/LevelSelection.tscn")
	if err != OK:
		print("Error al cambiar a escena LevelSelection")
	
	pass # Replace with function body.
