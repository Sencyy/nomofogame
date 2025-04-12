morri_check()

if estado_morto = 0 
{
	if estado_level_up = 0 && estado_dialago = 0
	{
	direcao_check()
	colisao_na_parede_invisivel()
	nao_fugir_da_sala()
	vou_andar()
	trocando_spr()
	vou_atacar()
	contando_cd()
	}
level_up()
COBAIA_lv_up()
criando_meiodacamera()
}
else
{
morri_animaton()
}