Algoritmo "exe36"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/03/2023
Var
// Se��o de Declara��es das vari�veis 
preco, desconto, preco_com_desconto, economia: real


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreva("Digite o valor do produto: ")
leia(preco)
escreva("Digite o valor do desconto: ")
leia(desconto)
preco_com_desconto <- preco - preco * desconto / 100
economia <- preco - preco_com_desconto
escreval()
escreval("Valor do produto �", preco, " R$")
escreval("Valor com desconto de", desconto, "% ficou", preco_com_desconto, " R$")
escreval("Economia de", economia, " R$")


Fimalgoritmo