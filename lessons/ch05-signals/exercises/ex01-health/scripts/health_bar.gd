extends Node2D
## 听到剩余生命后，只更新自己这根血条。
## 挂载：节点 HealthBar（Node2D），需要子节点 Bar（Polygon2D）。
## 章节：ch05 习题

@onready var bar: Polygon2D = $Bar


func _ready() -> void:
	if bar == null:
		push_error("缺少节点 Bar")


func _on_player_health_changed(current_health: int) -> void:
	# 习题：用剩余生命改变 Bar 的宽度或颜色。生命为 0 时要看得出来。
	var ratio := current_health / 3.0
	var left := -150.0
	var right := left + 300.0 * ratio
	bar.polygon = PackedVector2Array(
		[Vector2(left, -16), Vector2(right, -16), Vector2(right, 16), Vector2(left, 16)]
	)
	match current_health:
		0:
			bar.color = Color.RED
		1:
			bar.color = Color.YELLOW
		2:
			bar.color = Color.ORANGE
		3:
			bar.color = Color.GREEN
