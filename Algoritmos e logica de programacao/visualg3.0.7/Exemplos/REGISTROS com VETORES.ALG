Algoritmo "Registros"
// Disciplina  : [Linguagem e L�gica de programa�ao]
// Professor(a): Antonio Carlos Nicolodi
// Descri��o   : Menu com cadastro
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 07/09/2015

Var
   Codigo : Vetor[1..5] de Caracter
   Nome : Vetor[1..5] de Caracter
   Idade : Vetor[1..5] de Caracter
   Sexo : Vetor[1..5] de Caracter
   Item_cad : Inteiro
   Max_itens : Inteiro   // Vari�vel q cont�ra o m�ximo de elementos de um vetor
   opcao : Caracter  // Op��o de escolha
   X,FLAG,Flag2 : LOGICO   // vari�veis de controle

   // procedimentos

FUN��O PESQUISA(xcod : caracter): Inteiro
Var
   p_Item, XP : inteiro
Inicio
   XP := 0
   PARA p_Item DE 1 AT� Max_itens FA�A  // L� TODOS OS ELEMENTOS
      SE (xcod = Codigo[p_Item]) ENT�O // SE ACH�-LO VOLTA O ELEMENTO
         XP := p_Item
      FIMSE
   FIMPARA
   RETORNE XP   // retorna o conte�do
FIMFUN��O
//
Procedimento Inclusao   // de novos c�digos (inexistentes)
Var iFlag : Logico
   iPesq : Inteiro
   xcodigo,xnome,xidade,xsexo,xRESP: Caracter
Inicio
  iFLAG := VERDADEIRO
  Enquanto iFlag FA�A
      Item_cad := Item_cad + 1        // incrementa o contador de elementos
      SE Item_cad > Max_itens ENT�O   // verifica se n�o ultrapassou o m�ximo
         iFlag := Falso
      SEN�O
         LimpaTela
         Escreval("Inclus�o")
         Escreval(" ")
         Escreval(" ")
         Escreva("Codigo: ")
         Leia(xcodigo)
         iPesq := PESQUISA(xcodigo) // Pesquisa o c�digo
         SE ((iPesq = 0) E (xcodigo <> "0")) ENT�O    // Se retornar zero ainda n�o foi cadastrado
            Escreva("Nome..: ")
            Leia(xnome)
            Escreva("Idade.: ")
            Leia(xidade)
            Escreva("Sexo..: ")
            Leia(xSexo)
            Escreval(" ")

            Escreva("Quer gravar <S/N>? : ")
            Leia(xRESP)
            SE ((xRESP = "S") OU (xRESP = "s")) ENT�O
               Codigo[Item_cad] := xcodigo
               Nome[Item_cad] := xnome
               Idade[Item_cad] := xidade
               Sexo[Item_cad] := xsexo
            SEN�O
               SE Item_cad > 0 ENT�O
                  Item_cad := Item_cad - 1
               FIMSE
            FIMSE
         SEN�O                        // Se ainda j� foi cadastrado (erro!)
            SE (xcodigo = "0") ENT�O
               SE Item_cad > 0 ENT�O
                  Item_cad := Item_cad - 1
               FIMSE
               iFLAG := Falso
            SEN�O
               Escreval(" ")
               Escreva("C�digo j� existe no cadastrado !!!")
               Escreval(" ")
            FIMSE
         FIMSE
      FIMSE
      xRESP := ""
      Escreval(" ")
      Escreval(" ========================= ")
      Escreval(" ")
      Escreva("Continuar <S/N>? : ")
      Leia(xRESP)
      SE ((xRESP = "N") OU (xRESP = "n")) ENT�O
         iFlag := FALSO
      SEN�O
         iFlag := VERDADEIRO
      FIMSE
  FIMENQUANTO
FimProcedimento
//
Procedimento Consulta
Var cFlag : Logico
   cPesq : Inteiro
   xcodigo,xnome,xidade,xsexo: Caracter
Inicio
   cFlag := VERDADEIRO
   Enquanto cFlag FA�A
      SE Item_cad < 1 ENT�O  // verifica n�o tem nenhum elemento cadastrado?
         cFlag := Falso
      SEN�O
         LimpaTela
         Escreval("Consulta por c�digo")
         Escreval(" ")
         Escreval(" ")
         Escreva("Codigo: ")
         Leia(xcodigo)
         SE (xcodigo = "0") ENT�O
            cFLAG := Falso
         SEN�O
            cPesq := PESQUISA(xcodigo) // Pesquisa o c�digo
            SE cPesq > 0 ENT�O         // Se maior que zero est� cadastrado!
               xnome := Nome[cPESQ]
               xidade := Idade[cPESQ]
               xsexo := Sexo[cPESQ]
               EscrevaL("Nome..: ",xnome)
               EscrevaL("Idade.: ",xidade)
               EscrevaL("Sexo..: ",xSexo)
               Escreval(" ")
               Escreva("OK !!! - tecle <<ENTER>> ")
               LEIA(X)
            SEN�O                     // Se ainda n�o foi cadastrado (erro!)
               EscrevaL(" ")
               EscrevaL(" ")
               EscrevaL(" ")
               EscrevaL("C�digo n�o existe no cadastrado !!!")
               Escreva("Tecle <enter>  ")
               LEIA(X)
            FIMSE
         FIMSE
      FIMSE
   FIMENQUANTO
FimProcedimento
//
Procedimento Exclusao
Var eFlag : Logico
   ePesq : Inteiro
   xcodigo,xnome,xidade,xsexo,xRESP: Caracter
