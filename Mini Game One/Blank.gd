extends Sprite


func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
			self.visible = not self.visible
			MiniGameOneStats.count += 1
			if MiniGameOneStats.count == 13:
				get_node("../Panel11").visible = true
				get_node("../ResultsButton").visible = true
				

