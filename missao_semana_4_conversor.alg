algoritmo "Conversor de Temperatura e Moeda"

var

opcaoMenu, voltarMenu: literal
fahrenheit, celsius, dolar, realbr, cotacao: real

inicio

repita
Escreval ("Converta moeda e temperatura em poucos segundos. Escolha uma das op��es:")
Escreval ("1 - Fahrenheit para Celsius")
Escreval ("2 - Celsius para Fahrenheit")
Escreval ("3 - Real para D�lar")
Escreval ("4 - D�lar para Real")

leia (opcaoMenu)

limpatela

escolha opcaoMenu
caso "1"
   Escreval ("Qual a temperatura em Fahrenheit?")
   leia (fahrenheit)
   celsius <- (fahrenheit - 32) / 1.8
   Escreval ("A temperatura em Celsius � de ", celsius:2:2, "�C")
   Escreval ("Aperte ENTER se deseja realizar outras convers�es ou ESC para sair")
   leia (voltarMenu)

caso "2"
   Escreval ("Qual a temperatura em Celsius?")
   leia (celsius)
   fahrenheit <- (celsius * 1.8) + 32
   Escreval ("A temperatura em Fahrenheit � de ", fahrenheit:2:2, "�C")
   Escreval ("Aperte ENTER se deseja realizar outras convers�es ou ESC para sair")
   leia (voltarMenu)
   
caso "3"
   Escreval ("Qual o valor em Real (R$) deseja converter para D�lar (US$)?")
   leia (realbr)
   Escreval ("Qual a cota��o do d�lar?")
   leia (cotacao)
   dolar <- realbr / cotacao
   Escreval ("A quantia informada em Real (R$) equivale, na data de hoje, a US$ ", dolar:2:2, " d�lares")
   Escreval ("Aperte ENTER se deseja realizar outras convers�es ou ESC para sair")
   leia (voltarMenu)

caso "4"
   Escreval ("Qual o valor em D�lar (US$) deseja converter para Real (R$)?")
   leia (dolar)
   Escreval ("Qual a cota��o do d�lar?")
   leia (cotacao)
   realbr <- dolar * cotacao
   Escreval ("A quantia informada em D�lar (US$) equivale, na data de hoje, a R$ ", realbr:2:2, " reais")
   Escreval ("Aperte ENTER se deseja realizar outras convers�es ou ESC para sair")
   leia (voltarMenu)

fimescolha

limpatela

ate opcaoMenu = voltarMenu

fimalgoritmo
