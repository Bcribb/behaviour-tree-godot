@icon("../../icons/category_composite.svg")
class_name Composite
extends BehaviourTreeNode


func _ready() -> void:
	if get_child_count() < 1:
		push_error("Behaviour Tree Error: Composite %s should have at least one child" % name)
