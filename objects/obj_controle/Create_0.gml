player = noone

controle_cima =		 ord("W")
controle_baixo =	 ord("S")
controle_direita =	 ord("D")
controle_esquerda =  ord("A")

controle_ataque = mb_left

controle_hack = vk_f6

controle_skill_1 = mb_right
controle_skill_2 = ord("Q")
controle_skill_3 = vk_alt

controle_desh = vk_space

// DADOS SOBRE ANDANDO
controle_clicado = array_create
//

// DADOS SOBRE HACK
hack_habilitado = 0
//

function andando(){
controle_clicado[0] = keyboard_check(controle_direita)
controle_clicado[1] = keyboard_check(controle_esquerda)
controle_clicado[2] = keyboard_check(controle_cima)
controle_clicado[3] = keyboard_check(controle_baixo)

//desh(controle_clicado)
	
move_x = controle_clicado[0]- controle_clicado[1]
move_y = controle_clicado[3]- controle_clicado[2]

	if move_x = 0 && controle_clicado[0] = 1
	{move_x = 1}

	if move_y = 0 &&  controle_clicado[2] = 1
	{move_y = -1}
	

	if array_get_index(controle_clicado,1) >= 0 // checando se o player clicou pra andar
	{
	player.estado_andando = 1 // permitindo o player andar
	}
	else{
	player.estado_andando = 0
	}
	
	if player.estado_andando = 1 // CASO o player possa andar
	{		
	spX = move_x * player.spd // VALOR speed x que está função vai enviar ao player
	spY = move_y * player.spd
	}
	else
	{
	spX = 0
	spY = 0
	}
	
player.spX = spX // VALORES SENDO ENVIADO AO PLAYER
player.spY = spY //
}
	
function atacando(){
	if mouse_check_button(controle_ataque)
	{
	player.estado_atacando = 1
	}
	else
	{
	player.estado_atacando = 0
	}
}
	
function modo_hack(){
	if keyboard_check_pressed(controle_hack)
	{
		if hack_habilitado = 0
		{
		show_debug_log(true)
		hack_habilitado = 1
		}
		else
		{
		show_debug_log(false)
		hack_habilitado = 0
		}
	}
}
	
function botoes_skills(){

	if mouse_check_button_pressed(controle_skill_1)
	{
	player._arma_do_player.call_skill(0)
	}
	if keyboard_check_pressed(controle_skill_2)
	{
	player._arma_do_player.call_skill(1)
	}
	if keyboard_check_pressed(controle_skill_3)
	{
	player._arma_do_player.call_skill(2)
	}
}
