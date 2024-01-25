extends CanvasLayer

func _ready():
	if MainMenus.help == false:
		$Voltar.hide()

func _on_voltar_pressed():
	get_tree().change_scene_to_file("res://game_scenes/menu_scenes/menu_inicial.tscn")
