extends Node
## 受伤时发出剩余生命。血条长什么样由听信号的节点决定。
## 挂载：节点 Player（Node）。HurtButton 的 pressed 在场景里连到 _on_hurt_button_pressed。
## 章节：ch05 习题

## 剩余生命变化时发出。参数是变化之后的生命值。
signal health_changed(current_health: int)

var health: int = 3


func _on_hurt_button_pressed() -> void:
	# 习题：把 health 减 1，并且不要低于 0，然后发出 health_changed，参数是剩余生命。
	health -= 1
	if health < 0:
		health = 0
	health_changed.emit(health)