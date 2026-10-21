# 第 8 章：动画

## 学完这一章你会什么

- 用 `AnimatedSprite2D` 把一连串帧图循环播起来，例如走路。
- 用 `AnimationPlayer` 按时间改一个属性，并在某一时刻调用函数。这段可以只播一次，例如开门。
- 在不循环的动画播完时，听 `animation_finished`，在终端或画面上留下「播完了」。

## 窗口里先看什么

场景是 `scenes/play.tscn`。

- 左边那张图是 `Walker`。蓝块每秒换几帧，一直循环。图来自 `sprites/walk_strip.png` 里切出的四格。
- 右边那块绿色是 `Gem`。大约一秒内从实心变淡，然后停住。这是 `Clip` 在播名为 `blink` 的动画。
- 变淡过半时，终端会打印「轨道调用了 mark_played」。
- 变淡结束后，终端打印「blink 播完了」，窗口下方出现英文 `Done`。
- 上方英文 `Chapter 8` 只是标题。

## 这几个概念

**帧动画。** 画面本身在换图时，用 `AnimatedSprite2D`。它的 `sprite_frames` 是一份帧列表，里面的动画名叫 `walk`。`loop` 为 true，播完回到第一帧。`speed` 是每秒 6 帧。`autoplay` 写成 `walk` 后，进场景就会循环播，不必在脚本里再调用。

**按时间改属性。** 位置、透明度这种「随时间变」用 `AnimationPlayer`。`Clip` 的默认动画库里有一条叫 `blink` 的动画，长度 1 秒，`loop_mode = 0` 表示不循环。0 号轨道把 `Gem` 的 `modulate` 从完全不透明改到几乎看不见。

**轨道调用函数。** 1 号轨道在 0.5 秒调用根节点的 `mark_played`。函数名写在轨道里，所以到点就会进这个函数。

**播放和停止。** 库负责按名字收纳，`play("blink")` 按名字播放。这一课没有调用停止。帧动画那条靠 `autoplay` 播放，短动画靠脚本里的 `play`。

**播完的信号。** `Clip` 的 `animation_finished` 接到 `_on_clip_animation_finished`。这和按按钮的 `pressed` 是同一套连接：谁发出、谁接收、接收函数叫什么。不循环的动画走到结尾才发出。循环的 `walk` 不会因为回到第一帧就发出这个信号。

## 脚本做了哪一步

`scripts/play.gd` 的 `_ready` 只负责 `clip.play("blink")`。循环的走路在场景的 `autoplay` 里。`_on_clip_animation_finished` 负责播完后的打印和把 `Done` 写出来。

## 改一处看看

把 `walk` 那份帧动画的 `speed` 从 `6.0` 改成 `2.0`，保存后再运行。左边换图变慢。右边仍然约一秒变淡，终端仍会先后出现轨道调用和「播完了」。

## 怎样算学会

走路这种要一直重复的，用 `AnimatedSprite2D`，把 `loop` 打开。开门这种播完就停的，用 `AnimationPlayer`，`loop_mode` 保持只播一次。播完之后听 `animation_finished`，不要去听循环动画的换帧。能这样选，这一章就通过了。

## 先不要往下做

不用 `AnimationTree` 把几段动画混在一起。不用骨骼。不把多段攻击做成连招。

## 习题

`exercises/ex01-once/`。练的是自己把循环和只播一次都启动，并在播完时留下痕迹。
