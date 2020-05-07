extends ColorRect

func _ready():
	randomize()


var prompts = []

func _on_CreateNewMonster_pressed():
	for child in $Properties.get_children():
		child.roll_property()
