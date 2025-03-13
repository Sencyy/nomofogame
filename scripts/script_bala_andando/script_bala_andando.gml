function script_bala_andando(spd,dir){
x += lengthdir_x(spd,dir)
y += lengthdir_y(spd,dir)

	if self.x > room_width //DESTRUINDO O PROJETIL FORA DA ROOM
	{
	instance_destroy()
	}
	
	if self.y > room_height
	{
	instance_destroy()
	}
	
	if self.x < 0
	{
	instance_destroy()
	}
	
	if self.y > 0
	{
	instance_destroy()
	}
}