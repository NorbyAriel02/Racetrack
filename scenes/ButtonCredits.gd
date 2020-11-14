extends Button


func _on_ButtonCredits_pressed():
	var err = get_tree().change_scene("res://Scenes/Credits.tscn")
	if err != OK:
		print("Error al cambiar a escena Credits")
	
	pass # Replace with function body.
