#include <stdio.h>

int main()
{
  float nota1, nota2, nota3, media, frequencia;

  printf("Entre com a nota 1: ");
  scanf("%f", &nota1);

  printf("Entre com a nota 2: ");
  scanf("%f", &nota2);

  printf("Entre com a frequencia: ");
  scanf("%f", &frequencia);

  media = (nota1 + nota2) / 2;

  printf("Sua media eh: %.1f", media);

  if (media >= 6 && frequencia >= 75)
    printf(" - Aprovado(a)\n");
  else
    printf(" - Reprovado(a)\n");
}
