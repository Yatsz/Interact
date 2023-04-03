extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var active = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Door_body_entered(body):
	# get_tree().change_scene("res://EndScene.tscn") #??????
	if body==get_node("../Player"):
		active = true
		print("Player in door")
	
func _on_Door_body_exited(body):
	# get_tree().change_scene("res://EndScene.tscn") #??????
	if body==get_node("../Player"):
		active = false


func _input(event):
	# print("change door")
	if event.is_action_released("ui_accept"):
		get_tree().change_scene("res://EndScene.tscn") #??????
		print("change door worked")
