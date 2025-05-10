obj_player.SANIDADE += 200
	if obj_player.sanidade_modo_imune_timer > 0
	{
	obj_player.sanidade_modo_imune_timer += 125
	}
	else
	{
	obj_player.sanidade_modo_imune_timer += 50
	}
obj_player.sanidade_modo_imune = 1

audio_play_sound(snd_notificacao, 1, false, 1, 1, 1)
destruido()