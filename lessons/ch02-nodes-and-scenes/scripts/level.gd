extends Node2D
## 把关卡场景树打印出来，用来区分根节点、子节点和实例。
## 挂载：场景根节点 Level（Node2D），需要子节点 Shelf。
## 章节：ch02

func _ready() -> void:
	# 取子节点、遍历树的写法在第 4 章再展开。这里只用它把树打到终端。
	var shelf := get_node_or_null("Shelf")
	if shelf == null:
		push_error("缺少节点 Shelf")
		return
	print("第 2 章：下面是 Level 的场景树。")
	_print_branch(self, "")


func _print_branch(node: Node, indent: String) -> void:
	var role := "子节点"
	if node == self:
		role = "根节点"
	elif not node.scene_file_path.is_empty():
		role = "实例"
	var detail := node.name
	if node is Node2D and node != self:
		var body := node as Node2D
		detail += " 相对父节点 %s" % body.position
	if role == "实例":
		detail += " 来自 %s" % node.scene_file_path
	print("%s%s %s" % [indent, role, detail])
	for child in node.get_children():
		_print_branch(child, indent + "  ")
