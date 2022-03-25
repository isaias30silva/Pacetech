package missao07;

public class Missao07 {

    public static void main(String[] args) {
    Empregado sergio = new Empregado("Sérgio", "Luiz", 1500.0f);
    System.out.println("Salário anual de " + sergio.getPrimeiroNome()+ " " + sergio.getSobrenome() + " é R$ " + sergio.obterSalarioAnual());
    System.out.println("Autorizado aumento de 10% ao empregado " + sergio.getPrimeiroNome() + " " + sergio.getSobrenome());
    
    
    Empregado marcos = new Empregado("Marcos", "Henrique", 2000.0f);
    System.out.println("Salário anual de " + marcos.getPrimeiroNome() + " " + marcos.getSobrenome() + " é R$ " + marcos.obterSalarioAnual());
    System.out.println("Autorizado aumento de 10% ao empregado " + marcos.getPrimeiroNome() + " " + marcos.getSobrenome());
    
    System.out.println("----------------------------------------------------------------------------------------")
    System.out.println("")
   
    sergio.oferecerAumento();
    System.out.println("Salário anual do empregado " + sergio.getPrimeiroNome() + " " + sergio.getSobrenome() + " é R$ " + sergio.obterSalarioAnual());
     
    marcos.oferecerAumento();
    System.out.println("Salário anual do empregado " + marcos.getPrimeiroNome() + " " + marcos.getSobrenome() + " é R$ " + marcos.obterSalarioAnual());
    
    System.out.println("----------------------------------------------------------------------------------------")
    
    }
    
}