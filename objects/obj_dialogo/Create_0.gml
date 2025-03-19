// Caixa de Diálogo
dialogo_x = 20
dialogo_yy = window_get_height() - 20

dialogo_xx = window_get_width() - dialogo_x
dialogo_y = 590

texto[0] = "Nomofobia, o jogo"
texto[1] = "Sofrimento? Meu caro, o sofrimento é apenas uma parte do jogo. A verdadeira força vem da dor e da desolação. Você não entende? Eu estou moldando um novo mundo, onde apenas os fortes sobreviverão!"

texto_atual = 0
texto_ultimo = 1
texto_largura = 1325
texto_x = dialogo_x + 10
texto_y = dialogo_y + 10

caractere = 0
caractere_velocidade = 0.25

texto[texto_atual] = quebra_linha(texto[texto_atual], texto_largura)