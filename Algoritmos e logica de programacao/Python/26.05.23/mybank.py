print('----------------------------------------')
print('       Seja bem-vindo(a) ao MyBank      ')
print('         SIMULADOR DE EMPRESTIMO        ')
print('----------------------------------------')

porcentagem = 0
parcelas = 0
valorParcelas = 0
valorEmprestimo = 0
valorTotal = 0
iof = 0.38 / 100
incluirSeguro = False
valorSeguro = 50

while True:
    ehcliente = input('Já é nosso cliente? (s/n): ')

    if ehcliente == 'n':
        valorTotal += 35
        score = int(input('Digite seu serara Score: '))
        if score <= 299:
            porcentagem = 0.2
        elif score <= 499:
            porcentagem = 0.15
        elif score <= 699:
            porcentagem = 0.1
        elif score <= 1000:
            porcentagem = 0.05
    else:
        porcentagem = 0.03

    valorEmprestimo = float(input('Digite o valor do empréstimo: '))
    parcelas = int(input('Quantidade de parcelas: '))

    aceitaSeguro = input(
        'Deseja incluir um seguro desemprego no seu empréstimo? (s/n): ')

    if aceitaSeguro == 's':
        incluirSeguro = True

    valorTotal += valorEmprestimo * (1 + porcentagem)
    if incluirSeguro:
        valorTotal += valorSeguro * parcelas * (1 + iof)

    valorParcelas = valorTotal / parcelas

    print('----------------------------------------')
    print('     RESULTADO DA SIMULAÇÃO      ')
    print('----------------------------------------')
    print(f'Quantidade de parcelas: {parcelas}')
    print(f'Valor das parcelas: R$ {valorParcelas:.2f}')
    print(f'Taxa de juros: R$ {porcentagem * 100}%')
    print(f'Custo efetivo total: R$ {valorTotal:.2f}')
    print('----------------------------------------')

    continuar = input('Deseja realizar outra simulação? (s/n): ')
    if continuar == 'n':
        break

print('Programa encerrado')
