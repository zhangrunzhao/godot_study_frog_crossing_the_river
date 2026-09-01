extends CharacterBody2D

var direction: Vector2 = Vector2(1,0)
var speed := 200

func _physics_process(_delta: float) -> void:
	direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	move_and_slide()
	
	if Input.is_action_just_pressed("confirm"):
		print("something")
