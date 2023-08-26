salario = float(input('Digite seu salario: '))
imposto = 0

# até R$ 1.903,98 - Isento - R$ 0
# de R$ 1.903,99 a R$ 2.826,65 - 7,5% - R$ 142,80
# de R$ 2.826,66 a R$ 3.751,05 - 15% - R$ 354,80
# de R$ 3.751,06 a R$ 4.664,68 - 22,5% - R$ 636,13
# acima de R$ 4.664,68 - 27,5% - R$ 869,36

if (salario >= 1903.99 and salario <= 2826.65):
    imposto = salario * 0.075 - 142.80
elif (salario >= 2826.66 and salario <= 3751.05):
    imposto = salario * 0.15 - 354.80
elif (salario >= 3751.06 and salario <= 4664.68):
    imposto = salario * 0.225 - 636.13
elif (salario > 4664.68):
    imposto = salario * 0.275 - 869.36


print(f'O imposto a pagar é R$ {imposto:.2f}')
