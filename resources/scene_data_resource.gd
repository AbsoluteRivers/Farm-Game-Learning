class_name SceneDataResource
extends NodeDataResource

@export var node_name: String
@export var scene_file_path: String


func _save_data(node: Node2D) -> void:
	super._save_data(node)
	#super calls a method from the inherited class, in this case NodeDataResource
	
	node_name = node.name
	scene_file_path = node.scene_file_path
	
	


func _load_data(window: Window) -> void:
	#var parent_node: Node
	var parent_node: Node2D
	#var scene_node: Node
	var scene_node: Node2D
	#updated both variables as node2d instead of just node as the scene is in node2d and attatch to a parent in node2d
	
	
	if parent_node_path != null:
		parent_node = window.get_node_or_null(parent_node_path)
		#checks if the parent_node_path exists and sets the parent_node_path
	
	if node_path != null:
		#checks if there is a node_path
		var scene_file_resource: Resource = load(scene_file_path)
		#loads the scene found wihtin the scene_file_path
		scene_node = scene_file_resource.instantiate() as Node2D
		#recreates the node scene using instantiate
		
	
	if parent_node != null and scene_node != null:
		scene_node.global_position = global_position
		parent_node.add_child(scene_node)
		#checks wether the parent and scene node exists simultaneously and adds the scene node to the parent node
