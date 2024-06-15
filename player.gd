extends CharacterBody2D
class_name player

signal UpdateStats(Oxygen,Energy,speed)

var Oxygen = 100
var Energy = 69


var MaxSpeed = 80 # move speed in pixels/sec
var Acclereration = 10
var friction = 1
var rotation_speed = 1.5  # turning speed in radians/sec
var vel = Vector2(0,0)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	emit_signal("UpdateStats",Oxygen,Energy,velocity)

func _physics_process(delta):
	var move_input = Input.get_axis("down", "up")
	var rotation_direction = Input.get_axis("left", "right")
	velocity = velocity + (transform.x * move_input * Acclereration)
	var current_speed = velocity.length()
		# Calculate friction force
	var friction_force = velocity * -friction
	# Update velocity
	var new_vel = velocity + friction_force * delta
	
	# Ensure velocity doesn't reverse direction due to friction # MAGIC CODE FROM CHATGPT
	if current_speed > 0 and new_vel.length() > current_speed:
		new_vel = Vector2(0, 0)
	#End of magic code
	if current_speed > MaxSpeed:
		velocity = velocity.normalized() * MaxSpeed
	
	rotation += rotation_direction * rotation_speed * delta # rotates ship
	velocity = new_vel
	move_and_slide()
