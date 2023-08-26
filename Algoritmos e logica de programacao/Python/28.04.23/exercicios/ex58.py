vogais = 'aeiouAEIOU'

letra = input('Digite uma letra: ')

ehvogal = False

for vogal in vogais:
    if (letra == vogal):
        ehvogal = True
        break

if ehvogal:
    print(f'"{letra}" é vogal')
else:
    print(f'"{letra}" é consoante')
