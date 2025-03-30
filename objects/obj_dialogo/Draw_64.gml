draw_set_font(fnt_dialogo)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_white)

draw_self()
draw_rectangle(dialogo_x, dialogo_y, dialogo_xx, dialogo_yy, true) // É so aranjar uma maneira de pegar a altura do texto pra fazer desenhar um retangulo no tamanho do texto

var tamanho = string_length(texto[texto_atual])
if caractere < tamanho {
	caractere += caractere_velocidade
}

var str = string_copy(texto[texto_atual], 1, caractere)
draw_text(texto_x, texto_y, str)

// Caixa de texto com o nome do personagem
draw_rectangle(falante_x, falante_y, falante_xx, falante_yy, true)
draw_text(falante_nome_x, falante_nome_y, falante_nome)