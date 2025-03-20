extends Area2D

@export var next_level: String = "res://scenes/level2.tscn"

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		body.set_physics_process(false)  # Stops physics updates
	$AnimationPlayer.play("fruit_collect")

# Called by animation player
func change_scene() -> void:
	get_tree().change_scene_to_file(next_level)
