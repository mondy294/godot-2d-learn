extends Node2D
## 用输入动作移动方块，并用确认动作打出一行字。
## 挂载：场景根节点 Move（Node2D），需要子节点 Token（Polygon2D）。
## 章节：ch06

## 方块速度，单位是像素/秒。
const MOVE_SPEED: float = 240.0

@onready var token: Polygon2D = $Token


func _ready() -> void:
	# 节点进入场景树后，引擎调用一次。
	if token == null:
		push_error("缺少节点 Token")


func _physics_process(delta: float) -> void:
	# 引擎按固定物理步长反复调用。按住方向要每次都问。这一章还没有碰撞，第 9 章再让角色落地。
	if token == null:
		return
	var direction := Input.get_vector("ch06_left", "ch06_right", "ch06_up", "ch06_down")
	token.position += direction * MOVE_SPEED * delta


func _unhandled_input(event: InputEvent) -> void:
	# 有输入事件、且还没被别的控件吃掉时，引擎调用一次。is_echo 用来跳过按键按住后的重复触发。
	if event.is_echo():
		return
	if event.is_action_pressed("ch06_accept"):
		print("第 6 章：确认动作被按下。")
		get_viewport().set_input_as_handled()
