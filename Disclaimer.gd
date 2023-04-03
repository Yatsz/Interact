extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"



	# result_text.format(Global.global_variable)



func _on_TextureRect_gui_input(event):
	if event.is_pressed():
		get_tree().change_scene("res://World.tscn")
		print("change scene")



