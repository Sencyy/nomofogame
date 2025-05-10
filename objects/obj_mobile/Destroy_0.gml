//instance_create_layer(random(1984)-300, random(1984)-300, "camada_baixo", obj_mobile)

/*
var _zona_random 

with(obj_COBAIA_GERADOR_DE_INIMIGO_V2)
{
_zona_random = zona_get_random()
}


var spaw_x = irandom_range(_zona_random[1],_zona_random[3])
var spaw_y = irandom_range(_zona_random[2],_zona_random[4])


show_debug_message(spaw_x)
show_debug_message(spaw_y)

instance_create_layer(spaw_x-300, spaw_y-300, "camada_baixo", obj_mobile)