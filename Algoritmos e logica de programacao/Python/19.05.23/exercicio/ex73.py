lista = ['4', '8', '15', '16', '23', '42']

print(lista)

for i in range(len(lista)):
    lista[i] = str(int(lista[i]) * 2)

print(lista)
