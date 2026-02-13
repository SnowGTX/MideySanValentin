extends CanvasLayer

class_name HUD

var textBox : MarginContainer

var textBoxText : Label

var textPoints : Label

var audio_text : AudioStreamPlayer2D


func _ready() -> void:
	textBox = self.get_node("TextBox")
	textBoxText = self.get_node("TextBox/Label")
	textPoints = self.get_node("MarginContainer/HBoxContainer/Label")
	audio_text = self.get_node("AudioStreamPlayer2D")
	
	
func textbox_set_visibility(parametro : bool):
	if parametro == true:
		textBox.visible = true
	if parametro == false:
		textBox.visible = false

func set_text_textbox(texto : String):
	var tween = get_tree().create_tween()
	audio_text.play()
	textBoxText.visible_characters = 0
	textBoxText.text = texto
	tween.tween_property(textBoxText, "visible_characters", texto.length(), 2.0)
	await tween.finished
	audio_text.stop()
	
	

func add_point(cantidad : int):
	if globals.points < 100:
		globals.points += cantidad
		textPoints.text = str(globals.points) + "/100"
	
