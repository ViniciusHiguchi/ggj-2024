extends Control
var node_array = []

var node = preload("res://assets_scenes/node.tscn")
var edge = preload("res://assets_scenes/edge.tscn")

var nodes = []
var edges = {} # k : [node, node2, ...]


# Called when the node enters the scene tree for the first time.
func _ready():
	seed(hash("wow such game"))
	_generate_nodes() # Replace with function body.
	_link_all()
	for i in nodes:
		i.move_to_front()
	
func _link_all():
	var candidates = []
	var edge_instance
	var edges = {}
	for i in range(len(nodes)):
		edges[nodes[i].name] = []
		
		candidates = _nearest(i)
		for j in candidates:
			if randf() > 0.2 + (len(edges[nodes[i].name])/(len(candidates)-1))*1.8:
				if j['node'].name in edges.keys():
					if nodes[i].name in edges[j['node'].name]:
						continue
				edge_instance = edge.instantiate()
				add_child(edge_instance)
				j['node'].move_to_front()
				
				edge_instance.set_nodes(nodes[i], j['node'])
				edges[nodes[i].name].append(j['node'].name)
				


func _nearest(index):
	var all_node = []
	var nearest = []
	for node in nodes:
		all_node.append({'node':node, 'distance':(node.position - nodes[index].position).length()})
		
	for i in range(len(all_node)):
		
		if len(nearest) < 3 and all_node[i]['distance'] != 0:
			nearest.append(all_node[i])
			continue
			
		for j in range(len(nearest)):
			if all_node[i]['distance'] < nearest[j]['distance'] and all_node[i]['distance'] != 0:
				nearest[j] = all_node[i]
				break
				
	return nearest
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _generate_nodes():
	var node_instance
	randomize()
	var x = 5
	var y = 3
	for i in range(x):
		for j in range(y):
			if randf() > 0:
				node_instance = node.instantiate()
				if len(nodes) == 0:
					node_instance._set_start()
				elif len(nodes) == (x*y - 2):
					node_instance._set_end()
				add_child(node_instance)
				nodes.append(node_instance)
	
				var size_x = randf_range( (float(size.x)*(float(i)/x))*(1+0.2), (float(size.x*0.9)*((i+1.0)/x))*(1-0.2) )
				var size_y = randf_range( (float(size.y)*(float(j)/y))*(1+0.2), float(size.y*0.8)*((j+1.0)/y)*(1-0.2) )
				var vector = Vector2(size_x, size_y)
				nodes[-1].set_pos(vector)
