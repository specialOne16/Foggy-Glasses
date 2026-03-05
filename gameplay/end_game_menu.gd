extends PanelContainer
class_name EndGameMenu

@onready var title: Label = %Title
@onready var description: Label = %Description

func _ready() -> void:
	visible = false

func show_menu(_title: String, _description: String):
	visible = true
	
	title.text = _title
	description.text = _description
	
	get_tree().paused = true
