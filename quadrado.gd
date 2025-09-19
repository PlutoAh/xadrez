extends Node
class_name quadrado

var traducao = [Vector2(0,-1),Vector2(1,-1),Vector2(1,0),Vector2(1,1),Vector2(0,1),Vector2(-1,1),Vector2(-1,0),Vector2(-1,-1)]
var tab:tabuleiro
var minha_peca:peca = null
var coord := Vector2(0,0)

func comando(cmd):
	if cmd is Vector2:
		var a = tab.getquadrado(coord+cmd)
		if checkquad(a): tab.disponivel.append(a)
	else:
		var a = tab.getquadrado(coord+traducao[cmd])
		if checkquad(a):
			tab.disponivel.append(a)
			a.comando(cmd)

func checkquad(quad:quadrado):
	if quad and quad.minha_peca == null:
		return true
	return false
