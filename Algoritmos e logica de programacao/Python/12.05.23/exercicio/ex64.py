lista = []


num = int(input('Digite um numero: '))
lista.append(num)
print('Lista atualizada')
print(lista)


while num != 0:
    num = int(input('Digite um numero: '))
    lista.append(num)
    lista.sort()
    print('Lista atualizada')
    print(lista)
