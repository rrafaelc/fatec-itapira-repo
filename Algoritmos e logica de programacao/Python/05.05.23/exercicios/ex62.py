print('Lista de numeros')
numeros = [2, 4, 1, 6, 7, 3]

maior = 0
posicao = 0
cont = 0

for num in numeros:
    if num > maior:
        maior = num
        posicao = cont

    cont += 1

print(f'O maior numero é {maior} e ele esta na posicao {posicao} da lista')
