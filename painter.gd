extends TextureRect

@export var image_size := Vector2i(128, 128)
var image: Image

func _ready() -> void:
	image = Image.create(image_size.x, image_size.y, false, Image.FORMAT_RGBA8)
	image.fill(Color.WHITE)
	texture = ImageTexture.create_from_image(image)


func _process(delta: float) -> void:
	pass
