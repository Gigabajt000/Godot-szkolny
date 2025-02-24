extends Node2D

@export var source: TextureRect
@export var target: TextureRect
@export var label: Label

func _ready() -> void:
	pass


func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	var source_image := target.texture.get_image()
	var target_image := target.texture.get_image()
	var metrics := source.texture.get_image().compute_image_metrics(target_image, true)
	label.text = str(metrics)
