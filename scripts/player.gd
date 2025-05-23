extends CharacterBody2D

@onready var hud = $"../hud/moeda"

const SPEED = 130.0
const JUMP_VELOCITY = -300.0
var moedas_coletadas: int = 0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
	


func adicionar_moeda(valor: int = 1):
	moedas_coletadas += valor
	hud.text = "MOEDAS: %d" %moedas_coletadas
	
	#var hud = get_tree().get_current_scene().get_node("HUD")
	#hud.atualizar_moedas(moedas_coletadas)


	
	
	
