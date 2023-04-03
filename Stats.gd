extends Node

export(int) var max_health = 1 setget set_max_health
var health = max_health setget set_health
var num_adhd = 0
var num_flower = 0

signal no_health
signal health_changed(value)
signal max_health_changed(value)

func add_adhd():
	num_adhd += 1
	print(num_adhd)
	
func set_max_health(value):
	max_health = value
	self.health = min(health, max_health)
	emit_signal("max_health_changed", max_health)

func set_health(value):
	health = value
	emit_signal("health_changed", health)
	if health <= 0:
		emit_signal("no_health")

func _ready():
	self.health = max_health
