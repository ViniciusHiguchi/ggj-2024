extends Button

var is_type_defined = false
# Called when the node enters the scene tree for the first time.
func _ready():
	if not is_type_defined: 
		icon = ResourceLoader.load("res://assets/blocks/room_tiles/tile00%d.png" % randi_range(0,5))

func _set_end():
	icon = ResourceLoader.load("res://assets/blocks/room_tiles/end.png")
	is_type_defined = true

func _set_start():
	icon = ResourceLoader.load("res://assets/blocks/room_tiles/start.png")
	is_type_defined = true
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func set_pos(pos):
	position = pos
