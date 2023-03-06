package br.com.fatec;
public class Funcionario {
    //atributos
    private int matricula;
    private String nome;
    private float salario;    
    //agregação
    private Filho filho;
    
    //getters e setters
    public Filho getFilho() {
        return filho;
    }

    public void setFilho(Filho filho) {
        this.filho = filho;
    }

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
    
    public String nomeFilho() {
        //verifica se o funcionario tem ou nao filho
        if(filho == null) { //não tem filho
            return "Este funcionário não possui filho";
        }
        else {
            return filho.getNome();
        }
    }
}
