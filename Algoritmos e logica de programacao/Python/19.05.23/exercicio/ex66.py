n1 = float(input('Digite a nota 1: '))
n2 = float(input('Digite a nota 2: '))
n3 = float(input('Digite a nota 3: '))


media = ((n1 * 3) + (n2 * 3) + (n3 * 4)) / (3 + 3 + 4)

if media < 6:
    print(f'Voce foi reprovado com media')

print(f'Sua media foi de {media:.2f}')
