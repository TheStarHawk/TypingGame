extends Node2D

var cardOrder = 1
var xPos : int
var yPos : int = -150
var word : String = "null"

func _ready() -> void:
	spawnWords()

func spawnWords():
	var card = preload("res://Scenes/VocabCards.tscn").instantiate()
	match cardOrder:
		1:
			xPos = 260
		2:
			xPos = 610
		3:
			xPos = 960
		4:
			xPos = 1310
		5:
			xPos = 1660
			cardOrder = 0
	if VocabLists.Category.size() > 0:
		if cardOrder == 1:
			yPos += 450
			$Camera2D.limit_bottom += 450
		cardOrder += 1
		word = VocabLists.Category.front()
		card.word = word
		card.position = Vector2(xPos, yPos)
		$Cards.add_child(card)
		VocabLists.Category.erase(word)
		spawnWords()

func _on_return_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")


func _on_up_pressed() -> void:
	$Camera2D.position.y -= 400
	if $Camera2D.position.y + 400 < $Camera2D.limit_top:
		$Camera2D.position.y = $Camera2D.limit_top - 540

func _on_down_pressed() -> void:
	$Camera2D.position.y += 400
	if $Camera2D.position.y - 400 > $Camera2D.limit_bottom:
		$Camera2D.position.y = $Camera2D.limit_bottom + 540
