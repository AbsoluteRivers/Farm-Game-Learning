class_name SaveDataComponent
extends Node

@onready var parent_node: Node2D = get_parent() as Node2D

@export var save_data_resource: Resource


func _ready() -> void:
	add_to_group("save_data_component")


func _save_data() -> Resource:
	#returns a type of resource
	if parent_node == null:
		return null
	
	if save_data_resource == null:
		push_error("save_data_resource: ", save_data_resource, parent_node.name)
		return null
		#error checks if a save data component was set up correctly with the parent node and resource
	
	save_data_resource._save_data(parent_node)
	#grabs the resource attatched from the SaveDataComponent and saves the resource of the parent node
	
	return save_data_resource
	#return once the cells set from the resource
	
