algoritmo "Aumento de salário em 30%"

var
salario, salarioatual: real

inicio
Escreval ("Informe seu salário")
leia (salario)

salarioatual <- salario + (salario * (30/100))
Escreval ("Seu salário atual é de R$", salarioatual)

fimalgoritmo
