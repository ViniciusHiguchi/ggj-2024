extends Button
@onready var player_1 = $player1
@onready var player_2 = $player2
@onready var player_3 = $player3
@onready var player_4 = $player4
@onready var canvas_layer = $CanvasLayer


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
	
func set_player(player : int):
	print("player: " + str(player))
	match player:
		0: player_1.visible = true
		1: player_2.visible = true
		2: player_3.visible = true
		3: player_4.visible = true
	
func reset_player(player : int):
	match player:
		0: player_1.visible = false
		1: player_2.visible = false
		2: player_3.visible = false
		3: player_4.visible = false
	
func _call_char_control(player):
	CharacterControl._character_select(self, player)
	canvas_layer.visible = false
	
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func set_pos(pos):
	position = pos


