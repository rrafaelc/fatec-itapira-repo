#include <stdio.h>
#include <locale.h>

float converterParaCelsius(float f)
{
  float c = (f - 32) / 1.8;
  return c;
}

int main()
{
  setlocale(LC_ALL, "");

  float fahrenheit = 0;

  printf("Entre com o valor do Fahrenheit: ");
  scanf("%f", &fahrenheit);

  printf("Fahrenheit de %f para Celsius ficou %f\n", fahrenheit, converterParaCelsius(fahrenheit));
}