extends Node

var score : int
var typedWord : String
var wordPos : int
var lastPos : int
var lastPos2 : int
var word : String = "null"
var lives : int = 3

func _ready() -> void:
	$ScoreBoard/Category.text = VocabLists.currentCategory
	$LineEdit.grab_focus()
	choosePos()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func spawnWord():
	var scene = preload("res://Scenes/Words.tscn").instantiate()
	if VocabLists.Category.size() > 0:
		typedWord = "null"
		word = VocabLists.Category.pick_random()
		scene.word = word
		scene.position.x = wordPos
		$Words.add_child(scene)
		VocabLists.Category.erase(word)
		
func choosePos():
	var nextPos : int = randi_range(1, 5)
	if nextPos != lastPos and nextPos != lastPos2:
		match nextPos:
			1:
				wordPos = 260
			2:
				wordPos = 610
			3:
				wordPos = 960
			4:
				wordPos = 1310
			5:
				wordPos = 1660
		lastPos2 = lastPos
		lastPos = nextPos
		spawnWord()
	else:
		choosePos()
	
func _on_timer_timeout() -> void:
	choosePos()

func _on_line_edit_text_submitted(new_text: String) -> void:
	typedWord = new_text
	$LineEdit.text = ""
	
func updateScore(points):
	score += points
	$ScoreBoard/Score.text = "Score: " + str(score)


func _on_hitbox_body_entered(body: Node2D) -> void:
	if lives > 0:
		lives -= 1
		$ScoreBoard/Lives.text = "Lives: " + str(lives)
	else:
		get_tree().change_scene_to_file("res://Scenes/menu.tscn")
