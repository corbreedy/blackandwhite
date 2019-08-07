extends KinematicBody2D


var motion = Vector2(10,10)


func _ready():
	move_and_slide(motion)

func get_input():
	if Input.is_action_pressed('right'):
		motion.x=10
		motion.y=0
	
func _physics_process(delta):
    get_input()
    move_and_slide(motion)