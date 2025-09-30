@icon("../../icons/selector.svg")
class_name SelectorComposite
extends Composite


func tick(actor : Node, blackboard : Blackboard) -> Response:
	for child : BehaviourTreeNode in get_children():
		var response : Response = child.tick(actor, blackboard)
		
		if response != FAILURE:
			return response
	
	return FAILURE
