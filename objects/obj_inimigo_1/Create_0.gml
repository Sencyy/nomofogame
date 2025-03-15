// DADOS SOBRE ANDAR
alvo = noone 

dir_to_player =  0 
spd = 4
//

// DADOS SOBRE ATAQUE 
estado_ataque = false
//





function walking_old(){ // andar antigo
pos_inicial_x = x
pos_inicial_y = y

direcao = false // false: esquerda  true: direita
velocidade = 1

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
}
	
function dir_do_player(){ // pegando o player mais proximo E sua direção 

alvo = instance_nearest(x,y,obj_player)
dir_to_player = point_direction(x,y,alvo.x,alvo.y)
}
	
function walking_new(){
var spX = lengthdir_x(spd,dir_to_player) //  "lengthdir" pega tambem na diagonal, olha no draw pra tu entender melhor
var spY = lengthdir_y(spd,dir_to_player) //	 "spX" é o valor que ele vai andar em X

x += spX 
y += spY
}