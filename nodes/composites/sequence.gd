@icon("../../icons/sequencer.svg")
class_name SequenceComposite
extends Composite


func tick(actor : Node, blackboard : Blackboard) -> Response:
	for child : BehaviourTreeNode in get_children():
		var response : Response = child.tick(actor, blackboard)
		
		if response != SUCCESS:
			return response
	
	return SUCCESS
