// DADOS SOBRE COLETAVEIS
coletaveis_para_passar = 5
coletaveis_pegos = 0
//


function spaw_coletavel(){
randomize()
show_debug_message(coletaveis_pegos)
_x_swpan = random(room_width/2)
_y_swpan = random(room_height/2)


coletavel= instance_create_layer(_x_swpan+200,_y_swpan+200,"camada_meio",obj_objetivo_1_coletavel)
coletavel.pai = self
}

spaw_coletavel()



function concluido(){
show_debug_message("passou")
room_goto_next()
}
