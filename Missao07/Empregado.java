package missao07;

public class Empregado {
    
    private String primeiroNome, sobrenome;
    private float salarioMensal;

    public Empregado(String primeiroNome, String sobrenome, float salarioMensal){
    this.setPrimeiroNome(primeiroNome);
    this.setSobrenome(sobrenome);
    this.setSalarioMensal(salarioMensal);
    }
    
    public String getPrimeiroNome(){
    return primeiroNome;
    }
 
    public void setPrimeiroNome(String primeiroNome){
    this.primeiroNome = primeiroNome;
    }

    public String getSobrenome(){
    return sobrenome;
    }

    public void setSobrenome(String sobrenome){
    this.sobrenome = sobrenome;
    }

    public float getSalarioMensal(){
    return salarioMensal;
    }

    public void setSalarioMensal(float salarioMensal){
        if (salarioMensal < 0){
            this.salarioMensal = 0;
        } else {
        this.salarioMensal = salarioMensal;
        }
    }
    
    public float obterSalarioAnual(){
    return (12 * salarioMensal);
    }
    
    public float oferecerAumento(){
        salarioMensal = (1.1f * salarioMensal);
        return salarioMensal;
    }
}