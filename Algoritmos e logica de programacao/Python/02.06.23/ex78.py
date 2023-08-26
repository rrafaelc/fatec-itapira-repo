numeros = []


while True:
    num = int(input('Digite um número (0 para parar): '))

    if num == 0:
        break

    numeros.append(num)

maior = numeros[0]
menor = numeros[0]
soma = 0
media = 0

for num in numeros:
    if num > maior:
        maior = num
    elif num < menor:
        menor = num

    soma += num

media = soma / len(numeros)

print(f'O maior número é: {maior}')
print(f'O menor número é: {menor}')
print(f'A soma dos números é: {soma}')
print(f'A média dos números é: {media:.2f}')
