extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		body.set_physics_process(false)  # Stops physics updates
	$AnimationPlayer.play("fruit_collect")

# Called by animation player
func change_scene() -> void:
	get_tree().change_scene_to_file("res://scenes/level2.tscn")
