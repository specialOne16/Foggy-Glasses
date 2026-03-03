extends Control

const PERSON_1_DIALOGUE: Array[String] = ["Person 1 is talking"]
const PERSON_2_DIALOGUE: Array[String] = ["Person 2 is talking"]

const PERSON_1_DIALOGUE_OPTION_1: Array[String] = ["Person 1 is responding to option 1"]
const PERSON_1_DIALOGUE_OPTION_2: Array[String] = ["Person 1 is responding to option 2"]

const PERSON_2_DIALOGUE_OPTION_1: Array[String] = ["Person 2 is responding to option 1"]
const PERSON_2_DIALOGUE_OPTION_2: Array[String] = ["Person 2 is responding to option 2"]

@onready var person_1: Button = %Person1
@onready var person_2: Button = %Person2
@onready var option_1: Button = %Option1
@onready var option_2: Button = %Option2

@onready var label: Label = %Label
@onready var dialogue: Dialogue = %Dialogue

var active_person = 0

func _ready() -> void:
	person_1.pressed.connect(person1)
	person_2.pressed.connect(person2)
	dialogue.sequence_finished.connect(func():
		option_1.visible = true
		option_2.visible = true
	)
	
	option_1.pressed.connect(option1)
	option_2.pressed.connect(option2)
	
	option_1.visible = false
	option_2.visible = false

func person1():
	active_person = 1
	option_1.visible = false
	option_2.visible = false
	dialogue.start_dialogue_sequence(PERSON_1_DIALOGUE)

func person2():
	active_person = 2
	option_1.visible = false
	option_2.visible = false
	dialogue.start_dialogue_sequence(PERSON_2_DIALOGUE)

func option1():
	option_1.visible = false
	option_2.visible = false
	if active_person == 1:
		dialogue.start_dialogue_sequence(PERSON_1_DIALOGUE_OPTION_1)
	else:
		dialogue.start_dialogue_sequence(PERSON_2_DIALOGUE_OPTION_1)

func option2():
	option_1.visible = false
	option_2.visible = false
	if active_person == 1:
		dialogue.start_dialogue_sequence(PERSON_1_DIALOGUE_OPTION_2)
	else:
		dialogue.start_dialogue_sequence(PERSON_2_DIALOGUE_OPTION_2)
