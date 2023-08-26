termo = int(input('Digite o termo: '))
quantidade = int(input('Digite a quantidade: '))
razao = int(input('Digite a razao: '))

for i in range(quantidade):
    print(f'a {i + 1} ---- {termo}')
    termo += razao
