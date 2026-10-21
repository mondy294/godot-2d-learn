# 第 8 章示例

对应规格：`docs/specs/ch08-animation.spec.md`

## 场景

| 场景 | 关注点 |
| --- | --- |
| `scenes/play.tscn` | 帧动画循环，以及一段只播一次的动画在结束时留下痕迹 |

两种节点都在这个场景里：

- `Walker`（`AnimatedSprite2D`）负责换图。走路要一直重复，所以用帧动画并循环。
- `Clip`（`AnimationPlayer`）负责按时间把 `Gem` 变淡，并在中途调用函数。开门这种播完就停的变化用它，结束时听 `animation_finished`。

必须的节点：根节点 `Play`，子节点 `Walker`、`Gem`、`Clip`、`UI/Done`。

本章没有改 `project.godot`。

## 运行

在仓库根目录执行：

```
godot --path . res://lessons/ch08-animation/scenes/play.tscn
```

窗口上方是 `Chapter 8`。左边的图一直在换帧。右边的绿色大约一秒内变淡。

终端先后出现：

```
第 8 章：轨道调用了 mark_played。
第 8 章：blink 播完了。
```

变淡结束后，窗口下方出现 `Done`。

在编辑器中打开 `scenes/play.tscn` 后运行当前场景（F6），和上面的命令是同一件事。不要把这一课写成项目主场景。
