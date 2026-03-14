extends Button
class_name Candidate

signal candidate_selected(data: Candidate)

@export var data: CandidateData

func _ready() -> void:
	pressed.connect(func(): candidate_selected.emit(self))
	
	text = "Approach"
