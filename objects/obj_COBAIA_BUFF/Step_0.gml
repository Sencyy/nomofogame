//	TESTAR SE A LISTA DE efeitos DO PLAYER ESTÁ RECEBENDO DADOS
//
//
//
var player = instance_place(x,y,obj_player)

if player{
	with(player)
	{
	ds_list_add(self.efeitos,self.possiveis_efeitos.FREEZE)
	}
instance_destroy()
}