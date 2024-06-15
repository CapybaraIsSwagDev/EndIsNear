extends CanvasLayer
class_name ui

@onready var oxygen_label = $VBoxContainer/OxygenLabel
@onready var energy_label = $VBoxContainer/EnergyLabel
@onready var debug = $VBoxContainer/debug




# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Updates Labels like Oxygen and Energy
func _update_labels(Oxygen,Energy,speed):
	oxygen_label.text = "Oxygen: " + str(Oxygen)
	energy_label.text = "Energy: " + str(Energy)
	debug.text = str(speed)


func _on_body_update_stats(Oxygen, Energy,speed):
	_update_labels(Oxygen,Energy,speed)
