# 习题：叠图并让子图跟着走

## 基础介绍

- 对应第 7 章，练习绘制顺序和父节点的局部坐标。
- 要改 `scripts/stack.gd` 的 `_ready`。
- 要改 `scripts/stack.gd` 的 `_process`。
- 写完后删掉这两个函数里的 `push_error`。
- 不要改 `scenes/stack.tscn`。
- 不要改 `Rider` 的 `position`。它已经是 `Carrier` 的子节点。

保存后自动重启：

```bash
tools/rerun-scene.sh res://lessons/ch07-sprites-and-transforms/exercises/ex01-stack/scenes/stack.tscn
```

只打开一次：

```bash
godot --path . res://lessons/ch07-sprites-and-transforms/exercises/ex01-stack/scenes/stack.tscn
```

## 习题场景

- 窗口上方的文字是 `Exercise`。
- 左侧有两张叠在一起的图，节点是 `Back` 和 `Front`。`Front` 偏蓝。
- 右侧有一个父节点 `Carrier`，它的子节点 `Rider` 是同一张图，在父节点下方。
- 根节点 `Stack` 挂着 `scripts/stack.gd`。
- 这一课没有信号，也没有输入动作。

## 目标

- 还没写代码时，场景一运行，终端出现「还没有让 Front 画在 Back 前面」和「还没有让父节点带着子图移动」。图都停着。
- 写完之后，偏蓝的 `Front` 画在 `Back` 前面，能盖住重叠的部分。
- `Carrier` 左右来回移动。`Rider` 跟着移动，始终在父节点的局部下方。
- 脚本里没有给 `Rider` 单独改 `position`。
