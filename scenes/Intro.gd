extends Node2D
onready var move_anim = get_node("AnimationPlayer")
onready var timer = get_node("Timer")
func _ready():
	move_anim.play("Entrada3")
	timer.set_wait_time(7)
	timer.start()
	pass
func _on_Timer_timeout():
	get_tree().change_scene("res://scenes/Menu.tscn")
	pass
