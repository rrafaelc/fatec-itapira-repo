produto1 = float(input('Digite o valor do produto 1: '))
produto2 = float(input('Digite o valor do produto 2: '))

total1 = produto1 * (1 - 0.14)
total2 = produto2 * (1 - 0.17)

print(
    f'O valor de R$ {produto1:.2f} com desconto de 14% ficou R$ {total1:.2f}')

print(
    f'O valor de R$ {produto2:.2f} com desconto de 17% ficou R$ {total2:.2f}')
