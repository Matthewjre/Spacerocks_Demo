extends CanvasLayer

signal start_game

onready var lives_counter = [$MarginContainer/HBoxContainer/LivesCounter/L1,
							$MarginContainer/HBoxContainer/LivesCounter/L2,
							$MarginContainer/HBoxContainer/LivesCounter/L3]