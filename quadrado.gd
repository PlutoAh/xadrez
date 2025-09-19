extends Node2D
class_name quadrado

var traducao = [Vector2(0,-1),Vector2(1,-1),Vector2(1,0),Vector2(1,1),Vector2(0,1),Vector2(-1,1),Vector2(-1,0),Vector2(-1,-1)]
var tab:tabuleiro
var minha_peca:peca = null
var coord := Vector2(0,0)

func comando(cor, cmd):
	if cmd is Vector2:
		var a = tab.getquadrado(coord+cmd)
		if checkquad(cor, a): tab.disponivel.append(a)
	else:
		var a = tab.getquadrado(coord+traducao[cmd])
		if checkquad(cor, a):
			tab.disponivel.append(a)
			a.comando(cor, cmd)
	return

func checkquad(cor, quad:quadrado):
	if quad:
		if quad.minha_peca == null:
			return true
		elif quad.minha_peca.cor != cor:
			tab.disponivel.append(quad)
	return false

func pose():
	position = Vector2(-4*32+coord.x*32+16,-4*32+coord.y*32+16)
