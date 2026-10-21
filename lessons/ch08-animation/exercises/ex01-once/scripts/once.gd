extends Node2D
## 习题：让帧动画循环，并在短动画播完时留下痕迹。
## 挂载：场景根节点 Once（Node2D），需要子节点 Walker、Clip、UI/Done。
## 章节：ch08 习题

@onready var walker: AnimatedSprite2D = $Walker
@onready var clip: AnimationPlayer = $Clip
@onready var done: Label = $UI/Done


func _ready() -> void:
	# 节点进入场景树后，引擎调用一次。
	if walker == null or clip == null or done == null:
		push_error("缺少节点 Walker、Clip 或 UI/Done")
		return
	# 习题：让 Walker 循环播放 walk，并让 Clip 播放一次 blink。
	push_error("习题：还没有开始播放")


func _on_clip_animation_finished(anim_name: StringName) -> void:
	# 不循环的动画播完时，AnimationPlayer 发出 animation_finished，引擎因此调用这里。
	# 习题：在画面或终端留下播完了的痕迹。参数 anim_name 是播完的动画名。
	push_error("习题：还没有在播完时留下痕迹")
