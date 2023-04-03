extends Sprite


func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
			self.visible = not self.visible
			PlayerStats.num_adhd += 1
			print(PlayerStats.num_adhd)
			if PlayerStats.num_adhd >= 3:
				print("Suggestion to get a professional diagnosis for ADHD")

