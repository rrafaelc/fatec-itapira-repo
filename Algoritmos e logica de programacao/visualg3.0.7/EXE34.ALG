Algoritmo "exe34"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/03/2023


Var
// Se��o de Declara��es das vari�veis 
n1, n2, n3, media, p1, p2, p3: real


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreva("Digite a nota 1: ")
leia(n1)
escreva("Digite o peso da nota 1: ")
leia(p1)
escreva("Digite a nota 2: ")
leia(n2)
escreva("Digite o peso da nota 2: ")
leia(p2)
escreva("Digite a nota 3: ")
leia(n3)
escreva("Digite o peso da nota 3: ")
leia(p3)
media <- ( p1*n1 + p2*n2 + p3*n3 ) / ( p1 + p2 + p3 )
escreva("O valor da media �", media)

Fimalgoritmo