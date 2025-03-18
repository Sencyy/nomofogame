draw_set_font(fnt_dialogo)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_white)

draw_rectangle(texto_x,texto_y,texto_x+texto_largura,texto_y+texto_largura,true) // É so aranjar uma maneira de pegar a altura do texto pra fazer desenhar um retangulo no tamanho do texto

var tamanho = string_length(texto[texto_atual])
if caractere < tamanho {
	caractere += caractere_velocidade
}

var str = string_copy(texto[texto_atual], 1, caractere)
draw_text(texto_x, texto_y, str)


