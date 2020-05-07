extends PanelContainer
class_name PropertyPanel

export (String) var property_identifier = ""

func roll_property():
	$VBox/Details.text = Prompts.get_random_result(property_identifier)

func _on_ReRoll_pressed():
	roll_property()
