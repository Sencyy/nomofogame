var controle = instance_create_layer(x,y,"camada_baixo",obj_controle)
controle.player = self


// ESTADOS 
estado_andando = 0
estado_atacando = 0
//

// DADOS DE ANDANDO 
spd = 8
spX = 0
spY = 0
//

// DADOS DE ATAQUE
cd = 60
cd_timer = 0
//

function vou_andar(){ // Andando com as informações dada no "controle"
	if estado_andando = 1
	{
	x += spX
	y += spY
	}
}

function vou_atacar(){ // Criando a instancia do "gerador_de_balas", checando se o player...
					   // está no estado ataque e se seu cd está 0.
					   
	if estado_atacando = 1 && cd_timer = 0
	{
	show_debug_message(estado_atacando)
	cd_timer = cd
	estado_atacando = 0
	
	var ataque = instance_create_layer(x,y,"camada_baixo",obj_gerador_de_balas)
	ataque.player = self // dando sua id para o gerador de bala
	}
}

function contando_cd(){ // tá reduzind o cd
cd_timer = max(cd_timer-1,0)
}






