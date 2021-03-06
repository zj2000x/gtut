extends RigidBody2D

export var min_speed := 150
export var max_speed := 250

func _ready() -> void:
	var mob_types: PoolStringArray = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]


func _on_VisibilityNotifier2D_screen_exited() -> void:
	queue_free()
