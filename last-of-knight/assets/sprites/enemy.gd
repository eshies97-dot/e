extends Node2D


# Called when the node enters the scene tree for the first time.
const SPEED=60
var direction=1
@onready var right: RayCast2D = $right
@onready var left: RayCast2D = $left

func _process(delta: float) -> void:
	if right.is_colliding():
		direction=-1
	if left.is_colliding():
		direction=1
	
	position.x += direction * SPEED * delta

# Called every frame. 'delta' is the elapsed time since the previous frame.
