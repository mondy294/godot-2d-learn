# 命名

名字要能看出职责。Godot 里节点名会变成节点路径，改名会牵连场景引用，所以第一次就起清楚。

## 文件和目录

- 目录、脚本、场景、资源文件用 `snake_case`：`player.gd`、`main_menu.tscn`、`hit.wav`。
- 课程目录用 spec 里写死的名字，例如 `lessons/ch06-input/`。
- 场景文件名和它的根节点职责一致：`player.tscn` 的根节点叫 `Player`。

## 代码

- 变量、函数、信号、参数：`snake_case`，例如 `move_speed`、`take_damage`、`health_changed`。
- 常量：`CONSTANT_CASE`，例如 `MAX_HEALTH`。
- 类名（仅在确实需要 `class_name` 时）：`PascalCase`。
- 只在脚本内部使用的函数和变量加下划线前缀：`_update_facing`。
- 布尔名用 `is_`、`has_`、`can_` 这类可读前缀：`is_on_floor`。

## 节点

- 节点名用 `PascalCase`：`Player`、`HealthBar`、`SpawnPoint`。
- 同类型只有一个、职责就是该类型本身时，可以用类型名：`Camera2D`、`CollisionShape2D`。
- 有多个同类节点时，名字写出差别：`GroundShape`、`HurtboxShape`。

## 信号和输入

- 自定义信号用已经发生或状态变化来命名：`died`、`score_changed`、`dialogue_finished`。
- 引擎自带信号保持原名，例如 `body_entered`。
- 输入映射里的动作用 `snake_case`：`move_left`、`jump`、`pause`。脚本里只使用这些动作名，不直接写按键码，除非该示例就是在对比两种写法。

## 组

- 组名用 `snake_case`：`enemies`、`hurtbox`。
- 一个组只表示一种查询用途。
