extends Sprite2D
class_name tabuleiro

const quad = preload("res://quadrado.gd")
var quadrados := []

var disponivel = []

func _ready() -> void:
	for i in 8:
		quadrados[i] = []
		for j in 8:
			var a = Node.new()
			add_child(a)
			a.set_script(quad)
			a.tab = self
			a.coord = Vector2(i,j)
			quadrados[i].append(a)

func getquadrado(coord:Vector2):
	if coord.x >= 0 and coord.x < 8 and coord.y >= 0 and coord.y < 8:
		return quadrados[coord.x][coord.y]
	return null
