# 第 2 章示例

对应规格：`docs/specs/ch02-nodes-and-scenes.spec.md`

## 场景

| 场景 | 关注点 |
| --- | --- |
| `scenes/coin.tscn` | 可复用的道具。单独运行它只会看到一枚硬币 |
| `scenes/level.tscn` | 把道具实例化两次，并在终端列出根节点、子节点和实例 |

运行这一课用 `level.tscn`。必须的节点：根节点 `Level`，子节点 `Shelf`，`Shelf` 下的实例 `CoinA` 和 `CoinB`，以及用来对照的 `Mark`。

本章没有改 `project.godot`。

## 运行

在仓库根目录执行：

```
godot --path . res://lessons/ch02-nodes-and-scenes/scenes/level.tscn
```

窗口上方是 `Two coins share one parent`。画面中部是两块金色菱形，下面有一个灰色方块。

终端应出现：

```
第 2 章：下面是 Level 的场景树。
根节点 Level
  子节点 Shelf 相对父节点 (640.0, 360.0)
    实例 CoinA 相对父节点 (-70.0, 0.0) 来自 res://lessons/ch02-nodes-and-scenes/scenes/coin.tscn
      子节点 Gem 相对父节点 (0.0, 0.0)
    实例 CoinB 相对父节点 (70.0, 0.0) 来自 res://lessons/ch02-nodes-and-scenes/scenes/coin.tscn
      子节点 Gem 相对父节点 (0.0, 0.0)
  子节点 Mark 相对父节点 (640.0, 520.0)
  子节点 UI
    子节点 Title
```

只核对这段输出、不需要窗口时：

```
godot --headless --path . --quit-after 1 res://lessons/ch02-nodes-and-scenes/scenes/level.tscn
```

在编辑器中打开 `scenes/level.tscn` 后运行当前场景（F6），和第一条命令是同一件事。不要把这一课写成项目主场景。
