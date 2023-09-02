#include <stdio.h>
#include <locale.h>

int main()
{
  setlocale(LC_ALL, "");
  float peso, altura, imc;
  char continua = 's';
  int x = 0;

  while (continua == 's')
  {
    printf("Digite seu peso: ");
    scanf("%f", &peso);

    printf("Digite sua altura: ");
    scanf("%f", &altura);

    imc = peso / (altura * altura);

    printf("Seu imc é %f", imc);

    if (imc <= 18.5)
    {
      printf("\nPaciente abaixo do peso");
    }
    else if (imc >= 18.6 && imc <= 24.9)
    {
      printf("\nPaciente no peso ideal");
    }
    else if (imc >= 25 && imc <= 29.9)
    {
      printf("\nPaciente levemente acima do peso");
    }
    else if (imc >= 30 && imc <= 34.9)
    {
      printf("\nObesidade Grau I");
    }
    else if (imc >= 35 && imc <= 39.9)
    {
      printf("\nObesidade Grau II");
    }
    else
    {
      printf("\nObesidade Grau III");
    }

    printf("\nDeseja continuar? (s/n): ");
    getchar();
    scanf("%c", &continua);

    printf("\n");
  }
}
