extends Control

const LOSE_SCREEN_MORE_DEALS = preload("uid://bvefah3cu0hii")
const LOSE_SCREEN_NERVES = preload("uid://cnabi5l0j7tjy")
const WIN_SCREEN = preload("uid://dorr86l6laj2t")

@onready var persons = [%Person1, %Person2, %Person3, %Person4, %Person5]
@onready var options = [%Option1, %Option2, %Option3, %Option4, %Option5]
@onready var end_conversation: Button = $Conversation/PanelContainer/MarginContainer/Options/EndConversation
@onready var nervousness_bar: ProgressBar = %NervousnessBar
@onready var deal_label: Label = %DealLabel

@onready var main_hall: Control = %MainHall
@onready var conversation: Control = %Conversation
@onready var end_game_screen: TextureRect = %EndGameScreen

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
	sequence_number = 0
	member_contacted += 1
	candidate.disabled = true
	
	conversation_background.texture = active_person.background
	conversation_person.sprite_frames = active_person.frames
	conversation_person.play("idle")
	main_hall.visible = false
	conversation.visible = true
	
	label.text = ""
	_toggle_options(true)

func _option_selected(option: Option):
	AudioPlayer.pop.play()
	
	_toggle_options(false)
	match option.type:
		"correct": 
			success_exchange += 1
			AudioPlayer.success.play()
			conversation_person.play("agree")
		"generic": 
			success_exchange += 1
			AudioPlayer.neutral.play()
			conversation_person.play("neutral")
		"incorrect": 
			AudioPlayer.failure.play()
			conversation_person.play("disagree")
	
	if sequence_number < 5:
		dialogue.start_dialogue_sequence(active_person.get_dialogue(sequence_number, option.type))
		sequence_number += 1

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
			AudioPlayer.deal_success.play()
			nervousness_bar.value -= 10
			member_deal += 1
			deal_label.text = "Deal: %d" % member_deal
		2: nervousness_bar.value += 5
		3, 4, 5: nervousness_bar.value += 20
	
	success_exchange = 0
	
	main_hall.visible = true
	conversation.visible = false
	
	if nervousness_bar.value >= 80: 
		end_game_screen.texture = LOSE_SCREEN_NERVES
		end_game_screen.visible = true
	elif member_deal >= 4: 
		end_game_screen.texture = WIN_SCREEN
		end_game_screen.visible = true
	elif member_contacted >= 5: 
		end_game_screen.texture = LOSE_SCREEN_MORE_DEALS
		end_game_screen.visible = true

func _toggle_options(option_visible: bool, final: bool = false):
	if active_person == null: return
	
	
	end_conversation.visible = final
	match 5 - success_exchange:
		0, 1: end_conversation.text = "Confirm Partnership"
		2, 3, 4, 5: end_conversation.text = "See other stalls"
	
	if option_visible:
		var current_options = active_person.get_options(sequence_number)
		for i in current_options.size():
			options[i].type = current_options[i].type
			options[i].text = current_options[i].text
	
	for option in options:
		option.visible = option_visible


func _on_fast_dialogue_check_box_toggled(toggled_on: bool) -> void:
	if toggled_on:
		dialogue.typing_delay = 0.0001
		dialogue.sequence_delay = 0.001
	else:
		dialogue.typing_delay = 0.05
		dialogue.sequence_delay = 0.75
