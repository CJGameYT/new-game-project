extends AnimatedSprite2D

func _ready():
	await animation_finished
	queue_free()

func _on_animation_finished() -> void:
	if area.is_in_group("projectile"):
		queue_free()
