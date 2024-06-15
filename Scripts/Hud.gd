extends CanvasLayer
class_name ui

@onready var debug = $VBoxContainer/debug




# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	debug.text = "FPS: "+str(Engine.get_frames_per_second())

# Updates Labels like Oxygen and Energy
func _update_ui():
	pass


func _on_body_update_stats(Oxygen, Energy,speed):
	pass
