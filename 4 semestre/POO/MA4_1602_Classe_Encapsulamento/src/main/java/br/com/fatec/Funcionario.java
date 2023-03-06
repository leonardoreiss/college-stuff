package br.com.fatec;
public class Funcionario {
    //atributos
    private int matricula;
    private String nome;
    private float salario;
    //getters e setters    
    public int getMatricula() {
        return matricula;
    }
    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public float getSalario() {
        return salario;
    }
    public void setSalario(float salario) {    
        this.salario = salario;
    }
    //métodos
    /**Calcula o valor do INSS de acordo com a tabela do governo abaixo
     *   até R$ 1.302,00 – 7,50%
     *   até R$ 2.571,29 – 9,00%
     *   até R$ 3.856,94 – 12,00%
     *   até R$ 7.507,49 – 14,00% 
     *
     * @return INSS calculado*/
    public float calcularINSS() {
        float inss;
        if(salario <= 1302)
            inss = salario * 0.075f;
        else if(salario <= 2571.29)
            inss = salario * 0.09f;
        else if(salario <= 3856.94)
            inss = salario * 0.12f;
        else if(salario <= 7507.49)
            inss = salario * 0.14f;
        else
            inss = 7507.49f * 0.14f;
        return inss;
    }
    
    /**Calcula o Salário Liquido
     * @return Salario Liquido*/
    public float salarioLiquido() {
        return salario - calcularINSS();
    }
}
