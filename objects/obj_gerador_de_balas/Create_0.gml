/*
Esse objeto serve para que antes de spawnar um projetil, ele 
passe por checks, para aplicar efeitos especificos nele. 
*/  


// DADOS DO PLAYER
player = noone // Id do player para pegar variaveis do player
direcao = 0
//

// DADOS GERAIS DO PROJETIL 
velocidade = 0
single_or_area = 0
atravessa = 0
atravessa_quantos = 0
alvo = noone // quem vai ser o alvo que será colidido
sprite = noone
bala_time = 0
//

// DADOS DO GERADOR DE BALAS
spawn_bala_mount = 1 // quantidade de balas extras disparadas duma vez

spawn_bala_mount_time = 5
spawn_bala_mount_time_timer = 0


spawn_bala_escopeta_quantia = 0 //balas extras que serão atiradas (tipo uma escopeta)

spawn_bala_escopeta_direction = 0 // direcao diferente por projetil novo 
spawn_bala_escopeta_maisoumenos = 1 // valor do "spawn_bala_escopeta_direction" se é positivo ou negativo
spawn_bala_escopeta_ii = 0 // base do "i" so que usado para evitar que a dispersão fique estranha 
//


// Se o ataque so pega em um OU em area 
// Single = 0
// Area = 1




function gerar_bala(){
for(i=0;i <= spawn_bala_escopeta_quantia;i++)
{		
	spawn_bala_escopeta_direction = (spawn_bala_escopeta_ii * 20) * spawn_bala_escopeta_maisoumenos
	var bala = instance_create_layer(x,y,"camada_baixo",obj_player_tiro)

	bala.dir = player.direcao_bala + spawn_bala_escopeta_direction // direcao da bala que está no player 
	bala.spd = player.bala_spd  // spd da bala que está no player 
	bala.single_or_area = single_or_area
	bala.alvo = alvo
	bala.sprite = sprite
	bala.atravessa = atravessa
	bala.atravessa_quantos = atravessa_quantos

	bala.dano = player.bala_dano //dano da bala que está no player
	bala.life_time = bala_time

	bala.list_bala_type = player.bala_tipo
	ds_list_copy(bala.list_bala_efeitos,player.efeitos) // colando a lista de efeitos do player PARA a bala.
	
	spawn_bala_escopeta_maisoumenos = -spawn_bala_escopeta_maisoumenos
	
		if i-2*spawn_bala_escopeta_ii >= 0
		{
		spawn_bala_escopeta_ii += 1
		}
}
// resetando as especificações do projetil escopeta 
spawn_bala_escopeta_direction = 0
spawn_bala_escopeta_ii = 0
spawn_bala_escopeta_maisoumenos = 1
}


function tocar_som_disparo(){
randomize()
som_pra_tocar = choose(snd_bala_disparou_1,snd_bala_disparou_2,snd_bala_disparou_3)
audio_play_sound(som_pra_tocar,1,false)
}

