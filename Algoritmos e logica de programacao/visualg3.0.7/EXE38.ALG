Algoritmo "exe38"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/03/2023
Var
// Seção de Declarações das variáveis 
n1, n2, n3, media: real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite nota 1: ")
leia(n1)
escreva("Digite nota 2: ")
leia(n2)
escreva("Digite nota 3: ")
leia(n3)
media <- ( n1 + n2 + n3 ) / 3

escreval()

se ( media >= 7 ) entao
   escreval("Parabéns! Você foi aprovado.")
senao
   escreval("Você foi reprovado.")
fimse

escreva("Média de", media)
escreval()

Fimalgoritmo