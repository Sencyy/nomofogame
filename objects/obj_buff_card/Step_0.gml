change_spr_raridade()

if collision_point(mouse_x,mouse_y,self,false,false)
{
mouse_em_cima = 1

	if mouse_check_button_pressed(mb_left)
	{
	dando_buff_pro_player()
	destroy_tudo()
	}
}
else 
{
mouse_em_cima = 0
}