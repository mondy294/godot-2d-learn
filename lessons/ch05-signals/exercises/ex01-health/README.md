# 习题：受伤后更新血条

## 基础介绍

- 对应第 5 章，练习自定义信号和它的参数。
- 要改 `scripts/player.gd` 的 `_on_hurt_button_pressed`。
- 要改 `scripts/health_bar.gd` 的 `_on_player_health_changed`。
- 写完后删掉这两个函数里的 `push_error`。
- 不要改 `scenes/health.tscn` 里的节点和 `[connection]`。

保存后自动重启：

```bash
tools/rerun-scene.sh res://lessons/ch05-signals/exercises/ex01-health/scenes/health.tscn
```

只打开一次：

```bash
godot --path . res://lessons/ch05-signals/exercises/ex01-health/scenes/health.tscn
```

## 习题场景

- 窗口上方的文字是 `Exercise`。
- 窗口中央有一根红色血条，节点是 `HealthBar/Bar`。初始宽度表示满生命。
- 窗口下方有按钮，文字是 `Hurt`。
- `Player` 上的生命从 `3` 开始。
- `Player` 已经声明信号 `health_changed(current_health)`。
- `Hurt` 按钮的 `pressed` 已经接到 `Player._on_hurt_button_pressed`。
- `Player` 的 `health_changed` 已经接到 `HealthBar._on_player_health_changed`。

## 目标

- 还没写代码时，每点一次 `Hurt`，终端出现「还没有在受伤时发出 health_changed」，血条保持原样。
- 点第 1 次后，剩余生命是 `2`，血条比初始更短，或颜色和满生命时不同。
- 点第 2 次后，剩余生命是 `1`，血条再变短一截，或颜色再有区别。
- 点第 3 次后，剩余生命是 `0`，血条变成看得出「没有生命」的样子。
- 第 4 次及以后，剩余生命停在 `0`，不再变成负数，血条保持没有生命的样子。
