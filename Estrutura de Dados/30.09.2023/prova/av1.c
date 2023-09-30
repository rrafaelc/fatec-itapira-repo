#include <stdio.h>
#include <locale.h>

int main()
{
  setlocale(LC_ALL, "");

  int largura = 0;
  int comprimento = 0;

  printf("Entre com o valor da largura: ");
  scanf("%i", &largura);

  printf("Entre com o valor da comprimento: ");
  scanf("%i", &comprimento);

  printf("O valor da área ficou %i\n", largura * comprimento);
}