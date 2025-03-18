var tamanho = string_length(texto[texto_atual])
if caractere < tamanho {
	caractere = tamanho
} else {
	texto_atual++
	if texto_atual > texto_ultimo {
		instance_destroy()	
	} else {
		texto[texto_atual] = quebra_linha(texto[texto_atual], texto_largura)
		caractere = 0
	}
}