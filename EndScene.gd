extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_EndContainer_gui_input(event):
	if event.is_pressed():
		get_tree().change_scene("res://Credits.tscn") #??????
		print("change scene")
	pass # Replace with function body.
