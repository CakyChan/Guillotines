extends CharacterBody2D

var SPEED = 150.0
@onready var timer: Timer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_joy_button_pressed(0,JOY_BUTTON_LEFT_SHOULDER):
		floor_constant_speed
		velocity.x = 1 + SPEED
		timer.start()
	elif timer.is_stopped():
		velocity.x = 1 + -SPEED
	else:
		velocity.x = 0
	move_and_slide()
	
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)

func _on_timer_timeout():
	pass # Replace with function body.
