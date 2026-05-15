extends Node2D

const RADIUS := 30.0
const COLOR := Color(0.81, 0.813, 0.953, 1.0)

func _draw() -> void:
	draw_circle(Vector2.ZERO, RADIUS, COLOR)
