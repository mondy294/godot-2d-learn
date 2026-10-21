extends Node2D
## 让同一张图以不同绘制顺序出现，并让子精灵跟着父节点动。
## 挂载：场景根节点 Stage（Node2D），需要子节点 Carrier。
## 章节：ch07

## 父节点左右摆动的幅度，单位是像素。
const SWING: float = 90.0

@onready var carrier: Node2D = $Carrier

var _time: float = 0.0


func _ready() -> void:
	# 节点进入场景树后，引擎调用一次。
	if carrier == null:
		push_error("缺少节点 Carrier")


func _process(delta: float) -> void:
	# 引擎每一帧调用一次。这里只改显示，没有碰撞。
	if carrier == null:
		return
	_time += delta
	# sin 的结果在 -1 和 1 之间来回变，用来做左右摆动。
	carrier.position.x = 860.0 + sin(_time) * SWING
	# rotation_degrees 的单位是角度。父节点一转，子节点的局部位置也跟着转。
	# carrier.rotation_degrees = _time * 40.0
