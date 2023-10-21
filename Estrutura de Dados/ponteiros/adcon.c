#include <stdio.h>

void adcon(int *px, int *py)
{
  *px = *px + 10;
  *py = *py + 10;
}

int main()
{
  int x = 4, y = 7;
  adcon(&x, &y);

  printf("\nValor de x = %i e y = %i\n", x, y);
}