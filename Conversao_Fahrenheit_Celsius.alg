algoritmo "Conversão de Fahrenheit para Celsius"
// Função : Converter temperatura
// Autor : Isaias
// Data : 22/02/2022
// Seção de Declarações 
var

celsius, fahrenheit: real

inicio

Escreval ("Qual a temperatura em Fahrenheit?")
leia (fahrenheit)

celsius <- (fahrenheit - 32)/1.8
Escreval ("Temperatura em Celsius de", celsius)

se celsius <= 15 entao
Escreval ("Está frio")

senao
    se celsius <= 28 entao
    Escreval ("Está agradável")
    senao
    Escreval ("Está quente")
    fimse
fimse

fimalgoritmo
