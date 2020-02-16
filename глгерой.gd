extends KinematicBody2D
var velocity = Vector2()
const Speed = 650
const Gravity = 1200
const Jamp = 1400
const Flor = Vector2(0,-1)

func animate():
	var anim = 'idle'
	
	if velocity.y and not $RayCast2D.is_colliding():
		

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		velocity.x = -Speed
	elif Input.is_action_pressed("ui_right"):
		velocity.x = Speed
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -Jamp
	else:
		velocity.y = Gravity
		velocity.x = 0
	move_and_slide(velocity)
