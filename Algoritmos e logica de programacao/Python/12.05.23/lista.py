frutas = ['laranja', 'amora', 'morango', 'banana', 'amora', 'mamão', 'banana']

for fruta in frutas:
    print(fruta)

print('Quantidade de amoras: ', frutas.count('amora'))
print('Quantidade de mangas: ', frutas.count('manga'))
print('Quantidade de mamãos: ', frutas.index('mamão'))

print('Adicionando uva')
frutas.append('uva')
for fruta in frutas:
    print(fruta)

print('Invertendo a lista')
frutas.reverse()
for fruta in frutas:
    print(fruta)

print('Ordenando a lista')
frutas.sort()
for fruta in frutas:
    print(fruta)
