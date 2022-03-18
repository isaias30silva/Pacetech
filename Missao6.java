package ProgramaConversor;

import java.util.Scanner;

public class Missao6 {

    public static void main(String[] args) {
        
        float cotacaoD, temperatura, novaTemperatura, moeda, novaMoeda;
        String escolhaMoeda, escolhaTemperatura, escolha;
        
        Scanner leitor = new Scanner(System.in);
        
        System.out.println("Olá! Precisa converter temperaturas e moedas? Então, você está no programa certo!");
        System.out.println("CTM - Conversor de Temperatura e Moedas");
        
        do{
            
            System.out.println();
            System.out.println("Qual conversão deseja realizar?");
            System.out.println("1 - Quero converter temperatura");
            System.out.println("2 - Quero converter moeda");
            System.out.println("3 - Quero encerrar o programa");
            System.out.print("Qual opção você vai escolher: 1, 2 ou 3? ");
            escolha = leitor.next();
            
            System.out.println();
            
            switch(escolha){
                case "1":
                    do{
         
                        System.out.println();
                        System.out.println("Bem-vindo(a) ao Conversor de Temperatura. Escolha uma opção: ");
                        System.out.println("1 - Quero converter de Celsius para Fahrenheit");
                        System.out.println("2 - Quero converter de Fahrenheit para Celsius");
                        System.out.println("3 - Quero voltar ao menu principal");
                        System.out.print("Qual opção você vai escolher: 1, 2 ou 3? ");
                        escolhaTemperatura = leitor.next();
                        
                        System.out.println();
                        
                        switch(escolhaTemperatura){
                            
                            case "1":
                                System.out.print("Vamos começar! Qual a temperatura em Celsius deseja converter para Fahrenheit? ");
                                temperatura = leitor.nextFloat();
                                
                                novaTemperatura = (temperatura * 1.8f) + 32;
                                
                                System.out.println();
                                System.out.println("Ok. A temperatura em Celsius é: " + String.format("%.2f",temperatura));
                                System.out.println("E a temperatura em Fahrenheit é: " + String.format("%.2f",novaTemperatura));
                                break;
                            
                            case "2":
                                System.out.print("Vamos começar! Qual a temperatura em Fahrenheit deseja converter para Celsius? ");
                                temperatura = leitor.nextFloat();
                                
                                novaTemperatura = (temperatura - 32) / 1.8f;
                                
                                System.out.println();
                                System.out.println("Ok. A temperatura em Fahrenheit é: " + String.format("%.2f",temperatura));
                                System.out.println("E a temperatura em Celsius é: " + String.format("%.2f",novaTemperatura));
                                break;
                            
                            case "3":
                                break;
                            default:
                                System.out.println("Ops! Parece que você não escolheu uma opção válida. Que tal tentar novamente?");
                                break;
                        }
                        
                    } while ( !(escolhaTemperatura.equals("3")) );
                    break;
                
                case "2":
                    System.out.println();
                    System.out.println("Bem-vindo(a) ao Conversor de Moeda. Aqui, você poderá converter Real em Dólar e Dólar em Real.");
                    System.out.print("Para começar, por gentileza, digite a cotação do dólar de hoje: ");
                    cotacaoD = leitor.nextFloat();
                    
                    do{
                        
                        System.out.println();
                        System.out.println("Agora, é só escolhar qual conversão deseja realizar: ");
                        System.out.println("1 - Quero converter de real para dólar");
                        System.out.println("2 - Quero converter dólar para real");
                        System.out.println("3 - Quero voltar ao menu principal");                                
                        System.out.print("Qual opção você vai escolher: 1, 2 ou 3? ");
                        escolhaMoeda = leitor.next();
                        
                        System.out.println();
                        
                        switch(escolhaMoeda){
                            
                            case "1":
                                System.out.print("Vamos começar! Qual o valor em reais deseja converter para dólar?");
                                moeda = leitor.nextFloat();
                                
                                novaMoeda = moeda / cotacaoD;
                                
                                System.out.println();
                                System.out.println("Ok! O valor em reais é R$" + String.format("%.2f",moeda));
                                System.out.println("E o valor em dólar é US$" + String.format("%.2f",novaMoeda));                                       
                                break;
                            
                            case "2":
                                System.out.print("Vamos começar! Qual o valor em dólar deseja converter para reais?");
                                moeda = leitor.nextFloat();
                                
                                novaMoeda = moeda * cotacaoD;
                                
                                System.out.println();
                                System.out.println("OK! O valor em dólar é US$" + String.format("%.2f",moeda));
                                System.out.println("E o valor em reais é R$" + String.format("%.2f",novaMoeda));
                                break;
                            
                            case "3":
                                break;
                            default:
                                System.out.println("Ops! Parece que você não escolheu uma opção válida. Que tal tentar novamente?");
                                break;
                        }        
                        
                    } while ( !(escolhaMoeda.equals("3")) );
                    break;
                case "3":
                    break;
                default:
                    System.out.println("Ops! Parece que você não escolheu uma opção válida. Que tal tentar novamente?");
                    break;
            }
            
        } while ( !(escolha.equals("3")) );
        
    }
    
}
