@icon("../icons/tree.svg")
class_name BehaviourTreeRoot
extends BehaviourTree


@export var enabled := true


@onready var blackboard := Blackboard.new()


func _ready() -> void:
	if get_child_count() != 1:
		push_warning("Behaviour Tree Error: Root should have one child")
		
		disable()
		
		return


func _physics_process(delta : float) -> void:
	if not enabled:
		return
	
	blackboard.set("delta", delta)
	
	self.get_child(0).tick(get_parent(), blackboard)


func enable():
	self.enabled = true


func disable():
	self.enabled = false
