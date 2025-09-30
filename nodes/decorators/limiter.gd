@icon("../../icons/limiter.svg")
class_name LimiterDecorator
extends Decorator


@export var max_count := 0


@onready var cache_key = 'limiter_%s' % get_instance_id()


func tick(actor : Node, blackboard : Blackboard) -> Response:
	var current_count : int = blackboard.get(cache_key)
	
	if current_count == null:
		current_count = 0
	
	if current_count <= max_count:
		blackboard.set(cache_key, current_count + 1)
		
		return get_child(0).tick(actor, blackboard)
	else:
		return FAILURE
