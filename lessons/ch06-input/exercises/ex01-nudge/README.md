# 习题：用动作推动方块

## 基础介绍

- 对应第 6 章，练习用动作名读取输入。
- 要改 `scripts/nudge.gd` 的 `_physics_process`。
- 要改 `scripts/nudge.gd` 的 `_unhandled_input`。
- 写完后删掉这两个函数里的 `push_error`。
- 不要改 `scenes/nudge.tscn`。
- 不要在脚本里写按键码。动作已经在 `project.godot` 里。

保存后自动重启：

```bash
tools/rerun-scene.sh res://lessons/ch06-input/exercises/ex01-nudge/scenes/nudge.tscn
```

只打开一次：

```bash
godot --path . res://lessons/ch06-input/exercises/ex01-nudge/scenes/nudge.tscn
```

## 习题场景

- 窗口上方的文字是 `Exercise`。
- 窗口中央有一个金色方块，节点是 `Token`。
- 根节点 `Nudge` 挂着 `scripts/nudge.gd`。
- 方向动作是 `ch06_left`、`ch06_right`、`ch06_up`、`ch06_down`。
- 确认动作是 `ch06_accept`。
- 键盘对应 `A` `D` `W` `S` 或方向键，确认是空格。
- 这一课没有信号连接。

## 目标

- 还没写代码时，场景一运行，终端出现一次「还没有按住方向时移动方块」。方块停在原地。
- 按下空格时，终端出现「还没有在确认时打印一行字」。
- 写完之后，按住 `A` `D` `W` `S` 或方向键，方块朝对应方向移动。
- 按下空格的那一下，终端打印一行你写的中文。
- 按住空格不松手，这行中文不会连着刷出来。
