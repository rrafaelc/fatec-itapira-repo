
Algoritmo "Relacionar"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Antonio
// Data atual  : 18/05/2020
Var
// Se��o de Declara��es das vari�veis 
   A, B : Inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

  B <- 0
  PARA A DE 1 AT� 10 FA�A

       ENQUANTO B = 0 FA�A    // Verifica se n�mero ser� maior que zero
            B <- Randi(11)    // o s�mbolo <- � o mesmo que o :=
       FIMENQUANTO
       
       SE A = B ENT�O
          ESCREVAL("Se 'A' for Igual � 'B' ent�o ser� ",A:2," =  ",B:2)
       FIMSE

       SE A <> B ENT�O
          ESCREVAL("Se 'A' for Diferente de 'B' ent�o ",A:2," <> ",B:2)
       FIMSE

       SE A < B ENT�O
          ESCREVAL("Se 'A' for Menor qu� 'B' ent�o �: ",A:2," <  ",B:2)
       FIMSE

       SE A > B ENT�O
          ESCREVAL("Se 'A' for Maior qu� 'B' ent�o �: ",A:2," >  ",B:2)
       FIMSE

       SE A <= B ENT�O
          ESCREVAL("Se 'A' for Menor ou Igual � 'B':= ",A:2," <= ",B:2)
       FIMSE

       SE A >= B ENT�O
          ESCREVAL("Se 'A' for Maior ou Igual � 'B':= ",A:2," >= ",B:2)
       FIMSE
       escreval
       B <- 0

  FIMPARA

Fimalgoritmo

