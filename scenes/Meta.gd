extends Area2D
var entro = false

func _ready():
	
	pass 
func _on_Area2D_body_entered(body):
	print ("col" + body.get_name())
	if body.get_name() =="topWheel"||body.get_name() =="backWheel"||body.get_name() == "frontWheel":
		Global.fin_game = true
	
	pass 
