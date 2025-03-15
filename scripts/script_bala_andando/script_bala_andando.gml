function script_bala_andando(spd,dir){
x += lengthdir_x(spd,dir)
y += lengthdir_y(spd,dir)

	if self.x > room_width //DESTRUINDO O PROJETIL FORA DA ROOM
	{
	script_destroy_bala(list_bala_buffs)
	}

	if self.y > room_height
	{
	script_destroy_bala(list_bala_buffs)
	}
	
	if self.x < 0
	{
	script_destroy_bala(list_bala_buffs)
	}
	
	if self.y < 0
	{
	script_destroy_bala(list_bala_buffs)
	}
}