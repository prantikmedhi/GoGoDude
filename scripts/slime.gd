extends Node2D

const SPEED=60
var direction = 1

@onready var raycast_right: RayCast2D = $RaycastRight
@onready var raycast_left: RayCast2D = $RaycastLeft


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta): 
	if raycast_right.is_colliding():
		direction = -1
	if raycast_left.is_colliding():
		direction = 1
	position.x += direction * SPEED * delta
