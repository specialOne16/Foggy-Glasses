extends Button
class_name Candidate

signal candidate_selected(data: CandidateData)

@export var data: CandidateData

func _ready() -> void:
	pressed.connect(func(): candidate_selected.emit(data))
	
	text = data.candidate_name
