numeros = []

zero25 = 0
vinteseis50 = 0
cinquentaum75 = 0
setentaseis100 = 0

while True:
    num = int(input('Digite um número (0 para parar): '))

    if num == 0:
        break

    numeros.append(num)


for num in numeros:
    if num >= 0 and num <= 25:
        zero25 += 1
    elif num >= 26 and num <= 50:
        vinteseis50 += 1
    elif num >= 51 and num <= 75:
        cinquentaum75 += 1
    elif num >= 76 and num <= 100:
        setentaseis100 += 1

print(f'O intervalo [0, 25] possuí {zero25} números.')
print(f'O intervalo [26, 50] possuí {vinteseis50} números.')
print(f'O intervalo [51, 75] possuí {cinquentaum75} números.')
print(f'O intervalo [76, 100] possuí {setentaseis100} números.')
