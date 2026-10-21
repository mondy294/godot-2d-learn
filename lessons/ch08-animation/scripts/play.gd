extends Node2D
## 循环播放帧动画，并在一段短动画结束时留下痕迹。
## 挂载：场景根节点 Play（Node2D），需要子节点 Clip（AnimationPlayer）和 UI/Done（Label）。
## 章节：ch08

@onready var clip: AnimationPlayer = $Clip
@onready var done: Label = $UI/Done


func _ready() -> void:
	# 节点进入场景树后，引擎调用一次。
	if clip == null or done == null:
		push_error("缺少节点 Clip 或 UI/Done")
		return
	# play 的参数是动画库里的名字。这段动画不循环。
	clip.play("blink")


func _on_clip_animation_finished(anim_name: StringName) -> void:
	# 不循环的动画播完时，AnimationPlayer 发出 animation_finished，引擎因此调用这里。
	print("第 8 章：%s 播完了。" % anim_name)
	done.text = "Done"


func mark_played() -> void:
	# 动画轨道走到指定时间时调用，不是引擎每帧调用。
	print("第 8 章：轨道调用了 mark_played。")
