extends Control


func _on_start_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/jogo.tscn")# Replace with function body.


func _on_credits_btn_pressed() -> void:
	pass # Replace with function body.


func _on_quit_btn_pressed() -> void:
	get_tree().quit()# Replace with function body.
