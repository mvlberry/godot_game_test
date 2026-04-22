extends CharacterBody2D

@export var speed = 1000.0  # 必须有这一行！

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed
	move_and_slide()
	print("当前位置: ", global_position)
