# 第 3 章：GDScript 基础

- 状态：示例已生成
- 前置：第 1 章
- 示例目录：`lessons/ch03-gdscript-basics/`

## 学完应该能做什么

用带类型的 GDScript 写变量、常量、函数、条件、循环、数组和字典，并在输出面板看见结果。

## 本章要认识的内容

- `int`、`float`、`bool`、`String`、`Vector2` 这些马上会用到的类型
- 函数的参数和返回值类型
- `if`、`for`、数组、字典
- 常量、枚举，以及「没有值」时的 `null` 意识
- 缩进使用 Tab，写法遵守 `docs/standards/gdscript-style.md`

## 本章不展开

- 把脚本挂到节点上之后的生命周期（第 4 章）
- 信号、输入、物理
- 类的继承体系，除了脚本第一行的 `extends` 先看见即可

## 以后生成示例时要覆盖的点

- 一个不依赖玩法的脚本，运行后把几种类型的计算结果打印出来
- 示例里同时出现函数、分支、循环和一次字典查询
- 注释按 `docs/standards/comments.md`，不逐行翻译

## 自测

能改一个数字或一个分支条件，并预测输出面板下一行会变成什么。

## 示例记录

- 场景：`res://lessons/ch03-gdscript-basics/scenes/basics.tscn`
- 日期：2026-10-21
