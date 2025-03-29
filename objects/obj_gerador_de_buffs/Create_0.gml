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
	
	var buff_card = instance_create_layer(x,y,"camada_cima",obj_buff_card)
	buff_card.buff_type = buff_type_random
	buff_card.x = player.x + 300 * i -300
	}
}

function function_buff_id(buff_type_especifico,_array){ // esta função dá os dados de cada possivel buff (como seu nome, sua raridade e seu ID)
	if buff_type_especifico = 0
	{	// colocando os dados de um buff numa array geral.
	
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
	_array[3][1] = 2
	_array[3][2] = "penetrante"
	//
	_array[4][0] = 5
	_array[4][1] = 2
	_array[4][2] = "mais disparos"
	}
	if buff_type_especifico = 1
	{
	show_debug_message("n existe 'atributo'")
	}
	if buff_type_especifico = 2
	{
	show_debug_message("n existe 'efeito'")
	}
}
	