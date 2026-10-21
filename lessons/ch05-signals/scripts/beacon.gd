extends Node
## 按钮按下时发出「灯是否点亮」这个事实，自己不改灯的样子。
## 挂载：节点 Beacon（Node）。按钮的 pressed 在场景里连到 _on_ping_button_pressed。
## 章节：ch05

## 灯的亮灭被翻转时发出。参数是翻转之后的状态。
signal lit_changed(is_lit: bool)

var _is_lit: bool = false


func _on_ping_button_pressed() -> void:
	_is_lit = not _is_lit
	lit_changed.emit(_is_lit)
