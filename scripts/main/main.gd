extends Node2D
## 项目入口，用来确认仓库能被 Godot 打开并运行。
## 挂载：场景根节点 Main（Node2D）。
## 章节：项目初始化。课程示例写到 lessons/，不要堆在这个脚本里。

func _ready() -> void:
	# 输出面板能直接显示中文。画面上的 Label 要等导入字体后才能稳定显示汉字。
	print("Godot 2D 学习项目已启动。请从 docs/README.md 开始。")
