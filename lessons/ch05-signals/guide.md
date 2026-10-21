# 第 5 章：信号

## 这一章解决什么问题

一个节点发生了某件事，别的节点可能想知道。如果发消息的节点直接去调用听消息的节点，它就必须知道对方是谁。信号把这件事拆开：发出的人只宣布「灯的亮灭变了」，谁要听谁自己接上。

这一课里，按钮自己不知道灯长什么样。灯也不去问按钮。中间的 `Beacon` 只负责宣布新的亮灭状态。

## 先看哪棵场景树

场景是 `scenes/signals.tscn`。没有从别的场景实例化进来的节点。

- `Signals`：根节点，没有脚本
- `Beacon`：挂着 `scripts/beacon.gd`，负责发出信号
- `Lamp`：挂着 `scripts/lamp.gd`，负责听信号
- `Lamp/Bulb`：画面中央的方块，一开始是灰色
- `UI/Title`：上方的英文 `Chapter 5`
- `UI/PingButton`：写着 `Ping` 的按钮

## 代码在做什么

`beacon.gd` 声明了自定义信号 `lit_changed(is_lit)`。参数是翻转之后灯应不应该亮。`_on_ping_button_pressed` 在按钮按下时把这个状态翻一次，然后 `emit`。它不改方块的颜色。

`lamp.gd` 的 `_on_beacon_lit_changed` 收到这个参数后，才把 `Bulb` 涂成金色或灰色，并在终端打一行字。函数名里的 `beacon` 和 `lit_changed` 对得上发出信号的节点和信号名。

这两条连接写在 `signals.tscn` 末尾的 `[connection]` 里，也就是编辑器里连信号之后保存下来的结果：

- `PingButton` 的引擎信号 `pressed` 接到 `Beacon._on_ping_button_pressed`
- `Beacon` 的自定义信号 `lit_changed` 接到 `Lamp._on_beacon_lit_changed`

如果节点是运行中才创建的，场景文件里就没有这条线，那时在代码里写 `lit_changed.connect(_on_beacon_lit_changed)`。这一课两个节点都在场景里，所以用编辑器连接，方便在文件里看见谁听谁。

## 建议改一处

打开窗口后按一次 `Ping`。方块变成金色，终端出现「点亮 true」。再按一次，方块变回灰色，终端出现「点亮 false」。

## 自测

题目：玩家受伤时，界面血条要更新。

说得通的接法：玩家发出信号，例如 `health_changed(current_health)`。血条去听，并用参数里的剩余生命改显示。玩家不直接调用血条的函数，这样玩家脚本里不必出现血条这个节点。

## 本章停在哪里

不用 Autoload 做全局事件总线，那是第 15 章。不把按钮扩成一套菜单，那是第 13 章。也不在这里把分数、存档和切场景接成一局游戏。

## 习题

`exercises/ex01-health/`。自己觉得这一章看懂之后再做。场景和信号连接已经接好，受伤时怎么发信号、血条怎么变，留在那两个函数里。
