# 习题：循环一帧，再播完一次

## 基础介绍

- 对应第 8 章，练习启动循环帧动画，以及只播一次的动画结束通知。
- 要改 `scripts/once.gd` 的 `_ready`。
- 要改 `scripts/once.gd` 的 `_on_clip_animation_finished`。
- 写完后删掉这两个函数里的 `push_error`。
- 不要改 `scenes/once.tscn`。帧动画名叫 `walk`，短动画名叫 `blink`。信号已经接好。

保存后自动重启：

```bash
tools/rerun-scene.sh res://lessons/ch08-animation/exercises/ex01-once/scenes/once.tscn
```

只打开一次：

```bash
godot --path . res://lessons/ch08-animation/exercises/ex01-once/scenes/once.tscn
```

## 习题场景

- 窗口上方的文字是 `Exercise`。
- 左边是 `Walker`，四帧已经放进名为 `walk` 的帧动画，进场景时不会自己播。
- 右边是 `Gem`，绿色方块。`Clip` 里有一条名为 `blink` 的动画，会把它变淡，进场景时不会自己播。
- `UI/Done` 一开始是空的。
- `blink` 播完的信号已经接到 `_on_clip_animation_finished`。
- 这一课没有输入动作。

## 目标

- 还没写代码时，场景一运行，终端出现「还没有开始播放」。两张图都停着，窗口下方没有字。
- 写完之后，左边的图一直循环换帧。
- 右边的绿色变淡一次后停住。
- 变淡结束时，终端或窗口里能看出这条动画播完了。窗口上的字用英文。
