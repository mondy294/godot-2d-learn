# 课程示例

每一章的可运行示例以后放在这里，目录名已经写在对应 spec 的「示例目录」里。初始化时不预建各章文件夹，避免空目录和以后的示例混在一起。

约定：

- 路径形如 `lessons/ch06-input/guide.md`、`README.md`、`scenes/` 和 `scripts/`
- `guide.md` 是讲解，`README.md` 是运行命令和预期结果。各写什么见 `docs/workflow/lesson-materials.md`
- 在仓库根目录执行 `godot --path . res://该场景.tscn`，或在编辑器中运行当前场景
- 不把示例改成 `project.godot` 里的主场景

正式游戏仍放在仓库根部的 `scenes/` 和 `scripts/`。
