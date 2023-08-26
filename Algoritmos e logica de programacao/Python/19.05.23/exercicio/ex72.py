letras = ['A', 'B', 'C', 'D', 'E']

escolha = input('Escolha uma letra (a,b,c,d,e): ')


for i in range(len(letras)):
    if letras[i].lower() == escolha.lower():
        letras[i] = 'X'


print(letras)
