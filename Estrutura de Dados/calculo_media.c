#include <stdio.h>
#include <locale.h>

int main()
{
  setlocale(LC_ALL, "");
  float nota1, nota2, media, frequencia;

  printf("Entre com a nota 1: ");
  scanf("%f", &nota1);

  printf("Entre com a nota 2: ");
  scanf("%f", &nota2);

  printf("Entre com a frequência: ");
  scanf("%f", &frequencia);

  media = (nota1 + nota2) / 2;

  printf("Sua média foi: %.1f e sua frequência %.1f", media, frequencia);

  if (media >= 6 && frequencia >= 75)
    printf(" - Aprovado(a)\n");
  else if (media < 6 && frequencia >= 75)
  {
    printf(" - Reprovado(a) por Média!\n");
  }
  else if (media >= 6 && frequencia < 75)
  {
    printf(" - Reprovado(a) por Frequência\n");
  }
  else
    printf(" - Reprovado(a) por Média e Frequência\n");
}
