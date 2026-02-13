extends Control


func _on_button_pressed() -> void:
	var scene = load("res://Scenes/level1.tscn")
	get_tree().root.add_child(scene.instantiate())
	get_tree().current_scene.queue_free()
	
