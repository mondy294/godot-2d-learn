extends Node2D
## 确认「运行当前场景」会执行这一课，而不是项目主场景。
## 挂载：场景根节点 EditorHello（Node2D）。
## 章节：ch01

func _ready() -> void:
	# _ready 的调用时机在第 4 章再展开。这里只用它在场景就绪后打出一行可辨认的中文。
	print("第 1 章：当前场景已运行。这行字来自 lessons/ch01-editor。")
