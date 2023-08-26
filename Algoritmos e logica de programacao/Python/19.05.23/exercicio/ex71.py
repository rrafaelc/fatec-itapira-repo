termo = int(input('Digite o primeiro termo: '))
razao = int(input('Digite a razao: '))
qtd = int(input('Digite a quantidade: '))


for i in range(qtd):
    print(f'a{i+1} ---- {termo}')
    termo *= razao
