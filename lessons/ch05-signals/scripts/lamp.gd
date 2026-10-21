extends Node2D
## 听到灯的状态变化后，只改自己这盏灯的颜色。
## 挂载：节点 Lamp（Node2D），需要子节点 Bulb（Polygon2D）。
## 章节：ch05

@onready var bulb: Polygon2D = $Bulb


func _ready() -> void:
	if bulb == null:
		push_error("缺少节点 Bulb")


func _on_beacon_lit_changed(is_lit: bool) -> void:
	if bulb == null:
		push_error("缺少节点 Bulb")
		return
	# 亮和灭是这盏灯自己的外观。发信号的节点不需要知道这个颜色。
	# 三元表达式：is_lit 为真时取前一个颜色，否则取后一个。和第 3 章的 if/else 是同一件事。
	bulb.color = Color(0.95, 0.76, 0.22) if is_lit else Color(0.35, 0.38, 0.45)
	print("第 5 章：灯收到 lit_changed，点亮 %s。" % is_lit)
