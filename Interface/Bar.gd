extends HBoxContainer

func _ready():
	pass
	
	
func _physics_process(delta):
	value = get_tree().root.get_node("1 er niveau").get_node("Jack").life
	


	
