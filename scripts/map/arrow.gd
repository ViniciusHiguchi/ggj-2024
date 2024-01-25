extends TextureRect

@onready var button_2 = $"../Button2"
@onready var button = $"../Button"

func _ready():
	pass

func set_nodes(node1, node2):
	var vector = node2.position - node1.position

	position =  Vector2(node1.size.x/2, node1.size.y/2) + node1.position
	size = Vector2(vector.length(),6)
	rotation = vector.angle()
	
