//
//
Algoritmo "Escalas"
// Disciplina  : [Linguagem e L�gica de Programa��o] 
// Professor(a): Antonio Carlos Nicolodi 
// Descri��o   : Transforma temperaturas
// Autor(a)    : Nome do(a) aluno(a)  "EU"
// Data atual  : 27/09/2015
Var
// Se��o de Declara��es das vari�veis 
Celcius : INTEIRO
Fahrein, Kelvin : Real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   MUDACOR("Amarelo", "Frente")
   LIMPATELA
   ESCREVAL("Celcuis Fahrenheit  Kelvi")

   PARA Celcius DE 1 AT� 50 FA�A
        Fahrein := (Celcius * 1.8)+32
        Kelvin  := Celcius + 273
        ESCREVAL(Celcius:3," = ",Fahrein:8:2," =    ",Kelvin:6:2)
   FIMPARA
Fimalgoritmo

