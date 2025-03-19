// Caixa de Diálogo
dialogo_x = 20
dialogo_yy = window_get_height() - 20

dialogo_xx = window_get_width() - dialogo_x
dialogo_y = 590

falante_nome = "Personagem"
falante_x = dialogo_x + 20
falante_y = dialogo_y - 30

falante_xx = falante_x + string_width(falante_nome) + 17
falante_yy = dialogo_y - 2

falante_nome_x = falante_x + 7
falante_nome_y = falante_y + 5

// Sprite a ser exibido
sprite_index = spr_player_dialogo

texto[0] = "Fotos de rolas grandes, rolas saborosas, Google buscar!"
texto[1] = "Sofrimento? Meu caro, o sofrimento é apenas uma parte do jogo. A verdadeira força vem da dor e da desolação. Você não entende? Eu estou moldando um novo mundo, onde apenas os fortes sobreviverão!"

texto_atual = 0
texto_ultimo = 1
texto_largura = 1325
texto_x = dialogo_x + 10
texto_y = dialogo_y + 10

caractere = 0
caractere_velocidade = 0.25

texto[texto_atual] = quebra_linha(texto[texto_atual], texto_largura)