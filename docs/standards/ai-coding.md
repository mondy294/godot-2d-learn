# AI 写代码时的标准

本文件是以后在这个仓库里生成代码的流程约定。命名、语法和注释的细节分别见同目录的 [naming.md](naming.md)、[gdscript-style.md](gdscript-style.md)、[comments.md](comments.md)。目录见 [project-layout.md](project-layout.md)。某一章要留下哪些讲解和示例，见 [../workflow/lesson-materials.md](../workflow/lesson-materials.md)。

## 动笔之前

1. 确认目标是 Godot 4.7 的 GDScript。
2. 如果任务属于某一章，先读 `docs/specs/` 里对应的 spec。
3. 只实现该 spec 的「以后生成示例时要覆盖的点」。
4. 章节里写了「不展开」的内容，就停在那一界。为了让示例跑起来而必须碰到后章概念时，用最小用法，并在注释里标明「第 N 章再展开」。

## 文件怎么落

- 课程示例写到 spec 里的「示例目录」。其下使用 `guide.md`、`README.md`、`scenes/` 和 `scripts/`。第 5 章起再加 `exercises/`。各文件写什么见 [../workflow/lesson-materials.md](../workflow/lesson-materials.md)。
- 正式游戏才改 `scenes/`、`scripts/`、`assets/`。
- 保持 `scenes/main/main.tscn` 可运行。不要把课程场景写成 `project.godot` 的主场景。
- 示例的运行方式是：在仓库根目录执行 `godot --path . res://该场景.tscn`，或在编辑器中打开该场景后运行当前场景。两种方式等价。
- 画面上需要汉字时，使用 `assets/fonts/` 里的字体。没有字体文件时，画面文字用英文或数字，中文说明放在输出面板和 README。

## 示例 README 要写清

- 对应哪一份 spec
- 这个场景演示什么
- 怎么运行
- 运行后应该看到或在输出面板读到什么
- 场景树里哪些节点是必须的

## 代码尺度

- 一个示例场景对应本章的一个关注点。需要两个关注点时拆成两个场景，不要合成一个大演示。
- 遵守文件头注释、静态类型、`@export` / `@onready`、失败时 `push_error`。场景和 `project.godot` 的存盘格式注释见 [comments.md](comments.md)。
- 学习示例默认不声明 `class_name`。
- 输入使用输入映射里的动作名，动作名带章节前缀。映射和 Autoload 的追加方式见 [../workflow/lesson-materials.md](../workflow/lesson-materials.md)，并在示例 README 里逐项写清。
- 不引入与本章无关的插件，不提前做存档、对象池、状态机框架，除非该章 spec 把它们列进了范围。

## 写完之后

- 能打开 Godot 时，运行该示例场景并核对 README 里的预期。
- 把 spec 顶部的「状态」改成 `示例已生成`。
- 在 spec 末尾「示例记录」填上场景路径和日期。
- 不改动无关章节的 spec 和场景。

## 状态用词

spec 的状态只用这四个词：`未开始`、`学习中`、`示例已生成`、`已复习`。
