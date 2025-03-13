if (x == (pos_inicial_x + 100)) {
	direcao = false	
} else if (x == (pos_inicial_x - 100)) {
	direcao = true
}

if (!direcao) { // se a direcao for direita
	x += velocidade	
} else {
	x -= velocidade	
}