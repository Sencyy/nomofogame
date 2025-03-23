texto[0] = "Nomofobia, o jogo"
texto[1] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eget arcu egestas, venenatis dui non, vestibulum purus. Cras et maximus libero, tempor vulputate velit. In hac habitasse platea dictumst. Duis neque sapien, tempus at vestibulum et, tempus a ante. Etiam"

texto_atual = 0
texto_ultimo = 1
texto_largura = 300
texto_x = 100
texto_y = 70

caractere = 0
caractere_velocidade = 0.25

texto[texto_atual] = quebra_linha(texto[texto_atual], texto_largura)