extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.has_method("adicionar_moeda"):
		body.adicionar_moeda()
		queue_free()
