if obj_player.estado_level_up = 0 && obj_player.estado_dialago = 0
{
	spaw_time_timer = max(spaw_time_timer-1,0)

	if spaw_time_timer = 0
	{
	spaw_time_timer = random_range(60-(3*obj_player.level) ,250-(8*obj_player.level))
	instance_create_layer(x,y,"camada_baixo",obj_inimigo)
	}
}