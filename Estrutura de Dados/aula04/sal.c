#include <stdio.h>
#include <locale.h>

int main()
{
  setlocale(LC_ALL, "");
  float salario, bonus;
  int pontos;

  for (int x = 0; x < 5; x++)
  {
    printf("\nEntre com o salario: ");
    scanf("%f", &salario);

    printf("\nEntre com a pontuação: ");
    scanf("%i", &pontos);

    if (pontos > 100 && pontos <= 499)
    {
      bonus = salario + 200;
    }
    else if (pontos >= 500 && pontos <= 1000)
    {
      bonus = salario + 600;
    }
    else
    {
      bonus = salario;
    }

    printf("\nSeu salário final foi: %f", bonus);
  }
}