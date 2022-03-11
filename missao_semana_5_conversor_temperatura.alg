algoritmo "Conversor de Temperatura 2.0"

var

temperatura, horario: vetor[1..4] de real
opcao, voltarMenu:literal
i, j: inteiro
aux1, aux2: real

procedimento menuOpcoes()
inicio
Escreval(" ")
Escreval("Qual conversão deseja realizar?")
Escreval("1 - Converter Celsius para Fahrenheit")
Escreval("2 - Converter Fahrenheit para Celsius")
Escreval("3 - Sair do Programa")
leia(opcao)
fimprocedimento

procedimento guardarTemperatura()
inicio
para i de 1 ate 4 faca
   escreval(i,": ","Qual a temperatura?")
   leia(temperatura[i])

   escreval(i,": ","Qual o horário? (formato 24h, apenas horas, sem minutos:")
   leia(horario[i])

   se horario[i] > 24 entao
      repita
         Escreval("Horário inválido. Por favor, informe outro horário:")
         Escreval(i,": ","Qual o horário? (formato 24h, apenas horas, sem minutos:")
         leia(horario[i])
      ate horario[i] <= 24
   fimse
fimpara
limpatela
fimprocedimento

procedimento converterTemperatura()
inicio
metodoBolha()

se opcao = "1" entao
   para i de 1 ate 4 faca
      escreval("A temperatura", temperatura[i], "°C (Celsius), às", horario[i],"h, é igual à ", ((temperatura[i] * 1.8) + 32):4:2, "°F (Fahrenheit)")
   fimpara
senao
   para i de 1 ate 4 faca
      escreval("A temperatura", temperatura[i], "°F (Faherenheit), às", horario[i],"h, é igual à ", ((temperatura[i] - 32) / 1.8):4:2, "°C (Celsius)")
   fimpara
fimse
fimprocedimento

procedimento metodoBolha()
inicio
para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      se (temperatura[j] > temperatura[i] ) entao
         aux1 <- temperatura[i]
         temperatura[i] <- temperatura[j]
         temperatura[j] <- aux1
         aux2 <- horario[i]
         horario[i] <- horario[j]
         horario[j] <- aux2
      fimse
   fimpara
fimpara
fimprocedimento

inicio
Escreval("Olá! Precisa converter temperaturas? Então, você está no programa certo!")
Escreval("CTRH - Conversor de Temperatura e Registro de Horário")
repita
   menuOpcoes()
   limpatela

   escolha opcao
   caso "1"
      guardarTemperatura()
      converterTemperatura()

      Escreval(" ")
      Escreval("Para realizar outra conversão de temperatura, aperte 5")
      Escreval("Se deseja encerrar o programa, pode apertar qualquer tecla!")
      leia(voltarMenu)
      escolha voltarMenu
      caso "5"
         limpatela
      outrocaso
         limpatela
         Escreval("O programa conversor de temperaturas foi finalizado com sucesso. Até a próxima!")
         interrompa
      fimescolha

   caso "2"
      guardarTemperatura()
      converterTemperatura()

      Escreval(" ")
      Escreval("Para realizar outra conversão de temperatura, aperte 5")
      Escreval("Se deseja encerrar o programa, pode apertar qualquer tecla!")
      leia(voltarMenu)
      escolha voltarMenu
      caso "5"
         limpatela
      outrocaso
         limpatela
         Escreval("O programa conversor de temperaturas foi finalizado com sucesso. Até a próxima!")
         interrompa
      fimescolha

   caso "3"
      Escreval("O programa conversor de temperaturas foi finalizado com sucesso. Até a próxima!")

   outrocaso
      Escreval("Você selecionou uma opção inválida. Por favor, tente novamente.")
   fimescolha
ate opcao = "3"

fimalgoritmo
