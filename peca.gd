extends Node
class_name peca

enum c{
	branco,
	preto
}

var cor:= c.branco
var valor:= 0
var quad: quadrado = null
var movimento:= []

func selecionar():
	for i in movimento:
		await quad.comando(cor, i)
	# nessa linha, todos os quadrados disponiveis devem estar na array do tabuleiro e prontos pra acender
