extends Sprite2D
class_name tabuleiro

const QUADRADO = preload("uid://ckqwr5tlcguvk")

var quadrados := []

var disponivel = []

func _ready() -> void:
	var branco = false
	for i in 8:
		quadrados.append([])
		branco = not branco
		for j in 8:
			var a = QUADRADO.instantiate()
			add_child(a)
			a.tab = self
			a.coord = Vector2(i,j)
			a.pose()
			quadrados[i].append(a)
			branco = not branco
			if branco:
				a.modulate = Color(0.699, 0.732, 0.824, 1.0)

func getquadrado(coord:Vector2):
	if coord.x >= 0 and coord.x < 8 and coord.y >= 0 and coord.y < 8:
		return quadrados[coord.x][coord.y]
	return null
