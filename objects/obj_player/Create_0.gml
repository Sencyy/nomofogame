var controle = instance_create_layer(x,y,"camada_baixo",obj_controle)
controle.player = self


// ESTADOS 
estado_andando = 0
estado_atacando = 0
estado_morto = 0
//

// DADOS SOBRE VIDA
hp = 30
//

// DADOS DE ANDANDO 
spd = 8
spX = 0
spY = 0
//

// DADOS DE ATAQUE
cd = 60
cd_timer = 0
direcao_bala = 0
//

// DADOS BUFFS
buffs = ds_list_create()
enum possiveis_buffs{
    FOGO,
    FREEZE
}
// 

// DADOS BALA TIPO 
bala_tipo = balas_type.NORMAL
bala_spd = 6
bala_dano = 5

enum balas_type{
    NORMAL,
    ANOMAL,
}
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
	//show_debug_message(estado_atacando)
	cd_timer = cd
	estado_atacando = 0
	
	direcao_check()
	var ataque = instance_create_layer(x,y,"camada_baixo",obj_gerador_de_balas)
	ataque.player = self // dando sua id para o gerador de bala
	ataque.direcao = direcao_bala 
	ataque.alvo = obj_inimigo_pai // O PROJETIL VAI COLIDIR NOS INIMIGOS
	}
}

function contando_cd(){ // tá reduzind o cd
cd_timer = max(cd_timer-1,0)
}


function morri_check(){
	if hp <= 0{
	estado_morto = 1
	}
} 

function direcao_check(){
	direcao_bala = point_direction(x,y,mouse_x,mouse_y)
}




