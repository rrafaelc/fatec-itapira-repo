termo = int(input('Digite o primeiro termo: '))
quantidade = int(input('Digite a quantidade de termos: '))
razao = int(input('Digite a razao: '))


for i in range(0, quantidade):
    print(f'a {i + 1} --- {termo}')
    termo += razao
