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

// DADOS BUFF DE ATRIBUTOS 

// Vai ter uma array aqui que vai guardar os valores de dano extra/ spd extra e etc
// agr tem a variavel "bala_dano_pai"

//

// DADOS EFEITOS
efeitos = ds_list_create()
enum possiveis_efeitos{
    FOGO,
    FREEZE
}
// 

// DADOS BALA TIPO 
bala_tipo = balas_type.NORMAL
bala_spd = 11 // spd que será enviado no final
bala_dano = 5 // dano que será enviado no final

bala_dano_pai =  bala_dano // base para aplicar os buff de dano
bala_spd_pai = bala_spd // base para aplicar os buff de spd

bala_atravessa = 1
bala_atravessa_quantos = 2
bala_quantia_de_balas = 0 // possivel buff
bala_quantia_de_tiros = 1 // possivel buff

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
	
	var ataque = instance_create_layer(x,y,"camada_baixo",obj_gerador_de_balas)
	ataque.player = self // dando sua id para o gerador de bala
	ataque.direcao = direcao_bala 
	ataque.alvo = obj_inimigo_pai // O PROJETIL VAI COLIDIR NOS INIMIGOS
	ataque.sprite = spr_player_tiro
	
	ataque.spawn_bala_escopeta_quantia = bala_quantia_de_balas
	ataque.spawn_bala_mount = bala_quantia_de_tiros
	ataque.atravessa = bala_atravessa
	ataque.atravessa_quantos = bala_atravessa_quantos
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




