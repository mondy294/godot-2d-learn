# Godot 2D 学习

用 Godot 4.7 和 GDScript 学 2D 游戏。这个仓库先把工程、文档和每一章的学习范围定下来。具体代码示例留到学某一章时再生成。

引擎版本：[Godot 4.7.2](https://godotengine.org/download/archive/4.7.2-stable/)（稳定版）。打开方式：启动 Godot，选择「导入」，选中本目录的 `project.godot`。

## 现在就能做的事

运行主场景 `scenes/main/main.tscn`。画面上会看到英文标题。输出面板会打印一行中文。引擎自带字体不含汉字，界面中文放到第 13 章再学。

## 目录

| 路径 | 用途 |
| --- | --- |
| `scenes/`、`scripts/` | 以后的正式游戏。课程示例不要往这里堆 |
| `assets/` | 正式游戏共用的图、声音、字体、瓦片 |
| `lessons/` | 每一章的可运行示例，学到那一章再创建 |
| `addons/` | 以后要用的插件 |
| `docs/specs/` | 各章学习规格：学什么、不学什么 |
| `docs/standards/` | 以后写代码时要遵守的标准 |
| `docs/workflow/` | 人和 AI 一起学某一章时怎么做 |
| `docs/references/` | 术语和官方文档入口 |

文档索引见 [docs/README.md](docs/README.md)。

## 建议的学习顺序

从 [第 0 章](docs/specs/ch00-roadmap.spec.md) 看整条路线，然后按 `docs/specs/` 里的编号往下学。每一章的范围以该章 spec 为准，先不要展开后面的内容。
