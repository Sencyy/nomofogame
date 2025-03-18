function script_destroy_bala(lista_de_buffs){ // isso serve pra destruir as balas, servindo pra apagar 
											  //a lista "lista_de_buffs" para poupar mais memoria 
ds_list_destroy(lista_de_buffs)
ds_list_destroy(inimigos_atingidos_list)
ds_list_destroy(inimigos_atravessados_list)
instance_destroy(self)
}