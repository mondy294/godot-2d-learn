# 目录约定

```
godot-2d-learn/
  project.godot          工程入口
  icon.svg
  scenes/                正式游戏场景
    main/main.tscn       当前主场景，保持可运行
  scripts/               正式游戏脚本，目录与 scenes 对齐
  assets/                正式游戏共用资源
    sprites/ audio/ fonts/ tilesets/ ui/
  lessons/               课程示例。学到某一章再创建 chNN-名称/
  addons/                插件
  docs/                  文档。此目录有 .gdignore，不会进 Godot 导入列表
```

## 放置规则

- 课程示例只放进该章 spec 写明的 `lessons/chNN-名称/`。
- 正式游戏的场景放 `scenes/`，脚本放 `scripts/`。脚本子目录与场景子目录同名，例如 `scenes/player/player.tscn` 对 `scripts/player/player.gd`。
- 只有正式游戏会反复用到的图和声音放 `assets/`。某一章专用的临时素材放该章 lessons 目录里。
- 中文字体文件放 `assets/fonts/`。场景上要显示汉字时，显式使用这里的字体。
- 一个场景只做一件事：一个角色、一个界面、一个关卡，或一个示例。
- 可复用的角色、子弹、按钮做成单独场景，再在别的场景里实例化。
- 不在 `scenes/main/` 里堆积课程实验。主场景用来确认项目还能启动。

## 示例目录内部

```
lessons/ch09-movement/
  guide.md           讲解
  README.md          运行命令和预期结果
  scenes/
  scripts/
  exercises/         第 5 章起，每题一个 exNN-名称/
```

各文件的内容见 `docs/workflow/lesson-materials.md`。运行命令写在该示例的 README。不要为此修改 `project.godot` 的 `run/main_scene`。
