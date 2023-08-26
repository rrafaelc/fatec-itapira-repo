cont = 0
soma = 0

while cont < 3:
    soma += int(input("Entre com um número: "))
    cont += 1

media = soma / cont

print(f"A média dos números é {media:.1f}")
