extends RigidBody2D

@export var speed := 10.0
var direction : Vector2
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if(Input.is_action_pressed("left")):
		direction.x = -1
	if(Input.is_action_pressed("right")):
		direction.x = 1
	if(Input.is_action_just_pressed("jump")):
		apply_impulse(Vector2.UP * 1000)
		
	apply_force(direction * speed)
	direction = Vector2.ZERO
