// DADOS SOBRE PAI
pai = noone
//

// DADOS SOBRE CRESCENDO
crescendo_time = 500
crescendo_time_timer = 0
cresceu = 0
plantou = 0
//


function coletando(){
	if place_meeting(x,y,obj_player)
	{
	pai.coletaveis_pegos +=1 
	obj_player.estado_level_up = 1
		with(pai)
		{
		spaw_coletavel()
		obj_COBAIA_GERADOR_DE_INIMIGO_V2.dificuldade += 1
		}
		with(obj_COBAIA_GERADOR_DE_INIMIGO_V2)
		{
		dificuldade_spawner_scale_check()
		}
	instance_destroy()
	}
}
	
function function_crescendo(){
crescendo_time_timer = min(crescendo_time_timer+1,crescendo_time)

	if crescendo_time_timer = crescendo_time 
	{
	cresceu = 1
	}
}

function function_plantou(){
	if place_meeting(x,y,obj_player)
	{
	plantou=1
	}
}


image_alpha = 0