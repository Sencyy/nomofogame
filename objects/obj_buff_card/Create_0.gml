player = noone
gerador_de_buff_pai = noone
buff_type = noone
buff_escolhido = []



function destroy_tudo()
{
player.level += 1
player.estado_level_up = 0
instance_destroy(gerador_de_buff_pai)
instance_destroy(obj_buff_card)
}


function dando_buff_pro_player(){
	if buff_type = 0 // do tipo normal
	{
		if buff_escolhido[0] = 1
		{
		player.bala_dano += 2 
		}
		
		if buff_escolhido[0] = 2
		{
		player.bala_spd += 5
		}
		
		if buff_escolhido[0] = 3
		{
		player.bala_quantia_de_balas += 1
		}
		
		if buff_escolhido[0] = 4
		{
		player.bala_atravessa = 1
		player.bala_atravessa_quantos += 1
		}
		
		if buff_escolhido[0] = 5
		{
		player.bala_quantia_de_tiros += 2
			if player.bala_quantia_de_tiros_time_per_shot >= 3
			{
			player.bala_quantia_de_tiros_time_per_shot -= 1
			}
		}
	}

	if buff_type = 1 // do tipo atributo
	{

	}

	if buff_type = 2 // do tipo efeito
	{

	}
	
}