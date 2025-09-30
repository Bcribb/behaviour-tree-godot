@icon("../../icons/inverter.svg")
class_name InverterDecorator
extends Decorator


func tick(actor : Node, blackboard : Blackboard) -> Response:
	for child : BehaviourTreeNode in get_children():
		var response : Response = child.tick(actor, blackboard)
		
		if response == SUCCESS:
			return FAILURE
		if response == FAILURE:
			return SUCCESS
		
		return RUNNING
	
	push_warning("Behaviour Tree Error: % does not have any children" % name)
	
	return FAILURE
