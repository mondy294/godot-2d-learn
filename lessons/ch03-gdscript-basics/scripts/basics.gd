extends Node2D
## 计算几种类型的结果并打印，用来认识 GDScript 的基本写法。
## 挂载：场景根节点 Basics（Node2D）。
## 章节：ch03

const PASS_SCORE: int = 10

enum Rank { RETRY, PASS }


func _ready() -> void:
	# _ready 何时被调用在第 4 章再展开。这里只用它在运行后打印结果。
	var bonus: float = 1.5
	var score: int = add_score(14, int(bonus))
	var cleared: bool = score >= PASS_SCORE
	var rank: Rank = rank_for(cleared)
	var place := Vector2(12, 8)
	var steps: Array[int] = [1, 2, 3]
	print("第 3 章：整数 %d，小数 %s，是否通过 %s。" % [score, bonus, cleared])
	print("第 3 章：评价 %s，坐标 %s。" % [rank_name(rank), place])
	print("第 3 章：字典里 coin 的数量是 %s。" % find_amount("coin"))
	var total := 0
	for step in steps:
		total += step
	print("第 3 章：数组加总是 %d。" % total)
	print("第 3 章：查找 potion 的结果是 %s。" % find_amount("potion"))


func add_score(base: int, extra: int) -> int:
	return base + extra


func rank_for(cleared: bool) -> Rank:
	if cleared:
		return Rank.PASS
	return Rank.RETRY


func rank_name(rank: Rank) -> String:
	if rank == Rank.PASS:
		return "pass"
	return "retry"


## 物品表里没有这项时没有数量，返回值可能是 int 或 null。
func find_amount(item_name: String) -> Variant:
	var inventory: Dictionary = {"coin": 2, "key": 1}
	if inventory.has(item_name):
		return inventory[item_name]
	return null
