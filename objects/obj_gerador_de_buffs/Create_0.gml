// Dados do player
player = noone
//

// Dados gerais sobre este obj
buff_type = ["normal","atributo","efeito"]
buff_card_quantia = 3
quantas_vezes = 1
//


// TEMPLATE DOS BUFF
buff_id[0][0] = -1 // id do buff para fazer condições no "obj_buff_card"
buff_id[0][1] = -3 // 3 = comum, 2 = raro / 1 = epico 
buff_id[0][2] = "null" // string com o nome do buff
//



function spaw_cards()
{
	for(i=0;i<buff_card_quantia;i++)
	{
	randomize()
	var buff_type_random = 0 //floor(random(array_length(buff_type))) // pegando um tipo de buff aleatorio (retorna um numero)
	var buff_id_temporario = [] // variavel temporaria que ira guardar os dados dos possiveis buffs 
	
	function_buff_id(buff_type_random,buff_id_temporario) // enviando os possiveis buffs para a variavel
	var buff_especifico = function_buff_aleatorio_pela_raridade(buff_id_temporario)
	
	var buff_card = instance_create_layer(x,y,"camada_cima",obj_buff_card)
	buff_card.buff_type = buff_type_random
	buff_card.buff_escolhido = buff_especifico
	buff_card.x = x - 300 + (i * 300)
	}
}

function function_buff_id(buff_type_especifico,_array){ // esta função dá os dados de cada possivel buff (como seu nome, sua raridade e seu ID)
	if buff_type_especifico = 0 //se o buff é do tipo "normal"
	{	// colocando os possiveis buffs do tipo "normal" numa array 
	
	_array[0][0] = 1
	_array[0][1] = 3
	_array[0][2] = "mais dano"
	
	//
	_array[1][0] = 2
	_array[1][1] = 3
	_array[1][2] = "mais rapido"
	//
	_array[2][0] = 3
	_array[2][1] = 2
	_array[2][2] = "mais projeteis"
	//
	_array[3][0] = 4
	_array[3][1] = 3
	_array[3][2] = "penetrante"
	//
	_array[4][0] = 5
	_array[4][1] = 1
	_array[4][2] = "mais disparos"
	}
	if buff_type_especifico = 1 // se o buff é do tipo "atributo" 
	{ // colocando os possiveis buffs do tipo "atributo" numa array 
	show_debug_message("n existe 'atributo'")
	}
	if buff_type_especifico = 2 // se o buff é do tipo "efeito"
	{ // colocando os possiveis buffs do tipo "efeito" numa array 
	show_debug_message("n existe 'efeito'")
	}
}

function function_buff_aleatorio_pela_raridade(_array){
randomize()
var numero_aleatorio = random(10)
var _new_array = [] // array que guarda os buffs do "buff_id_temporario" somente duma raridade especifica 
var buff_especifico_escolhido = []

function function_buff_aleatorio_pela_raridade_get_new_array(_raridade,_array){ // função para o "_new_array" pegue os dados da array "buff_id_temporario" que sejam da raridade do "numero_aleatorio", fazendo com que ele tenha somente os buffs de sua raridade
	var _new_array_func = []
	
	for(var _i=0;_i<array_length(_array) ;_i++)
	{	
		if _array[_i][1] = _raridade
		{
		array_push(_new_array_func,_array[_i]) // buff adicionado para a nova array
		} 
	}
	return _new_array_func
}

if numero_aleatorio < 5
{
_new_array = function_buff_aleatorio_pela_raridade_get_new_array(3,_array)
}

if numero_aleatorio > 5 && numero_aleatorio < 9
{
_new_array = function_buff_aleatorio_pela_raridade_get_new_array(2,_array)
}

if numero_aleatorio >= 9
{
_new_array = function_buff_aleatorio_pela_raridade_get_new_array(1,_array)
} 

buff_especifico_escolhido = floor(random(array_length(_new_array))) // escolhendo uma POSIÇÃO dentro da array "_new_array"
buff_especifico_escolhido = _new_array[buff_especifico_escolhido] // tranformando "buff_especifico_escolhido" numa array, com os dados do "_new_array" NA possição do "buff_especifico_escolhido" 

return buff_especifico_escolhido //retorna um buff especifico dentro dum tier de raridade 
}