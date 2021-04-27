
extends Button


func _on_ChangeSceneButton_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://TitleScreen/TitleScreen.tscn")
	


