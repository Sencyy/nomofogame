function destruido(){

var _zona_random 

with(obj_COBAIA_GERADOR_DE_INIMIGO_V2)
{
_zona_random = zona_get_random()
}


var spaw_x
var spaw_y

spaw_x = irandom_range(_zona_random[1],_zona_random[3])
spaw_y = irandom_range(_zona_random[2],_zona_random[4])

	if spaw_x > 1800 
	{
	spaw_x -= 200
	}
	if spaw_x < 200
	{
	spaw_x += 200
	}
	
	if spaw_y > 1800
	{
	spaw_y -= 200
	}
	if spaw_y < 200
	{
	spaw_y += 200
	}



instance_create_layer(spaw_x, spaw_y, "camada_baixo", obj_mobile)
instance_destroy()
}






