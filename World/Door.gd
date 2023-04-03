extends Area2D

var entered = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _on_Door_body_entered(body):
	print(body.name)
	if body.name=="Player":
		entered = true
	
func _input(event):
	if event.is_action_released("ui_accept") and entered == true:
		if PlayerStats.num_flower < 5:
			PlayerStats.num_adhd += 2
		get_tree().change_scene("res://Mini Game One/Board.tscn")
	# print("getting input")
	




