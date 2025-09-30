@icon("../../icons/succeed.svg")
class_name AlwaysSucceedDecorator
extends Decorator


func tick(actor : Node, blackboard : Blackboard) -> Response:
	for child : BehaviourTreeNode in get_children():
		var response : Response = child.tick(actor, blackboard)
		
		if response == RUNNING:
			return RUNNING
		
		return SUCCESS
	
	push_warning("Behaviour Tree Error: % does not have any children" % name)
	
	return FAILURE
