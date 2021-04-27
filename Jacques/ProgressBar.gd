extends ProgressBar


func _ready():
	pass 


pass
		
func _physics_process(_delta):
	value = get_tree().root.get_node("Forêt").get_node("Jacques").life

