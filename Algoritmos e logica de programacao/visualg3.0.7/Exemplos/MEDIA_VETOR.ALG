algoritmo "Media_vetor"
// Disciplina: [Linguagem e L�gica de programa�ao] 
// Professor: Antonio Carlos Nicolodi
// Autor: Antonio
// Data: 17/03/2020
// Se��o de Declara��es 
var
   Nome_aluno : caracter
   notas : vetor[1..4] de real
   indice: Inteiro
   soma : real
   media : real
inicio
      escreva("Digite o Nome do Aluno: ")
      leia(Nome_aluno)
      ESCREVAL
      Para indice DE 1 AT� 4 FA�A
           escreva("Digite a ",indice:1,"� nota: ")
           leia(notas[indice])
           soma <-soma + notas[indice]
      Fimpara
      media<-(soma/4)
      escreval
      escreval(media)
      escreval
      SE media < 7 ent�o
         Escreval("O reprovou ")
      Senao
         Escreval("O aprovou ")
      fimse
fimalgoritmo
