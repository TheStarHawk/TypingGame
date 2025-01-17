extends Node2D

@onready var scene = "res://Scenes/game.tscn"

func _on_colors_pressed() -> void:
	VocabLists.Category = VocabLists.Colors
	VocabLists.currentCategory = "Colors"
	get_tree().change_scene_to_file(scene)


func _on_easter_pressed() -> void:
	VocabLists.Category = VocabLists.Instruments
	VocabLists.currentCategory = "Instruments"
	get_tree().change_scene_to_file(scene)


func _on_food_pressed() -> void:
	VocabLists.Category = VocabLists.Food
	VocabLists.currentCategory = "Food"
	get_tree().change_scene_to_file(scene)


func _on_play_pressed() -> void:
	$Main.visible = false
	$Categories.visible = true
	scene = "res://Scenes/game.tscn"


func _on_return_pressed() -> void:
	$Main.visible = true
	$Categories.visible = false


func _on_vocab_pressed() -> void:
	$Main.visible = false
	$Categories.visible = true
	scene = "res://Scenes/vocab.tscn"
