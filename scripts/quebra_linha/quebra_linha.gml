function quebra_linha(texto, largura){

    var texto_quebrado = ""
    var espaco = -1
    var posicao = 1

    while(string_length(texto) >= posicao) {
        if string_width(string_copy(texto, 1, posicao)) > largura {
            if espaco != 1 {
                texto_quebrado += string_copy(texto, 1, espaco) + "\n"
                texto = string_copy(texto, espaco + 1, string_length(texto) - espaco)
                posicao = 1
                espaco = -1
            }
        }

        if string_char_at(texto, posicao) == " " {
            espaco = posicao
        }
        posicao++
    }
    
    if string_length(texto) > 0 {
        texto_quebrado += texto
    }

    return texto_quebrado

}