Inicio
   eFLAG := VERDADEIRO
   Enquanto eFlag FA�A
      SE Item_cad < 1 ENT�O // verifica n�o tem nenhum elemento cadastrado?
         eFlag := Falso
      SEN�O
         LimpaTela
         Escreval("Exclus�o")
         Escreval(" ")
         Escreval(" ")
         Escreva("Codigo: ")
         Leia(xcodigo)
         SE (xcodigo = "0") ENT�O
            eFLAG := Falso
         SEN�O
            ePesq := PESQUISA(xcodigo) // Pesquisa o c�digo
            SE ePesq > 0 ENT�O         // Se maior que zero est� cadastrado!
               xnome := Nome[ePESQ]
               xidade:= Idade[ePESQ]
               xsexo := Sexo[ePESQ]
               EscrevaL("Nome..: ",xnome)
               EscrevaL("Idade.: ",xidade)
               EscrevaL("Sexo..: ",xSexo)
               EscrevaL(" ")
               EscrevaL("Tem certeza? quer excluir ele <S/N>: ")
               Leia(xRESP)
               SE (xRESP = "S") OU (xRESP = "s") ENT�O
                  Nome[ePESQ]  := " "  //Limpa o nome
                  Idade[ePESQ] := " "  //Limpa a Idade
                  Sexo[ePESQ]  := " "  //Limpa o Sexo
                  EscrevaL("Nome..: ",Nome[ePESQ])
                  EscrevaL("Idade.: ",Idade[ePESQ])
                  EscrevaL("Sexo..: ",Sexo[ePESQ])
               FIMSE
            SEN�O              // Se ainda n�o foi cadastrado (erro!)
               Escreval(" ")
               Escreva("C�digo n�o existe no cadastrado !!!")
               Escreval(" ")
            FIMSE
         FIMSE
         Escreval(" ")
         Escreval(" ")
         Escreval(" ")
         Escreva("tecle <enter>")
         LEIA(X)
      FIMSE
   FIMENQUANTO
FimProcedimento
//
procedimento Alterar
Var aFlag : Logico
   aPesq : Inteiro
   xcodigo,xnome,xidade,xsexo,xRESP: Caracter
Inicio
   aFLAG := VERDADEIRO
   Enquanto aFlag FA�A
      SE Item_cad < 1 ENT�O // verifica n�o tem nenhum elemento cadastrado?
         aFlag := Falso
      SEN�O
         LimpaTela
         Escreval("Altera��o")
         Escreval(" ")
         Escreval(" ")
         Escreva("Codigo: ")
         Leia(xcodigo)
         SE (xcodigo = "0") ENT�O
            aFLAG := Falso
         SEN�O
            aPesq := PESQUISA(xcodigo) // Pesquisa o c�digo
            SE aPesq > 0 ENT�O     // Se maior que zero est� cadastrado!
               xnome := Nome[aPESQ]
               xidade := Idade[aPESQ]
               xsexo := Sexo[aPESQ]
               Escreva("Nome..: ")
               Leia(xnome)
               Escreva("Idade.: ")
               Leia(xidade)
               Escreva("Sexo..: ")
               Leia(xSexo)
               EscrevaL(" ")
               Escreva("Tem certeza? Alterar <S/N> ")
               Leia(xRESP)
               SE (xRESP = "S") OU (xRESP = "s") ENT�O
                  Nome[aPESQ] := xnome
                  Idade[aPESQ] := xidade
                  Sexo[aPESQ] := xsexo
               FIMSE
            SEN�O             // Se ainda n�o foi cadastrado (erro!)
               Escreval(" ")
               Escreva("C�digo n�o existe no cadastrado !!!")
               Escreval(" ")
            FIMSE
         FIMSE
         Escreval(" ")
         Escreval(" ")
         Escreval(" ")
         Escreva("tecle <enter>")
         LEIA(X)
      FIMSE
   FIMENQUANTO
fimprocedimento

// Aqui inicia o programa

inicio
   Max_itens := 3
   X := VERDADEIRO
   FLAG := VERDADEIRO
   Item_cad := 0
   ENQUANTO FLAG FA�A
      X := VERDADEIRO
   MUDACOR("Amarelo","FRENTE")
   limpatela
   Escreval("*** Menu ***")  // fa�a do seu modo melhorado
   Escreval("1 - Inclus�o")  // n�o � opcional tem q ser inclus�o ou cadastrar
   Escreval("2 - Consulta")
   Escreval("3 - Exclus�o")
   Escreval("4 - Alterar")
   Escreval("5 - Listagem")
   Escreval("6 - Finalizar")
   Escreval("  ")
   Escreva("Digite a op��o:")
   Leia(opcao)
   SE ((opcao > "0") E (opcao < "7")) ENT�O
      Escolha opcao
      Caso "1"
         Inclusao    // chama o procedimento inclus�o
      Caso "2"
         Consulta    // chama o procedimento consulta
      Caso "3"
         Exclusao    // chama o procedimento Exclus�o
      Caso "4"
         Alterar     // chama o procedimento Alterar
      Caso "5"
         //            Listagem   / /  chama o proceSSo Listagem ???(FAZ VOC�)
      Caso "6"
         FLAG := FALSO   // muda a vari�vel do controle para encerrar o loop
      Fimescolha
   SEN�O            // Caso o usu�rio digite algo que n�o s�o as op��es
      Escreval("Op��o inv�lida")
      Escreva("tecle <enter>")
      LEIA(X)
   FIMSE
FIMENQUANTO

// Leitura dos dados
fimalgoritmo


