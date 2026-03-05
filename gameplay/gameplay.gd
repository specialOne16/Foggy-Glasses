extends Control

@onready var persons = [%Person1, %Person2, %Person3, %Person4, %Person5]
@onready var options = [%Option1, %Option2, %Option3, %Option4, %Option5]
@onready var nervousness_bar: ProgressBar = %NervousnessBar

@onready var label: Label = %Label
@onready var dialogue: Dialogue = %Dialogue

var active_person: CandidateData
var sequence_number = 1
var success_exchange = 0

func _ready() -> void:
	for person in persons:
		person.candidate_selected.connect(_candidate_selected)
	
	dialogue.sequence_finished.connect(_dialogue_finished)
	
	for option in options:
		option.pressed.connect(_option_selected.bind(option))
		option.visible = false

func _candidate_selected(candidate: Candidate):
	active_person = candidate.data
	sequence_number = 1
	candidate.disabled = true
	for person in persons: person.visible = false
	
	_toggle_options(false)
	dialogue.start_dialogue_sequence(active_person.get_dialogue(sequence_number))

func _option_selected(option: Option):
	_toggle_options(false)
	if active_person.is_exchange_success(sequence_number, option.id):
		success_exchange += 1
	
	if sequence_number < 5:
		sequence_number += 1
		dialogue.start_dialogue_sequence(active_person.get_dialogue(sequence_number))
	else:
		active_person = null
		dialogue.start_dialogue_sequence(["%d errors" % (5 - success_exchange)])
		match 5 - success_exchange:
			0, 1: nervousness_bar.value -= 10
			2: nervousness_bar.value += 5
			3, 4, 5: nervousness_bar.value += 20

func _dialogue_finished():
	if active_person != null:
		_toggle_options(true)
	else:
		for person in persons: person.visible = true

func _toggle_options(option_visible: bool):
	if active_person == null: return
	
	for option in options:
		option.visible = option_visible
