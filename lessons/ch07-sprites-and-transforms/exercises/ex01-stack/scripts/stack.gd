extends Node2D
## 习题：让一张图画在另一张前面，并让子图跟着父节点移动。
## 挂载：场景根节点 Stack（Node2D），需要子节点 Back、Front、Carrier。
## 章节：ch07 习题

@onready var back: Sprite2D = $Back
@onready var front: Sprite2D = $Front
@onready var carrier: Node2D = $Carrier

var _reminded: bool = false


func _ready() -> void:
	# 节点进入场景树后，引擎调用一次。
	if back == null or front == null or carrier == null:
		push_error("缺少节点 Back、Front 或 Carrier")
		return
	# 习题：让 Front 画在 Back 前面。两张图已经叠在一起。
	push_error("习题：还没有让 Front 画在 Back 前面")


func _process(delta: float) -> void:
	# 引擎每一帧调用一次。
	if carrier == null:
		return
	# 习题：让 Carrier 左右移动。不要改它的子节点 Rider。
	if not _reminded:
		push_error("习题：还没有让父节点带着子图移动")
		_reminded = true
