soma = 0

for i in range(5):
    soma += int(input(f'Digite o número {i + 1}: '))

media = soma / 5

print(f'\nA média ficou {media:.2f}')
