Algoritmo "exe37"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/03/2023
Var
// Seção de Declarações das variáveis 
sal, porc, reajuste: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreva("Digite o valor do salario: ")
leia(sal)

se (sal < 500) entao
   porc <- sal * 15 /100
   sal <- sal + porc
   reajuste <- 15
senao
   se (sal >= 500) e (sal <= 1000) entao
      porc <- sal * 10 / 100
      sal <- sal + porc
      reajuste <- 10
   senao
      porc <- sal * 5 / 100
      sal <- sal + porc
      reajuste <- 5
   fimse
fimse

escreva("Seu salario com reajuste de", reajuste, "% ficou", sal, " R$")

Fimalgoritmo