# 第 3 章示例

对应规格：`docs/specs/ch03-gdscript-basics.spec.md`

## 场景

| 场景 | 关注点 |
| --- | --- |
| `scenes/basics.tscn` | 打印整数、小数、布尔、字符串、坐标，以及分支、循环和字典查询的结果 |

必须的节点：根节点 `Basics`，子节点 `UI/Title`。

本章没有改 `project.godot`。

## 运行

在仓库根目录执行：

```
godot --path . res://lessons/ch03-gdscript-basics/scenes/basics.tscn
```

窗口中央是 `Chapter 3`。终端应出现：

```
第 3 章：整数 15，小数 1.5，是否通过 true。
第 3 章：评价 pass，坐标 (12.0, 8.0)。
第 3 章：字典里 coin 的数量是 2。
第 3 章：数组加总是 6。
第 3 章：查找 potion 的结果是 <null>。
```

只核对这段输出、不需要窗口时：

```
godot --headless --path . --quit-after 1 res://lessons/ch03-gdscript-basics/scenes/basics.tscn
```

在编辑器中打开 `scenes/basics.tscn` 后运行当前场景（F6），和第一条命令是同一件事。不要把这一课写成项目主场景。
