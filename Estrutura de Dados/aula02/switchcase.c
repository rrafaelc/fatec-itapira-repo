#include <stdio.h>
#include <locale.h>

int main()
{
  setlocale(LC_ALL, "");
  float x, y, resultado;
  char op;
  printf("Operações Matemáticas");
  printf("\nDigite + para Somar");
  printf("\nDigite - para Subtrair");
  printf("\nDigite * para Multiplicar");
  printf("\nDigite / para Dividir");
  printf("\nEntre com a opção: ");
  scanf("%c", &op);
  printf("\nEntre com o valor de x: ");
  scanf("%f", &x);
  printf("\nEntre com o valor de y: ");
  scanf("%f", &y);
  switch (op)
  {
  case '+':
    resultado = x + y;
    printf("A soma foi %f", resultado);
    break;
  case '-':
    resultado = x - y;
    printf("A subtração foi %f", resultado);
    break;
  case '*':
    resultado = x * y;
    printf("A multiplicação foi %f", resultado);
    break;
  case '/':
    resultado = x / y;
    printf("A divisão foi %f", resultado);
    break;
  default:
    printf("Opção inválida");
    break;
  }
  printf("\n");
}