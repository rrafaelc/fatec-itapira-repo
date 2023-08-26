produto = float(input('Digite o valor do produto: '))

total = produto * (1 + 0.07)

parcelas = total / 10

print(
    f'Voce tera que pagar 10 parcelas de R$ {parcelas:.2f} com total de R$ {total:.2f}')
