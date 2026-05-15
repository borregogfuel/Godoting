extends Node2D

const RADIUS := 30.0
const COLOR := Color(0.0, 1.0, 0.0)

func _draw() -> void:
	draw_circle(Vector2.ZERO, RADIUS, COLOR)
