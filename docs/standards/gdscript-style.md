# GDScript 风格

以 Godot 4.7 的 GDScript 为准，缩进用 Tab。官方风格指南见 `docs/references/official-links.md`。

## 基本要求

- 变量、参数、返回值写上类型。暂时说不清类型时用具体的 `Variant` 并在旁边说明原因，不要省掉类型假装它是动态脚本。
- 节点引用用 `@onready`，并写明节点路径。导出给检查器调节的数值用 `@export`。
- 会在多处使用的数字提取为常量或 `@export`。速度、重力、跳力属于这类数值。
- 访问节点或资源失败时调用 `push_error`，写明缺的是哪个路径。不要用空的 `pass` 把失败吃掉。
- 物理移动放在 `_physics_process`。只跟显示有关、不参与碰撞的变化才放在 `_process`。
- 资源路径使用 `res://`。用户存档使用 `user://`，这个区别在第 17 章学，在那之前不要把进度写进 `res://`。
- 学习示例默认不写 `class_name`。全局类名会在整个项目里可见，示例一多就容易撞名。某一章如果就是在学 `class_name`，可以声明，并在该课 README 里登记名字。
- 一个脚本只承担一个主要职责。角色移动、计分、菜单切换分成不同脚本。
- 信号用 `health_changed.emit(current_health)` 这种写法连接和发出。

## 推荐的脚本骨架

```gdscript
extends CharacterBody2D
## 负责平面移动和跳跃。
## 挂载：CharacterBody2D，需要子节点 CollisionShape2D。
## 章节：ch09

const GRAVITY: float = 980.0

@export var move_speed: float = 240.0

func _physics_process(delta: float) -> void:
	velocity.y += GRAVITY * delta
	move_and_slide()
```

## 遇到旧教程时改写成这样

很多中文教程仍是 Godot 3。本仓库按下面的写法生成代码。

| 旧教程里常见的写法 | 本仓库使用 |
| --- | --- |
| `KinematicBody2D` | `CharacterBody2D` |
| `move_and_slide(velocity)` | 先改 `velocity`，再调用 `move_and_slide()` |
| `export var speed = 100` | `@export var speed: float = 100.0` |
| `onready var sprite = $Sprite` | `@onready var sprite: Sprite2D = $Sprite` |
| `yield(tree, "idle_frame")` | `await get_tree().process_frame` |
| `emit_signal("died")` | `died.emit()` |
| `connect("body_entered", self, "_on_body_entered")` | `body_entered.connect(_on_body_entered)` |
| `rand_range(a, b)` | `randf_range(a, b)` |
| `TileMap` 的旧格子 API | `TileMapLayer` |
| `instance()` | `instantiate()` |
| `change_scene("res://x.tscn")` | `get_tree().change_scene_to_file("res://x.tscn")` |
| `OS.get_ticks_msec()` 一类 OS 杂项 | 优先 `Time`、`DisplayServer` 等 Godot 4 对应类型 |

不确定某个 API 属于哪一版时，以 Godot 4.7 文档为准，不要沿用教程页面上的旧片段。
