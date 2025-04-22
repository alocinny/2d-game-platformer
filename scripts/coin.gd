extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.has_method("adicionar_moeda"):
		$AudioStreamPlayer2D.play()
		body.adicionar_moeda()
		hide()
		await $AudioStreamPlayer2D.finished
		queue_free()
		
