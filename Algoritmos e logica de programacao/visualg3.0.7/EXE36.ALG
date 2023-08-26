Algoritmo "exe36"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/03/2023
Var
// Seção de Declarações das variáveis 
preco, desconto, preco_com_desconto, economia: real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite o valor do produto: ")
leia(preco)
escreva("Digite o valor do desconto: ")
leia(desconto)
preco_com_desconto <- preco - preco * desconto / 100
economia <- preco - preco_com_desconto
escreval()
escreval("Valor do produto é", preco, " R$")
escreval("Valor com desconto de", desconto, "% ficou", preco_com_desconto, " R$")
escreval("Economia de", economia, " R$")


Fimalgoritmo