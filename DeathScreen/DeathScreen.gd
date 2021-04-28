extends Control



func _ready():
	$MarginContainer/VBoxContainer/VBoxContainer/TextureButton.grab_focus() 
	
func _physics_process(_delta):
	 
	if $MarginContainer/VBoxContainer/VBoxContainer/TextureButton.is_hovered() == true:		
		$MarginContainer/VBoxContainer/VBoxContainer/TextureButton.grab_focus()
	if $MarginContainer/VBoxContainer/VBoxContainer/TextureButton2.is_hovered() == true:		
		$MarginContainer/VBoxContainer/VBoxContainer/TextureButton2.grab_focus()
	if $MarginContainer/VBoxContainer/VBoxContainer/TextureButton3.is_hovered() == true:		
		$MarginContainer/VBoxContainer/VBoxContainer/TextureButton3.grab_focus()


func _on_TextureButton_pressed():
		get_tree().change_scene("1er niveau.tscn")


func _on_TextureButton2_pressed():
	   get_tree().change_scene("res://TitleScreen/TitleScreen.tscn")


func _on_TextureButton3_pressed():
	   get_tree().quit()
 
