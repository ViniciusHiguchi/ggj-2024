extends Node

var players = [null, null, null, null]

func _character_select(node, player):
	print(node)
	if players[player] != null:
		players[player].reset_player(player)
	players[player] = node
	players[player].set_player(player)
