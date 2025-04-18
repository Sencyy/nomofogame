var controle = instance_create_layer(x,y,"camada_baixo",obj_controle)
controle.player = self


// ESTADOS 
estado_andando = 0
estado_atacando = 0
estado_morto = 0
estado_level_up = 0
estado_dialago = 0
//

// cobaia lv up
level = 0
level_to_up = 5
level_timer = 0
//

// DADOS SOBRE TROCA DE SPR
size_sprite = 0.6
//

// DADOS SOBRE VIDA
hp = 5
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

bala_atravessa = 0
bala_atravessa_quantos = 1
bala_quantia_de_balas = 0 // possivel buff
bala_quantia_de_tiros = 1 // possivel buff
bala_quantia_de_tiros_time_per_shot = 5

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
	ataque.spawn_bala_mount_time = bala_quantia_de_tiros_time_per_shot
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

function level_up(){
	if estado_level_up = 1
	{
	instance_destroy(obj_gerador_de_balas)
	instance_destroy(obj_player_tiro)
	instance_destroy(obj_inimigo_pai) // cobaia
	
		if !instance_exists(obj_gerador_de_buffs)
		{
		var gerador_de_buff = instance_create_layer(x,y,"camada_cima",obj_gerador_de_buffs)
		gerador_de_buff.player = self
		
		
		image_xscale = size_sprite
		image_yscale = size_sprite
		image_speed = 0
		sprite_index = spr_player_idle
		image_index = 0
		}
		else
		{
		image_xscale = size_sprite
		image_yscale = size_sprite
		}
	}
}

function nao_fugir_da_sala(){
	if x+spX < 32
	{
	x = max(x, 32);
	spX = 0
	}
	
	if y+spY < 32
	{
	y = max(y, 32);
	spY = 0
	}
	
	if x+spX > room_width-32 
	{
	x = min(x,room_width-32);	
	spX =0 
	}
	
	if y+spY > room_height-32
	{
	y = min(y,room_height-32);
	spY =0
	}
	

}

function COBAIA_lv_up()
{
	if level_timer >= level_to_up
	{
	estado_level_up = 1
	level_to_up += 4 + level_to_up/3
	}
}

function colisao_na_parede_invisivel(){

	if place_meeting(x+spX,y,obj_parede_invisivel)
	{
		while !place_meeting(x+sign(spX),y,obj_parede_invisivel)
		{
		x +=sign(spX)
		}
	spX = 0
	}
	if place_meeting(x,y+spY,obj_parede_invisivel)
	{
		while !place_meeting(x,y+sign(spY),obj_parede_invisivel)
		{
		y += sign(spY)
		}
	spY = 0
	}


}
	
function trocando_spr(){
	if spY > 0
	{
	sprite_index = spr_player_walking_down
	image_speed = 1
	image_xscale = size_sprite
	image_yscale = size_sprite
	}
	if spY < 0
	{
	sprite_index = spr_player_walking_up
	image_speed = 1
	image_xscale = size_sprite
	image_yscale = size_sprite
	}
	
	if spX > 0
	{
	sprite_index = spr_player_walking_vertical
	image_speed = 1
	image_xscale = size_sprite
	image_yscale = size_sprite
	}
	if spX < 0
	{
	sprite_index = spr_player_walking_vertical
	image_speed = 1
	image_xscale = -size_sprite
	image_yscale = size_sprite
	}
	
	
	if spX = 0 && spY = 0
	{
	image_speed = 0
	sprite_index = spr_player_idle
	image_index = 0
	image_yscale = size_sprite
	image_xscale = size_sprite
	}
}
	
function morri_animaton(){
sprite_index = spr_player_morto
image_xscale = size_sprite
image_yscale = size_sprite
}
	
function criando_meiodacamera(){
	if !instance_exists(obj_meiodacamera)
	{
	var xis = x//window_get_width()/5 + x
	var yip =  y 
	var meiodacamera = instance_create_layer(xis,yip,"camada_cima",obj_meiodacamera)
	meiodacamera.player = self 
	}
	else
	{
	var meiodacamera = instance_nearest(x,y,obj_meiodacamera)
	meiodacamera.spxply = spX
	meiodacamera.spyply = spY
	}
}
criando_meiodacamera()