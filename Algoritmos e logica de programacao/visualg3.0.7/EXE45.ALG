Algoritmo "exe45"

Var
letra: caractere

Inicio
escreva("Digite uma letra: ")
leia(letra)

se (letra = "A") ou (letra = "V") ou (letra = "a") ou (letra = "v") entao
    se (letra = "A") ou (letra = "a") entao
        escreva("Cor azul")
    senao
        escreva("Cor vermelha")
    fimse
senao
    escreva("Cor inválida")
fimse

Fimalgoritmo