#include <stdio.h>
#include <locale.h>

int main()
{
  setlocale(LC_ALL, "");
  int dados[5];

  for (int i = 0; i < 5; i++)
  {
    printf("Entre com o %iº valor: ", i + 1);
    scanf("%i", &dados[i]);
  }

  printf("Dados: ");

  for (int i = 0; i < 5; i++)
  {
    printf("[%i]", dados[i]);
  }

  printf("\n");
}