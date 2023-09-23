#include <stdio.h>
#include <locale.h>

int somar(int x, int y)
{
  int soma = x + y;
  return soma;
}

int subtrair(int x, int y)
{
  int subtracao = x - y;
  return subtracao;
}

int main()
{
  int x, y, soma, sub;
  printf("Entre com o valor de x: ");
  scanf("%i", &x);
  printf("Entre com o valor de y: ");
  scanf("%i", &y);
  soma = somar(x, y);
  sub = subtrair(x, y);
  printf("\nValor da soma: %i", soma);
  printf("\nValor da subtração: %i", sub);
}