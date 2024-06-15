extends CharacterBody2D
class_name player

signal UpdateStats(Oxygen,Energy,speed)

var Oxygen = 100
var Energy = 69


var speed = 10  # move speed in pixels/sec
var Acclereration = 1
var friction = 0.1
var rotation_speed = 1.5  # turning speed in radians/sec
var vel = Vector2(0,0)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	emit_signal("UpdateStats",Oxygen,Energy,vel)

func _physics_process(delta):
	var move_input = Input.get_axis("down", "up")
	var rotation_direction = Input.get_axis("left", "right")
	vel = vel + (transform.x * move_input * Acclereration)
		# Calculate friction force
	var friction_force = vel * -friction
	# Update velocity
	var new_vel = vel + friction_force * delta
	
	# Ensure velocity doesn't reverse direction due to friction
	if vel.length() > 0 and new_vel.length() > vel.length():
		new_vel = Vector2(0, 0)
	
	
	rotation += rotation_direction * rotation_speed * delta
	velocity = new_vel
	vel = new_vel
	new_vel = Vector2(0,0)
	move_and_slide()
