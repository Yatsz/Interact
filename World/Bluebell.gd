extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Bluebell_body_entered(body):
	if body.name=="Player":
		PlayerStats.num_flower += 1
		print("flowers: " + str(PlayerStats.num_flower))
		self.get_child(0).visible = false
		self.remove_and_skip()

