#include <stdio.h>
#include <locale.h>

int main()
{
  setlocale(LC_ALL, "");

  int n1 = 0;
  int n2 = 0;
  int maior = 0;

  printf("Entre com o primeiro número: ");
  scanf("%i", &n1);

  printf("Entre com o segundo número: ");
  scanf("%i", &n2);

  if (n1 > n2)
  {
    maior = n1;
  }
  else
  {
    maior = n2;
  }

  printf("O número maior é %i\n", maior);
}