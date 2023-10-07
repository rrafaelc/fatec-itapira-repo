#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

struct carteira
{
  float dinheiro;
  int cartCredito, cardDebito;
  char cpf[13], rg[11];
};

struct carteira c;

void cadastrar()
{
  printf("\nCadastro dos dados");
  printf("\nEntre com a quantia em dinheiro: ");
  scanf("%f", &c.dinheiro);
  printf("\nEntre com o cartão de crédito: ");
  scanf("%i", &c.cartCredito);
  printf("\nEntre com o cartão de débito: ");
  scanf("%i", &c.cardDebito);
  printf("\nEntre com o CPF: ");
  getchar();
  fgets(c.cpf, 12, stdin);
  printf("\nEntre com o RG: ");
  getchar();
  fgets(c.rg, 10, stdin);
}

void exibir()
{
  printf("\nExibição dos dados");
  printf("\nQuantia em dinheiro: %f", c.dinheiro);
  printf("\nNúmero cartão crédito: %i", c.cartCredito);
  printf("\nNúmero cartão débito: %i", c.cardDebito);
  printf("\nNúmero CPF: %s", c.cpf);
  printf("\nNúmero RG: %s", c.rg);
}

int main()
{
  int op;
  while (op != 3)
  {
    // system("clear");
    printf("Carteira\n");
    printf("Digite 1 para cadastrar\n");
    printf("Digite 2 para exibir\n");
    printf("Digite 3 para sair\n");

    printf("Entre com a opção: ");
    scanf("%i", &op);

    switch (op)
    {
    case 1:
      cadastrar();
      break;
    case 2:
      exibir();
      break;
    case 3:
      exit(1);
    default:
      printf("\nOpção inválida");
    }
  }
}
