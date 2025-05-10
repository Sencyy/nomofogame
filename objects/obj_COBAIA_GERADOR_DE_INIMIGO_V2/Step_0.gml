if obj_player.estado_level_up = 0
{
	contando_tempo_para_spawnar()

	if spawn_inimigo_time_timer = spawn_inimigo_time
	{
	zona_do_player = zona_get_player()
	var zona_escolhida = zona_get_random(zona_do_player)
	spaw_inimigo(zona_escolhida)
	}
}