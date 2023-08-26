import random

print('----------------------------------')
print('        JOGO DE ADIVINHAÇÃO       ')
print('----------------------------------')

segredo = random.randrange(1, 11)
tentativas = 3

for i in range(1, 4):
    print(f'Você possuí {tentativas} tentativas de 3\n')
    chute = int(input("Digite um número entre 1 e 10: "))

    while chute < 1 or chute > 10:
        print('\nValor inválido')
        chute = int(input("Digite um número entre 1 e 10: "))

    if chute == segredo:
        print('----------------------------------')
        print('    VOCÊ ACERTOU!!! PARABÉNS!!!   ')
        print('----------------------------------')
        break

    print('Você errou! Tente novamente.\n')
    tentativas -= 1

print(f'O número escolhido foi {segredo}')
print('Fim de jogo')
