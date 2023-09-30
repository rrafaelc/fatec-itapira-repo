#include <stdio.h>
#include <locale.h>

int main()
{
  setlocale(LC_ALL, "");

  int vetorA[5];
  int vetorB[5];
  int vetorC[5];

  for (int i = 0; i < 5; i++)
  {
    printf("Entre com o %iº valor do vetorA: ", i + 1);
    scanf("%i", &vetorA[i]);
  }

  printf("\n");

  for (int i = 0; i < 5; i++)
  {
    printf("Entre com o %iº valor do vetorB: ", i + 1);
    scanf("%i", &vetorB[i]);
  }

  printf("\n");

  for (int i = 0; i < 5; i++)
  {
    vetorC[i] = vetorA[i] + vetorB[i];
  }

  printf("Valores que está no vetorC\n");

  for (int i = 0; i < 5; i++)
  {
    printf("vetorC[%i] = %i\n", i, vetorC[i]);
  }
}