extends Node2D



func _on_Timer_timeout():
	PlayerStats.num_adhd += 1
	print("Timeout")
	
	
