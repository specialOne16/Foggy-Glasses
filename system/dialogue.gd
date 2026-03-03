extends Node
class_name Dialogue

signal sequence_finished

@export var label: Label
@export var typing_delay: float = 0.05
@export var sequence_delay: float = 0.75

var _dialogue_sequences: Array[String]
var _sequence_position = 0
var _sequence_progress = 0
var _elapsed_time = 0
var _dialogue_running = false

func start_dialogue_sequence(sequence: Array[String]):
	_dialogue_sequences = sequence
	_sequence_position = 0
	_sequence_progress = 0
	_elapsed_time = 0
	
	_dialogue_running = true

func _process(delta: float) -> void:
	if not _dialogue_running: return
	
	if _sequence_position >= _dialogue_sequences.size(): 
		_dialogue_running = false
		sequence_finished.emit()
		return
	
	_elapsed_time += delta
	
	var current_dialogue = _dialogue_sequences[_sequence_position]
	label.text = current_dialogue.left(_sequence_progress)
	
	if _sequence_progress < current_dialogue.length():
		if _elapsed_time >= typing_delay:
			_elapsed_time -= typing_delay
			_sequence_progress += 1
	else:
		if _elapsed_time >= sequence_delay:
			_elapsed_time -= sequence_delay
			_sequence_progress = 0
			_sequence_position += 1
