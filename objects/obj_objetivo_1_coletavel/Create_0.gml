// DADOS SOBRE PAI
pai = noone
//

// DADOS SOBRE CRESCENDO
crescendo_time = 300
crescendo_time_timer = 0
cresceu = 0
//


function coletando(){
	if place_meeting(x,y,obj_player)
	{
	pai.coletaveis_pegos +=1 
	obj_player.estado_level_up = 1
		with(pai)
		{
		spaw_coletavel()
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


image_alpha = 0