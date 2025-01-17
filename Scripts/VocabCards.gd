extends Node2D

var word : String
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Word.text = word
	$BackGround.self_modulate = VocabLists.textureDict.get(VocabLists.currentCategory)
	$Picture.texture = load(VocabLists.textureDict.get(word))
