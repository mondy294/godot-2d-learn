# 第 5 章示例

对应规格：`docs/specs/ch05-signals.spec.md`

## 场景

| 场景 | 关注点 |
| --- | --- |
| `scenes/signals.tscn` | `Beacon` 发出自定义信号 `lit_changed`，`Lamp` 收到后改变方块颜色 |

必须的节点：`Beacon`、`Lamp`、`Lamp/Bulb`、`UI/PingButton`。

两条连接都在场景文件末尾，用编辑器的方式保存：

- `UI/PingButton` 的 `pressed` → `Beacon._on_ping_button_pressed`
- `Beacon` 的 `lit_changed` → `Lamp._on_beacon_lit_changed`

这一课没有用代码里的 `connect`。两个节点都摆在场景里，连接写进 `[connection]` 就能直接看见。运行中才生成的节点，才需要在代码里 `lit_changed.connect(_on_beacon_lit_changed)`。

本章没有改 `project.godot`。

## 运行

在仓库根目录执行：

```
godot --path . res://lessons/ch05-signals/scenes/signals.tscn
```

窗口上方是 `Chapter 5`，中央是一块灰色方块，下面有按钮 `Ping`。用鼠标点这个按钮。

点第一次，方块变成金色，终端出现：

```
第 5 章：灯收到 lit_changed，点亮 true。
```

再点一次，方块变回灰色，终端出现：

```
第 5 章：灯收到 lit_changed，点亮 false。
```

还没点击时，终端没有这两行。无界面运行看不出颜色变化，这一课需要窗口和鼠标。

在编辑器中打开 `scenes/signals.tscn` 后运行当前场景（F6），和上面的命令是同一件事。不要把这一课写成项目主场景。
