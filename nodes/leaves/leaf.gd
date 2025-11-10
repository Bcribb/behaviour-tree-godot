@icon("../../icons/action.svg")
class_name Leaf
extends BehaviourTreeNode


func _ready() -> void:
	if get_child_count() != 0:
		push_error("Behaviour Tree Error: Leaf %s should not have children" % self.name)
