algoritmo "Convers�o de Fahrenheit para Celsius"
// Fun��o : Converter temperatura
// Autor : Isaias
// Data : 22/02/2022
// Se��o de Declara��es 
var

celsius, fahrenheit: real

inicio

Escreval ("Qual a temperatura em Fahrenheit?")
leia (fahrenheit)

celsius <- (fahrenheit - 32)/1.8
Escreval ("Temperatura em Celsius de", celsius)

se celsius <= 15 entao
Escreval ("Est� frio")

senao
    se celsius <= 28 entao
    Escreval ("Est� agrad�vel")
    senao
    Escreval ("Est� quente")
    fimse
fimse

fimalgoritmo
