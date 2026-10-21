#!/bin/zsh
# 保存某一课的 .gd、.tscn 或 project.godot 后，关掉正在运行的 Godot 并重新打开该场景。
# 用法：tools/rerun-scene.sh res://lessons/ch04-script-lifecycle/scenes/life.tscn

set -euo pipefail

if [[ $# -ne 1 ]]; then
	echo "用法: tools/rerun-scene.sh res://lessons/某一章/scenes/某个场景.tscn" >&2
	exit 1
fi

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

SCENE="$1"
REL="${SCENE#res://}"
if [[ "$REL" != lessons/* ]]; then
	echo "场景路径需要以 res://lessons/ 开头。" >&2
	exit 1
fi

WATCH="${REL%%/scenes/*}"
if [[ "$WATCH" == "$REL" ]]; then
	WATCH="$(dirname "$REL")"
fi

exec watchexec \
	--restart \
	--debounce 400ms \
	--exts gd,tscn,godot \
	--watch "$WATCH" \
	--watch project.godot \
	-- godot --path "$ROOT" "$SCENE"
