extends Node2D

func _ready():
	await animation_finished
	queue_free()
	
func _on_animation_finished() -> void:
	pass 
