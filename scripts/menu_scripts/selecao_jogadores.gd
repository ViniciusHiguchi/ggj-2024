extends CanvasLayer

func _on_diminui_pressed():
	if MainMenus.jogadores <= 2:
		MainMenus.jogadores = 2
		$NumeroJogadores.text = str(MainMenus.jogadores)
	else:
		MainMenus.jogadores -= 1
		$NumeroJogadores.text = str(MainMenus.jogadores)

func _on_aumenta_pressed():
	if MainMenus.jogadores >= 4:
		MainMenus.jogadores = 4
		$NumeroJogadores.text = str(MainMenus.jogadores)
	else:
		MainMenus.jogadores += 1
		$NumeroJogadores.text = str(MainMenus.jogadores)

func _on_confirmar_pressed():
	#Scena Temporaria, correta é a do main mapa (essa fica dentro dele)
	MainMenus.help = false
	get_tree().change_scene_to_file("res://game_scenes/map.tscn")
