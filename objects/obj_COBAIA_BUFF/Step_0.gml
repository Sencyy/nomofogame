//	TESTAR SE A LISTA DE BUFFS DO PLAYER ESTÁ RECEBENDO DADOS
//
//
//
var player = instance_place(x,y,obj_player)

if player{
	with(player)
	{
	ds_list_add(self.buffs,self.possiveis_buffs.FREEZE)
	}
instance_destroy()
}