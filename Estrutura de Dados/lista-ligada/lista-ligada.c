#include <stdio.h>
#include <stdlib.h>

struct lista
{
  int valor;
  struct lista *prox;
};
struct lista *aux, *inicio = NULL, *final = NULL;

void insereFinal()
{
  int x;
  printf("\nEntre com um valor: ");
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

void removeFinal()
{
  int valor_removido;
  if (inicio == NULL)
  {
    printf("\nLista Vazia\n");
  }
  else
  {
    aux = final;
    valor_removido = aux->valor;
    printf("\nValor removido: %i", valor_removido);
    // free(aux);
  }
}

void imprimir()
{
  if (inicio == NULL)
  {
    printf("\nLista Vazia\n");
  }
  else
  {
    aux = inicio;
    while (aux != (struct lista *)NULL)
    {
      printf("\nValor da Lista: %i", aux->valor);
      aux = aux->prox;
    }
  }

  printf("\n");
}

int main()
{
  int op;
  while (op != 4)
  {
    printf("\nLista Dinâmica");
    printf("\nDigite 1 para Inserir");
    printf("\nDigite 2 para Remover");
    printf("\nDigite 2 para Imprimir");
    printf("\nDigite 4 para Sair");
    printf("\nEntre com a opção: ");
    scanf("%i", &op);

    switch (op)
    {
    case 1:
      insereFinal();
      break;
    case 2:
      removeFinal();
      break;
    case 3:
      imprimir();
      break;
    case 4:
      exit(1);
      break;
    }
  }
}