//	TESTAR SE A LISTA DE BUFFS DO PLAYER ESTÁ RECEBENDO DADOS
//
//
//
var player = instance_place(x,y,obj_player)

if player{
ds_list_add(player.buffs,1)
instance_destroy()
}