# 第 7 章示例

对应规格：`docs/specs/ch07-sprites-and-transforms.spec.md`

## 场景

| 场景 | 关注点 |
| --- | --- |
| `scenes/stage.tscn` | 同一张图的绘制顺序、翻转、半透明，以及子节点跟着父节点 |

必须的节点：根节点 `Stage`，子节点 `Back`、`Front`、`Carrier/Rider`。图是 `sprites/mark.png`。

本章没有改 `project.godot`。

## 运行

在仓库根目录执行：

```
godot --path . res://lessons/ch07-sprites-and-transforms/scenes/stage.tscn
```

窗口上方是 `Chapter 7`。

- 左侧两张放大的图叠在一起。后面那张像素块清楚，前面那张被水平翻转，并且半透明
- 右侧那张只显示左半边，挂在一个旋转、左右摆动的父节点上，所以会跟着转
- 场景里还有一个 `Hidden`，`visible` 是关的，窗口里看不到
- 终端没有这章的打印

在编辑器中打开 `scenes/stage.tscn` 后运行当前场景（F6），和上面的命令是同一件事。不要把这一课写成项目主场景。
