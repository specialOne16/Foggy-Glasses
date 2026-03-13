extends Control

@onready var persons = [%Person1, %Person2, %Person3, %Person4, %Person5]
@onready var options = [%Option1, %Option2, %Option3, %Option4, %Option5]
@onready var end_conversation: Button = $Conversation/PanelContainer/MarginContainer/Options/EndConversation
@onready var nervousness_bar: ProgressBar = %NervousnessBar
@onready var deal_label: Label = %DealLabel

@onready var main_hall: Control = %MainHall
@onready var conversation: Control = %Conversation
@onready var end_game_menu: EndGameMenu = %EndGameMenu

@onready var conversation_background: TextureRect = $Conversation/ConversationBackground
@onready var conversation_person: AnimatedSprite2D = $Conversation/ConversationPerson

@onready var label: Label = %Label
@onready var dialogue: Dialogue = %Dialogue

var active_person: CandidateData
var sequence_number = 1
var success_exchange = 0
var member_contacted = 0
var member_deal = 0

func _ready() -> void:
	for person in persons:
		person.candidate_selected.connect(_candidate_selected)
	
	dialogue.sequence_finished.connect(_dialogue_finished)
	conversation_person.animation_finished.connect(conversation_person.play.bind("idle"))
	
	for option in options:
		option.pressed.connect(_option_selected.bind(option))
		option.visible = false
	
	main_hall.visible = true
	conversation.visible = false
	
	AudioPlayer.in_a_blur_1_.play()

func _candidate_selected(candidate: Candidate):
	AudioPlayer.pop.play()
	
	active_person = candidate.data
	sequence_number = 1
	member_contacted += 1
	candidate.disabled = true
	
	conversation_background.texture = active_person.background
	conversation_person.sprite_frames = active_person.frames
	conversation_person.play("idle")
	main_hall.visible = false
	conversation.visible = true
	
	_toggle_options(false)
	dialogue.start_dialogue_sequence(active_person.get_dialogue(sequence_number))

func _option_selected(option: Option):
	AudioPlayer.pop.play()
	
	_toggle_options(false)
	if active_person.is_exchange_success(sequence_number, option.id):
		success_exchange += 1
		AudioPlayer.success.play()
		conversation_person.play("agree")
	else:
		AudioPlayer.failure.play()
		conversation_person.play("disagree")
	
	if sequence_number < 5:
		sequence_number += 1
		dialogue.start_dialogue_sequence(active_person.get_dialogue(sequence_number))

func _dialogue_finished():
	if sequence_number < 5:
		_toggle_options(true)
	else:
		_toggle_options(false, true)

func _conversation_finished():
	AudioPlayer.pop.play()
	
	active_person = null
	match 5 - success_exchange:
		0, 1: 
			nervousness_bar.value -= 10
			member_deal += 1
			deal_label.text = "Deal: %d" % member_deal
		2: nervousness_bar.value += 5
		3, 4, 5: nervousness_bar.value += 20
	
	success_exchange = 0
	
	main_hall.visible = true
	conversation.visible = false
	
	if nervousness_bar.value >= 80: end_game_menu.show_menu(
		"Tomorrow’s Another Day",
		"Awww sweetheart everyone gets nervous! There’s always the next market! Now come on, have some of your favorite lemonade and we will try again. I believe in you!"
	)
	elif member_deal >= 4: end_game_menu.show_menu(
		"Success! Partners Found!",
		"Look at you making friends on your own! Let’s celebrate with your favorite cakes!"
	)
	elif member_contacted >= 5: end_game_menu.show_menu(
		"More Markets Ahead",
		"I’m so proud of you honey! Next time we’ll both bring our glasses and get even more partners!"
	)

func _toggle_options(option_visible: bool, final: bool = false):
	if active_person == null: return
	
	end_conversation.visible = final
	
	for option in options:
		option.visible = option_visible


func _on_fast_dialogue_check_box_toggled(toggled_on: bool) -> void:
	if toggled_on:
		dialogue.typing_delay = 0.0001
		dialogue.sequence_delay = 0.001
	else:
		dialogue.typing_delay = 0.05
		dialogue.sequence_delay = 0.75
