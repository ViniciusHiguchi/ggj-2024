extends CanvasLayer

var jogadores = 2

func _on_confirmar_pressed():
	#Scena Temporaria, correta é a do main mapa (essa fica dentro dele)
	get_tree().change_scene_to_file("res://game_scenes/menu_scenes/in_game_menu.tscn")


func _on_diminui_pressed():
	if jogadores <= 2:
		jogadores = 2
		$NumeroJogadores.text = str(jogadores)
	else:
		jogadores -= 1
		$NumeroJogadores.text = str(jogadores)


func _on_aumenta_pressed():
	if jogadores >= 4:
		jogadores = 4
		$NumeroJogadores.text = str(jogadores)
	else:
		jogadores += 1
		$NumeroJogadores.text = str(jogadores)
