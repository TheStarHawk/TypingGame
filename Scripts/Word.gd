extends RigidBody2D

var word : String
var sprite
@onready var particles = preload("res://Scenes/card_particle.tscn").instantiate()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rotation_degrees = randi_range(-15, 15)
	$Word.text = word
	$BackGround.self_modulate = VocabLists.textureDict.get(VocabLists.currentCategory)
	$Picture.texture = load(VocabLists.textureDict.get(word))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	set_axis_velocity(Vector2(0, 10))
	if $Word.text == $"../..".typedWord:
		VocabLists.Category.append(word)
		particles.emitting = true
		particles.global_position = global_position
		$"../../Particles".add_child(particles)
		self.queue_free()


func _on_tree_exiting() -> void:
	$"../..".updateScore(50)
