extends Resource
class_name CandidateData

@export var candidate_name: String

func get_dialogue(sequence_number: int) -> Array[String]:
	if sequence_number == 0:
		return ["%s says something for greetings" % candidate_name]
	else:
		return ["%s says something for exchange %d" % [candidate_name, sequence_number]]

func is_exchange_success(sequence_number: int, option_selected: int) -> bool:
	return sequence_number == option_selected
