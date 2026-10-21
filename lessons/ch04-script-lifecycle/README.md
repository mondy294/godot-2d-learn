# 第 4 章示例

对应规格：`docs/specs/ch04-script-lifecycle.spec.md`

## 场景

| 场景 | 关注点 |
| --- | --- |
| `scenes/life.tscn` | `_ready` 打印子节点名字；`_process` 每帧移动方块 |

必须的节点：根节点 `Life`，子节点 `Dot`，子节点 `UI/Title`。

本章没有改 `project.godot`。

## 运行

在仓库根目录执行：

```
godot --path . res://lessons/ch04-script-lifecycle/scenes/life.tscn
```

窗口上方是 `Chapter 4`。一个红色方块从左向右移动，到右侧后回到左侧。终端只出现一次：

```
第 4 章：_ready 只运行一次，取到子节点 Title。
```

只核对这行输出、不需要窗口时：

```
godot --headless --path . --quit-after 1 res://lessons/ch04-script-lifecycle/scenes/life.tscn
```

方块在移动这件事要看窗口，无界面运行看不出来。

在编辑器中打开 `scenes/life.tscn` 后运行当前场景（F6），和第一条命令是同一件事。不要把这一课写成项目主场景。

## 故意写错节点路径

把 `scripts/life.gd` 里的 `$UI/Title` 改成 `$UI/Missing`，再运行。终端会先后出现两段错误：

```
ERROR: Node not found: "UI/Missing" (relative to "/root/Life").
ERROR: 缺少节点 UI/Title
```

第一段是 Godot 按 `$` 的路径找不到节点。第二段是脚本发现 `title` 仍为空，调用 `push_error` 打出的说明。对照完把路径改回 `$UI/Title`。
