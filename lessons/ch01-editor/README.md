# 第 1 章示例

对应规格：`docs/specs/ch01-editor.spec.md`

## 场景

| 场景 | 关注点 |
| --- | --- |
| `scenes/editor_hello.tscn` | 只运行当前场景时，输出一行可辨认的中文 |

必须的节点：根节点 `EditorHello`，子节点 `UI/Title`。

本章没有改 `project.godot`。

## 主场景

路径：`res://scenes/main/main.tscn`

在仓库根目录运行整个项目：

```
godot --path .
```

窗口中央是 `Godot 2D`。终端应出现：

```
Godot 2D 学习项目已启动。请从 docs/README.md 开始。
```

## 只运行当前场景

在仓库根目录执行：

```
godot --path . res://lessons/ch01-editor/scenes/editor_hello.tscn
```

窗口中央是 `Chapter 1`。终端应出现：

```
第 1 章：当前场景已运行。这行字来自 lessons/ch01-editor。
```

只核对这行输出、不需要窗口时：

```
godot --headless --path . --quit-after 1 res://lessons/ch01-editor/scenes/editor_hello.tscn
```

在编辑器中打开 `scenes/editor_hello.tscn` 后运行当前场景（F6），和上面第一条命令是同一件事。不要把这一课写成项目主场景。
