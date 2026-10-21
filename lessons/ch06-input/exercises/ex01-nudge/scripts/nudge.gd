extends Node2D
## 习题：用已经定义好的动作移动方块，并在确认时打印。
## 挂载：场景根节点 Nudge（Node2D），需要子节点 Token（Polygon2D）。
## 章节：ch06 习题

const MOVE_SPEED: float = 240.0

@onready var token: Polygon2D = $Token

var _reminded_move: bool = false


func _ready() -> void:
	# 节点进入场景树后，引擎调用一次。
	if token == null:
		push_error("缺少节点 Token")


func _physics_process(delta: float) -> void:
	# 引擎按固定物理步长反复调用。习题：按住方向时移动 Token。速度用 MOVE_SPEED，单位是像素/秒。
	if not _reminded_move:
		push_error("习题：还没有按住方向时移动方块")
		_reminded_move = true


func _unhandled_input(event: InputEvent) -> void:
	# 有输入事件、且还没被别的控件吃掉时，引擎调用一次。习题：确认动作按下时打印一行中文。按住导致的重复触发不要再打印。
	if event.is_action_pressed("ch06_accept"):
		push_error("习题：还没有在确认时打印一行字")
