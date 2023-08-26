numeros = []
qtdPares = 0
somaImpares = 0

while True:
    num = int(input('Digite um número (0 para parar): '))

    if num == 0:
        break

    numeros.append(num)

for num in numeros:
    if num % 2 == 0:
        qtdPares += 1
    else:
        somaImpares += num

print(f'Quantidade de pares: {qtdPares}')
print(f'Soma dos ímpares: {somaImpares}')
