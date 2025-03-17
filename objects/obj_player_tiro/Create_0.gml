// DADOS DA BALA 
spd = 5
dir = 0
dano = 0

// DADOS LIST'S 
list_bala_type = 0
list_bala_buffs = ds_list_create()

// COLISÃO DADOS
single_or_area = 0 // essa bala se ela dá dano em area ou não 
atravessa = 0 // essa bala se ela atravessa os inimigo ou não 
atravessa_quantos = 0 // quantos inimigos seram atravessados 
alvo = noone // quem vai ser o alvo que será colidido 

function colisao(){
	if place_meeting(x,y,alvo)
	{
	show_debug_message(alvo)
		if atravessa = 0
		{
			if single_or_area = 0
			{
			var inimigo = instance_place(x,y,alvo)
			inimigo.hp -= dano
			script_destroy_bala(list_bala_buffs) // DESTROY BALA
			}
			if single_or_area = 1
			{
		
			}
		}
		else
		{
		
		}
	}
}




