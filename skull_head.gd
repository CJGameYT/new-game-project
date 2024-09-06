extends Area2D
var speed = 100

const	EXPLOSION = preload("res://explosion.tscn")
func _process(delta: float) -> void:
	translate(Vector2.LEFT * speed * delta)
	position.y += sin(position.x * delta) *2
	


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Projectile"):
		var explosion = EXPLOSION.instantiate()
		explosion.global_position = global_position
		add_sibling(explosion)
		queue_free()
 
