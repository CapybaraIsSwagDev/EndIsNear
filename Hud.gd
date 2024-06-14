extends CanvasLayer
class_name ui


@onready var Oxygen_label = %VBoxContainer/Oxygen
@onready var Energy_label = %VBoxContainer/Energy

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Updates Labels like Oxygen and Energy
func _update_labels(Oxygen,Energy):
	Oxygen_label.text = "Oxygen: " + str(Oxygen)
	Energy_label.text = "Energy: " + str(Energy)  # Replace with actual energy value if needed)


func _on_signal(Oxygen, Energy):
	_update_labels(Oxygen,Energy)
