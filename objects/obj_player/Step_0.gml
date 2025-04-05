morri_check()

if estado_morto = 0 
{
	if estado_level_up = 0 && estado_dialago = 0
	{
	direcao_check()
	colisao_na_parede_invisivel()
	vou_andar()
	vou_atacar()
	contando_cd()
	}
nao_fugir_da_sala()
level_up()
COBAIA_lv_up()
}
trocando_spr()