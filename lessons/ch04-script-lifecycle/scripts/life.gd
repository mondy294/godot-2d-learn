extends Node2D
## 在 _ready 里取一次子节点，在 _process 里持续移动方块。
## 挂载：场景根节点 Life（Node2D），需要子节点 UI/Title 和 Dot。
## 章节：ch04

## 方块水平速度，单位是像素/秒。
const SLIDE_SPEED: float = 200.0

@onready var title: Label = $UI/Title
@onready var dot: Polygon2D = $Dot


func _ready() -> void:
	if title == null:
		push_error("缺少节点 UI/Title")
		return
	print("第 4 章：_ready 只运行一次，取到子节点 %s。" % title.name)
	if dot == null:
		push_error("缺少节点 Dot")


func _process(delta: float) -> void:
	# 只改显示位置，不参与碰撞，所以放在 _process。碰到物体的移动在第 9 章再写。
	if dot == null:
		return
	dot.position.x += SLIDE_SPEED * delta
	if dot.position.x > 1100.0:
		dot.position.x = 180.0
