@icon("../icons/action.svg")
class_name BehaviourTreeNode
extends BehaviourTree


enum Response {
	SUCCESS,
	FAILURE,
	RUNNING
}


const SUCCESS := Response.SUCCESS
const FAILURE := Response.FAILURE
const RUNNING := Response.RUNNING


func tick(_actor : Node, _blackboard : Blackboard) -> Response:
	push_warning("Behaviour Tree Error: %s tick behaviour not implemented" % name)
	
	return FAILURE
