extends State

func handle_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump") and self.owner.is_grounded:
		self.emit_signal("finished", "jump")
		return

func enter() -> void:
	self.owner.anim.play("idle")

func update(delta: float) -> void:
	if self.owner.move_direction != 0:
		self.emit_signal("finished", "run")
		return

	if self.owner.is_falling():
		emit_signal("finished", "falling")
		return

func exit() -> void:
	pass
