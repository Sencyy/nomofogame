// DADOS DA BALA 
spd = 5
dir = 0
dano = 0
sprite = noone
life_time = 0
//


// DADOS DO TRAJETO DA BALA
life_time_timer = 0
//

// DADOS LIST'S 
list_bala_type = 0
list_bala_efeitos = ds_list_create()
//

// COLISÃO DADOS
single_or_area = 0 // essa bala se ela dá dano em area ou não 
inimigos_atingidos_list = ds_list_create()


atravessa = 0 // essa bala se ela atravessa os inimigo ou não 
atravessa_quantos = 0 // quantos inimigos seram atravessados 
inimigos_atravessados_list = ds_list_create()



alvo = noone // quem vai ser o alvo que será checado para colisão  
//


function colisao(){
	if place_meeting(x,y,alvo)
	{
		if atravessa = 0
		{
			if single_or_area = 0
			{
			var inimigo = instance_place(x,y,alvo)
			inimigo.hp -= dano
			
			}
			if single_or_area = 1
			{
			instance_place_list(x,y,alvo,inimigos_atingidos_list,false)
				for(i=0; i < ds_list_size(inimigos_atingidos_list);i++)
				{
				var inimigo_especifico = inimigos_atingidos_list[|i]
				inimigo_especifico.hp -= dano
				}
			}
		script_destroy_bala(list_bala_efeitos) // DESTROY BALA
		tocar_som_colisao()
		}
		else
		{
			//if single_or_area = 1
			{
			var colididos_list = ds_list_create()
			instance_place_list(x,y,alvo,colididos_list,false)
			
				for(i=0;i<ds_list_size(colididos_list);i++)
				{
					if ds_list_find_index(inimigos_atingidos_list,colididos_list[|i]) = -1
					{
					var inimigo_especifico = colididos_list[|i]
					inimigo_especifico.hp -= dano
					atravessa_quantos -= 1
					ds_list_add(inimigos_atingidos_list,inimigo_especifico)
					tocar_som_colisao_atravessou()
					}
				}
			ds_list_destroy(colididos_list)
			}
			
			if atravessa_quantos <= 0
			{
			script_destroy_bala(list_bala_efeitos)
			tocar_som_colisao()
			}
		}
	}
}


function tempo_para_se_destruir(){
life_time_timer += 1 
	if life_time_timer >= life_time
	{
	script_destroy_bala(list_bala_efeitos)
	}

}
	
	
function tocar_som_colisao(){
randomize()
som_pra_tocar = choose(snd_bala_atingiu_colidiu_1,snd_bala_atingiu_colidiu_2)
audio_play_sound(som_pra_tocar,10,false)
}

function tocar_som_colisao_atravessou(){
randomize()
som_pra_tocar = choose(snd_bala_atingiu_atravessou_1,snd_bala_atingiu_atravessou_2)
audio_play_sound(som_pra_tocar,1,false)
}