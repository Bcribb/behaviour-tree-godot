@icon("../../icons/fail.svg")
class_name AlwaysFailDecorator
extends Decorator


func tick(actor : Node, blackboard : Blackboard):
	for child : BehaviourTreeNode in get_children():
		var response : Response = child.tick(actor, blackboard)
		
		if response == RUNNING:
			return RUNNING
		
		return FAILURE
