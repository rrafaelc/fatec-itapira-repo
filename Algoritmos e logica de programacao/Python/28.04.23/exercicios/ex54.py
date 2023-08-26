dolar = float(input('Digite o valor em dólar: '))
cotacao = float(input('Digite o valor da cotação: '))

resultado = dolar * cotacao

print(f'O valor de US$ {dolar:.2f}', end=' ')
print(f'com a cotação de R$ {cotacao:.2f} ficou R$ {resultado:.2f}')
