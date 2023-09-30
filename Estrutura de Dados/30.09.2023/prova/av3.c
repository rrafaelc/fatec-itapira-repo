#include <stdio.h>
#include <locale.h>

int main()
{
  setlocale(LC_ALL, "");

  int notas[3];
  int frequencia = 0;
  int soma = 0;
  int media = 0;

  for (int i = 0; i < 3; i++)
  {
    printf("Entre com a %iª nota: ", i + 1);
    scanf("%i", &notas[i]);
    soma += notas[i];
  }

  media = soma / 3;

  printf("Digite a frequência: ");
  scanf("%i", &frequencia);

  if (media >= 6 && frequencia >= 75)
  {
    printf("Aprovado\n");
  }
  else if (media >= 6 && frequencia < 75)
  {
    printf("Reprovado por frequência\n");
  }
  else if (media < 6 && frequencia >= 75)
  {
    printf("Reprovado por nota\n");
  }
  else if (media < 6 && frequencia < 75)
  {
    printf("Reprovado por nota e frequência\n");
  }
}