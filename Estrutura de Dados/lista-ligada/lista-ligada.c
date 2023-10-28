#include <stdio.h>
#include <stdlib.h>

struct lista
{
  int valor;
  struct lista *prox;
};
struct lista *aux, *inicio = NULL, *final = NULL;

void insere()
{
  int x;
  printf("Entre com um valor: ");
  scanf("%i", &x);
  aux = (struct lista *)malloc(sizeof(struct lista));
  aux->valor = x;
  aux->prox = (struct lista *)NULL;
  if (inicio == NULL)
  {
    inicio = final = aux;
  }
  else
  {
    final->prox = aux;
    final = aux;
  }
}