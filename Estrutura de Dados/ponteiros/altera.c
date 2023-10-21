#include <stdio.h>

void altera(int *px, int *py)
{
  *px = 3;
  *py = 5;
}

int main()
{
  int x, y;
  altera(&x, &y);

  printf("\nValor de x = %i e y = %i\n", x, y);
}