extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var lookDir = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("idleAnim")


func _input(event):
	if event.is_action_pressed("aKey"):
		lookDir = 0
	elif event.is_action_pressed("dKey"):
		lookDir = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if lookDir == 1:
		get_node( "." ).set_flip_h(false)
		#attack
	else:
		get_node( "." ).set_flip_h(true)
		#attack
