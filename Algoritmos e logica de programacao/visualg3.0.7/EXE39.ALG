Algoritmo "exe39"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/03/2023
Var
// Se��o de Declara��es das vari�veis 
altura, peso, imc: real


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreva("Digite sua altura em cm: ")
leia(altura)
escreva("Digite seu peso: ")
leia(peso)
altura <- altura / 100
imc <- peso / ( altura * altura )

se ( imc < 18.5 ) entao
   escreva("Abaixo do peso")
senao
   se ( imc >= 18.5) e ( imc < 25 ) entao
      escreva("Peso normal")
   senao
      se ( imc >= 25) e ( imc < 30 ) entao
         escreva("Sobrepeso")
      senao
         se ( imc >= 30 ) e ( imc < 35 ) entao
            escreva("Obesidade")
         senao
            escreva("IMC muito alto!")
         fimse
      fimse
   fimse
fimse
Fimalgoritmo