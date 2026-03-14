extends Resource
class_name CandidateData

@export var candidate_name: String
@export var candidate_id: int
@export var frames: SpriteFrames
@export var background: Texture2D

var _phases: Array

func get_dialogue(sequence_number: int) -> Array[String]:
	if sequence_number == 0:
		return ["%s says something for greetings" % candidate_name]
	else:
		return ["%s says something for exchange %d" % [candidate_name, sequence_number]]

func get_options(sequence_number: int) -> Array:
	if not _phases:
		_phases = [DialogueLines.phases, DialogueLines.alternate_phases].pick_random()
	
	var result = []
	
	var self_options = DialogueLines.options[DialogueLines.persons[candidate_id]][DialogueLines.phases[sequence_number]]
	
	result.append(
		{
			"text": self_options["correct"].pick_random(),
			"type": "correct"
		}
	)
	result.append(
		{
			"text": self_options["generic"].pick_random(),
			"type": "generic"
		}
	)
	
	var other_persons = DialogueLines.persons.duplicate()
	other_persons.remove_at(candidate_id)
	for i in range(3):
		var other_options = DialogueLines.options[other_persons.pick_random()][DialogueLines.phases.pick_random()]
		result.append(
			{
				"text": other_options[["correct", "generic"].pick_random()].pick_random(),
				"type": "incorrect"
			}
		)
	
	return result

func is_exchange_success(sequence_number: int, option_selected: int) -> bool:
	return sequence_number == option_selected
