extends Node

@onready var failure: AudioStreamPlayer = $Failure
@onready var in_a_blur_1_: AudioStreamPlayer = $"InABlur(1)"
@onready var main_menu_credits_theme: AudioStreamPlayer = $MainMenuCreditsTheme
@onready var pop: AudioStreamPlayer = $Pop
@onready var success: AudioStreamPlayer = $Success


func _on_in_a_blur_1_finished() -> void:
	in_a_blur_1_.play()


func _on_main_menu_credits_theme_finished() -> void:
	main_menu_credits_theme.play()
