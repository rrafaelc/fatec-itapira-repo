#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

struct aluno
{
  int ra;
  char nome[50], email[50], celular[14], curso[50], periodo[10];
};
struct aluno a;

void cadastrar()
{
  printf("\nCadastro dos dados");
  printf("\nEntre com o RA: ");
  scanf("%i", &a.ra);
  printf("\nEntre com o nome: ");
  getchar();
  fgets(a.nome, 50, stdin);
  printf("\nEntre com o email: ");
  getchar();
  fgets(a.email, 12, stdin);
  printf("\nEntre com o celular: ");
  getchar();
  fgets(a.celular, 14, stdin);
  printf("\nEntre com o curso: ");
  getchar();
  fgets(a.curso, 50, stdin);
  printf("\nEntre com o periodo: ");
  getchar();
  fgets(a.periodo, 10, stdin);
}

void exibir()
{
  printf("\nExibição dos dados");
  printf("\nRA: %i", a.ra);
  printf("\nNome: %s", a.nome);
  printf("\nEmail: %s", a.email);
  printf("\nCelular: %s", a.celular);
  printf("\nCurso: %s", a.curso);
  printf("\nPeriodo: %s", a.periodo);
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
