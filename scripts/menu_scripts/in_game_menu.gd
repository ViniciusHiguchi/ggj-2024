extends CanvasLayer
var is_help = false

func _ready():
	
	if MainMenus.jogadores <= 3:
		$Jogadores_4.hide()
	if MainMenus.jogadores < 3:
		$Jogadores_3.hide()
	
	$Jogadores_5.hide()
	$Jogadores_6.hide()
	$Jogadores_7.hide()
	$Jogadores_8.hide()
	$HelpPage.hide()

func _on_mapa_pressed():
	$Jogadores_5.hide()
	$Jogadores_6.hide()
	$Jogadores_7.hide()
	$Jogadores_8.hide()
	$HelpPage.hide()

func _on_help_pressed():
	if is_help:
		$Jogadores_1.show()
		$Jogadores_2.show()
		$Jogadores_3.show()
		$Jogadores_4.show()
		$Mapa.show()
		$Reset.show()
		$HelpPage.hide()
		is_help = false
		
	else:
		$Jogadores_1.hide()
		$Jogadores_2.hide()
		$Jogadores_3.hide()
		$Jogadores_4.hide()
		$Mapa.hide()
		$Reset.hide()
		$HelpPage.show()
		is_help = true
		

func _on_jogadores_1_pressed():
	$Jogadores_5.show()
	$Jogadores_6.hide()
	$Jogadores_7.hide()
	$Jogadores_8.hide()
	$HelpPage.hide()

func _on_jogadores_2_pressed():
	$Jogadores_5.hide()
	$Jogadores_6.show()
	$Jogadores_7.hide()
	$Jogadores_8.hide()
	$HelpPage.hide()

func _on_jogadores_3_pressed():
	$Jogadores_5.hide()
	$Jogadores_6.hide()
	$Jogadores_7.show()
	$Jogadores_8.hide()
	$HelpPage.hide()

func _on_jogadores_4_pressed():
	$Jogadores_5.hide()
	$Jogadores_6.hide()
	$Jogadores_7.hide()
	$Jogadores_8.show()
	$HelpPage.hide()

func _on_reset_pressed():
	get_tree().change_scene_to_file("res://game_scenes/menu_scenes/selecao_jogadores.tscn")
	MainMenus.help = true
	MainMenus.jogadores = 2
