extends CharacterBody2D
class_name player

signal MySignal(Oxygen,Energy)

@export var Oxygen = 100
@export var Energy = 69


var speed = 400  # move speed in pixels/sec
var rotation_speed = 1.5  # turning speed in radians/sec

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	emit_signal("MySignal",Oxygen,Energy)

func _physics_process(delta):
	var move_input = Input.get_axis("down", "up")
	var rotation_direction = Input.get_axis("left", "right")
	velocity = transform.x * move_input * speed
	rotation += rotation_direction * rotation_speed * delta
	move_and_slide()
