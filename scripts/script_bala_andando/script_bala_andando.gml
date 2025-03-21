function script_bala_andando(spd,dir){
var spX = lengthdir_x(spd,dir)
var spY = lengthdir_y(spd,dir)

//inimigos_atingidos_list

var colididos_em_line = ds_list_create()
var talvez_eu_ande = 0

if collision_line_list(x,y,x+spX,y+spY,alvo,false,false,colididos_em_line,true)
{
	for(i=0;i<ds_list_size(colididos_em_line);i++)
	{
		if ds_list_find_index(inimigos_atingidos_list,colididos_em_line[|i]) = -1
		{
		var id_inimigo = colididos_em_line[|i]
		x = id_inimigo.x
		y = id_inimigo.y
		talvez_eu_ande = 0
		i = ds_list_size(colididos_em_line)
		}
		else
		{
		talvez_eu_ande = 1
		}
	}
	
}
else
{
x += spX
y += spY
}

if talvez_eu_ande = 1
{
x += spX
y += spY
}

ds_list_destroy(colididos_em_line)


	if self.x > room_width //DESTRUINDO O PROJETIL FORA DA ROOM
	{
	script_destroy_bala(list_bala_efeitos)
	}

	if self.y > room_height
	{
	script_destroy_bala(list_bala_efeitos)
	}
	
	if self.x < 0
	{
	script_destroy_bala(list_bala_efeitos)
	}
	
	if self.y < 0
	{
	script_destroy_bala(list_bala_efeitos)
	}
}