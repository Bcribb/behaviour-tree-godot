@icon("../../icons/category_decorator.svg")
class_name Decorator
extends BehaviourTreeNode


func _ready() -> void:
	if get_child_count() != 1:
		push_error("Behaviour Tree Error: Decorator %s should have only one child" % name)
