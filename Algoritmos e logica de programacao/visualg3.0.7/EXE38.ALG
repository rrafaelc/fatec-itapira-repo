Algoritmo "exe38"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/03/2023
Var
// Se��o de Declara��es das vari�veis 
n1, n2, n3, media: real


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreva("Digite nota 1: ")
leia(n1)
escreva("Digite nota 2: ")
leia(n2)
escreva("Digite nota 3: ")
leia(n3)
media <- ( n1 + n2 + n3 ) / 3

escreval()

se ( media >= 7 ) entao
   escreval("Parab�ns! Voc� foi aprovado.")
senao
   escreval("Voc� foi reprovado.")
fimse

escreva("M�dia de", media)
escreval()

Fimalgoritmo