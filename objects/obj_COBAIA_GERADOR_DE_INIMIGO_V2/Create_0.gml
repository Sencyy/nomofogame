dificuldade = 0
image_alpha = 0

// DADOS SOBRE STATUS DOS INIMIGOS MAIS FORTE
status_up_hp = 0
status_up_atq = 0
status_up_spd = 0
status_up_propriedade = 0
//

// DADOS SOBRE SPAW INIMIGOS 
maximo_de_inimigos = 12
spawn_inimigo_time = 100
spawn_inimigo_time_timer = 20
//

// DADOS SOBRE A ZONA 
zona_width = room_width/2
zona_height = room_height/2

zonas = [] ; zonas[0][0] = 0; zonas[1][0] = 1; zonas[2][0] = 2; zonas[3][0] = 3; // Possiveis zonas a serem escolhidas 
zonas[0][1] = 0				;  zonas[0][2] = 0 // Pivo X e Y respectivamente	
zonas[1][1] = zona_width	;  zonas[1][2] = 0
zonas[2][1] = 0				;  zonas[2][2] = zona_height 
zonas[3][1] = zona_width	;  zonas[3][2] = zona_height 


zonas[0][3] = 0	+ zona_width			;  zonas[0][4] = 0 + zona_height  // Area final de X e Y da zona
zonas[1][3] = zona_width + zona_width	;  zonas[1][4] = 0 + zona_height
zonas[2][3] = 0	+ zona_width			;  zonas[2][4] = zona_height + zona_height
zonas[3][3] = zona_width + zona_width	;  zonas[3][4] = zona_height + zona_height

zona_do_player = [] // Variavel que guarda a zona especifica que o player está 
//


function dificuldade_status_scale_check(){
var up = dificuldade

status_up_hp = 1 + up/10
status_up_atq = 1 + up/10
status_up_spd = 1 + up/10
status_up_propriedade = 1 + up
status_up_peso = -up/2


}

function dificuldade_spawner_scale_check(){
spawn_inimigo_time -= dificuldade*2
}

function zona_get_player(){
var zona_escolhida = [] // variavel que guarda os dados da zona especifica escolhida  

	for(i=0;i <= array_length(zonas);i++)
	{
	var player_colidido = collision_rectangle(zonas[i][1],zonas[i][2],zonas[i][3],zonas[i][4],obj_player,false,false)
		if player_colidido
		{
		//show_debug_message(i)
		zona_escolhida = zonas[i]
		i = array_length(zonas)
		}
	}

return zona_escolhida // enviando_zona_que_o_player_está
}
	
function contando_tempo_para_spawnar(){
	
	if spawn_inimigo_time_timer = spawn_inimigo_time
	{
	spawn_inimigo_time_timer = 0
	}
	
spawn_inimigo_time_timer = min(spawn_inimigo_time_timer+1,spawn_inimigo_time)
}

function zona_get_random(_zona_ignorada){
var zona_escolhida = [] //zona que o inimigo ira spawnar 
var zonas_sem_ignorada = variable_clone(zonas) // possiveis zona a serem escolhidas, com exeção da zona que o player está 

	if is_array(_zona_ignorada)
	{
	array_delete(zonas_sem_ignorada,_zona_ignorada[0],1) // tirando a "zona_do_player" da "zona_sem_ignorada"
	// tira a zona colocada no parametro da função
	}
	else
	{
	// não tira nada 
	}
	
randomize()
zona_escolhida = zonas_sem_ignorada[random(array_length(zonas_sem_ignorada))]

return variable_clone(zona_escolhida)
}

function spaw_inimigo(_zona_especifica){

var spaw_x = irandom_range(_zona_especifica[1],_zona_especifica[3]) - 300 
var spaw_y = irandom_range(_zona_especifica[2],_zona_especifica[4]) - 300


instance_create_layer(spaw_x,spaw_y,"camada_meio",obj_inimigo)
}