extends CanvasLayer

func _on_play_pressed():
	get_tree().change_scene_to_file("res://game_scenes/menu_scenes/selecao_jogadores.tscn")


func _on_help_pressed():
	get_tree().change_scene_to_file("res://game_scenes/menu_scenes/help_page.tscn")
