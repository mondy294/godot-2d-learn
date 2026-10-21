# 和 AI 一起学某一章

每一章的 spec 只规定范围。学到那一章时，按 [lesson-materials.md](lesson-materials.md) 生成讲解、运行说明和可运行示例。代码写法仍遵守 `docs/standards/ai-coding.md`。

## 开始一章时可以这样说

> 按 docs/workflow/lesson-materials.md，学习 docs/specs/ch06-input.spec.md。只做这一章。

把章节文件名换成要学的那一章。

## 生成时希望得到的结果

- `lessons/chNN-名称/guide.md`：这一章的讲解
- 同目录的 `README.md`：运行命令和预期结果
- `scenes/` 与 `scripts/`：可单独运行的示例
- 对应 spec 的状态变成 `示例已生成`，末尾记下场景路径

## 学的时候保持的界限

- 先读该章「不展开」，那些内容留到对应章节。
- 示例跑通后，用 spec 里的「自测」对照一遍，再进入下一章。
- 想改正式游戏时单独说明。否则改动应留在 `lessons/`。

## 状态

| 状态 | 含义 |
| --- | --- |
| 未开始 | 只有 spec，还没有示例 |
| 学习中 | 正在写或正在读这一章 |
| 示例已生成 | `lessons/` 里已经有对应该章的场景 |
| 已复习 | 按自测走过一遍，暂时不再改这一章 |
