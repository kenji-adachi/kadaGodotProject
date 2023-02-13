extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("idleAnim") #start idle


func _input(event):
	if event.is_action_pressed("aKey"):
		get_node( "myAnimateSprite" ).set_flip_h(true) #Face player left
		#attack
		$AnimationPlayer.stop() #prevent delay in next attack if time between attacks too fast (Needs Adjusting)
		$AnimationPlayer.play("attackAnim")
	elif event.is_action_pressed("dKey"):
		get_node( "myAnimateSprite" ).set_flip_h(false) #Face Player Right
		#attack
		$AnimationPlayer.stop() #prevent delay in next attack if time between attacks too fast (Needs Adjusting)
		$AnimationPlayer.play("attackAnim")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $AnimationPlayer.is_playing(): #check if attack animation in progress
		pass
	else: #If attack done, then return to idle
		$AnimationPlayer.play("idleAnim")
