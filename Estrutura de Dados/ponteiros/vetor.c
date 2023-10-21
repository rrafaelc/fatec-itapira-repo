#include <stdio.h>

void exibir(float *notas)
{
  for (int i = 0; i < 5; i++)
  {
    printf("%f ", *(notas + i));
  }
}

int main()
{
  float notas[5] = {10, 7.5, 8.5, 4.5, 5.5};

  exibir(notas);

  printf("\n");
}