// DADOS SOBRE COLETAVEIS
coletaveis_para_passar = 15
coletaveis_pegos = 0
//

// DADOS SOBRE ZONAS
zonas = [] 
with(obj_COBAIA_GERADOR_DE_INIMIGO_V2)
{
other.zonas = zonas // dando os dados da variavel "zonas" do "obj_cobaia_v2", para a variavel "zonas" deste objeto (Era melhor usar uma variavel global mais não fiz por preguiça)
}
//

function spaw_coletavel(){
var _zona_do_player 

with(obj_COBAIA_GERADOR_DE_INIMIGO_V2)
{
_zona_do_player = zona_get_player() // USANDO A FUÇÃO DA COBAIA_V2 PRA PEGAR A ZONA DE ONDE O PLAYER ESTÁ
}

var _zona_to_spaw = escolhendo_zona_sem_ser_a_do_player(_zona_do_player)
show_debug_message(_zona_to_spaw)

_x_swpan = irandom_range(_zona_to_spaw[1]+400,_zona_to_spaw[3]-400)
_y_swpan = irandom_range(_zona_to_spaw[2]+400,_zona_to_spaw[4]-400) 


coletavel= instance_create_layer(_x_swpan,_y_swpan,"camada_meio",obj_objetivo_1_coletavel)
coletavel.pai = self 
}

function escolhendo_zona_sem_ser_a_do_player(_zona_ignorada){
var zona_escolhida = [] //zona que o inimigo ira spawnar 
var zonas_sem_ignorada = variable_clone(zonas) // possiveis zona a serem escolhidas, com exeção da zona que o player está 

array_delete(zonas_sem_ignorada,_zona_ignorada[0],1) // tirando a "zona_do_player" da "zona_sem_ignorada"

randomize()
zona_escolhida = zonas_sem_ignorada[random(array_length(zonas_sem_ignorada))]
return zona_escolhida
}

spaw_coletavel()



function concluido(){
show_debug_message("passou")
room_goto_next()
}
