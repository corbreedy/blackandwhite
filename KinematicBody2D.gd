extends KinematicBody2D


var velocity = Vector2()
var speed=200


func _ready():
	move_and_slide(Vector2(100,100))

func get_input():
	var motion =Vector2()
	if Input.is_action_pressed('right'):
		motion.x+=1
	if Input.is_action_pressed('left'):
		motion.x-=1
	if Input.is_action_pressed('up'):
		motion.y-=1
	if Input.is_action_pressed('down'):
		motion.y+=1
	velocity=motion.normalized()*speed
	
	
func _physics_process(delta):
	get_input()
	move_and_collide(velocity*delta)

	
	