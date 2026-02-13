extends Control

@export var control_hud : HUD
@export var character : TextureRect
@export var character_sounds : AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event: InputEvent) -> void:
	if event is InputEventScreenTouch || event is InputEventMouseButton:
		if event.is_pressed():
			control_hud.add_point(1)
			check_points()

func check_points():
	if globals.points == 2:
		control_hud.set_text_textbox("Jejeje, ¿Que sucede?")
	if globals.points == 10:
		control_hud.set_text_textbox("¿Te gusta mucho tocarme, princesa? Tss.. no va a ser gratis")
	if globals.points == 20:
		control_hud.set_text_textbox("Que mona")
	if globals.points == 30:
		control_hud.set_text_textbox("Vaya, vaya, no te detienes eh")
	if globals.points == 40:
		control_hud.set_text_textbox("Mmmmmm....")
	if globals.points == 50:
		character.texture = globals.faces["Sonrojado"]
		control_hud.set_text_textbox("Hey... Detente me haces cosquillas")
	if globals.points == 70:
		character.texture = globals.faces["Demasido"]
		control_hud.set_text_textbox("Ohh... oh... para... por favor...")
	if globals.points == 80:
		control_hud.set_text_textbox("Si sigues asi me derretire...")
	if globals.points == 90:
		control_hud.set_text_textbox("Eres realmente malvada....., ¿lo sabias?")
	if globals.points == 100:
		control_hud.set_text_textbox("Maldicion... me ganaste... soy todo tuyo...")
	
