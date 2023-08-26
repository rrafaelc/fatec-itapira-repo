Algoritmo "exe34"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/03/2023


Var
// Seção de Declarações das variáveis 
n1, n2, n3, media, p1, p2, p3: real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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
escreva("O valor da media é", media)

Fimalgoritmo