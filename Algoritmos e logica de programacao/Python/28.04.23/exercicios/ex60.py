nome = input('Digite seu nome: ')
soma = 0

for i in range(3):
    soma += float(input(f'Digite a nota {i + 1}: '))

media = soma / 3

if media >= 7:
    print(f'Parabéns {nome}! Você foi aprovado')
elif media >= 5:
    print(f'Você ficou com média {media:.1f} e está de recuperação')
else:
    print(f'{nome}, você está reprovado')
