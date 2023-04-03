extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _ready():
	text = "You have shown " + str(PlayerStats.num_adhd) + " indicators of ADHD"
