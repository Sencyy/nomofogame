/*
Esse objeto serve para que antes de spawnar um projetil, ele 
passe por checks, para aplicar buffs especificos nele. 
*/  


// DADOS DO PLAYER
player = noone // Id do player para pegar variaveis do player
direcao = 0


// DADOS GERAIS DO PROJETIL 
velocidade = 0





function gerar_bala(){
var bala = instance_create_layer(x,y,"camada_baixo",obj_player_tiro)

bala.dir = player.direcao_bala // direcao da bala que está no player 
bala.spd = player.bala_spd //dano da bala que está no player
bala.dano = player.bala_dano // spd da bala que está no player 

bala.list_bala_type = player.bala_tipo
ds_list_copy(bala.list_bala_buffs,player.buffs) // colando a lista de buffs do player PARA a bala.
}