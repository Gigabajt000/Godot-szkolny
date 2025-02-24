extends TextureRect

@export var image_size := Vector2i(128, 128)
@export_range(1, 10) var brush_size := 4
var image: Image

func _ready() -> void:
	image = Image.create(image_size.x, image_size.y, false, Image.FORMAT_RGBA8)
	image.fill(Color.WHITE)
	texture = ImageTexture.create_from_image(image)


func _process(delta: float) -> void:
	if Input.is_action_pressed("draw"):
		var mouse_position : Vector2i = get_local_mouse_position()
		for x in brush_size:
			for y in brush_size:
				image.set_pixelv(mouse_position + Vector2i(x - brush_size/2, y - brush_size/2), Color.BLACK)
		texture = ImageTexture.create_from_image(image)
