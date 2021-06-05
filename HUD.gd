extends CanvasLayer

signal start_game

onready var lives_counter = [$MarginContainer/HBoxContainer/LivesCounter/L1,
							$MarginContainer/HBoxContainer/LivesCounter/L2,
							$MarginContainer/HBoxContainer/LivesCounter/L3]

func show_message(message):
	$MessageLabel.text = message
	$MessageLabel.show()
	$MessageTimer.start()

func update_score(value):
	$MarginContainer/HBoxContainer/ScoreLabel.text = str(value)

func update_lives(value):
	for i in range(3)
		lives_counter[i].visible = value > i