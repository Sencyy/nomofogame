// DADOS DA BALA 
spd = 5
dir = 0
dano = 0
sprite = noone
//

// DADOS LIST'S 
list_bala_type = 0
list_bala_buffs = ds_list_create()
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
		script_destroy_bala(list_bala_buffs) // DESTROY BALA
		}
		else
		{

		}
	}
}




