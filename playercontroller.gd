extends KinematicBody


# Declare member variables here. Examples:
export (int) var p_speed
export (Vector3) var startPos
var velocity = Vector3() 


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _move():
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("up"):
		velocity.y += 1
	if Input.is_action_pressed("down"):
		velocity.y -= 1
	if Input.is_action_pressed("jump"):
		velocity.z += 1
	velocity = velocity.normalized()

func _physics_process(delta):
	_move()
	velocity = move_and_slide(velocity)

func _kill():
	pass
