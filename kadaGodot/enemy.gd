extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var runSpeed = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("running")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position = self.position + Vector2(runSpeed, 0)
