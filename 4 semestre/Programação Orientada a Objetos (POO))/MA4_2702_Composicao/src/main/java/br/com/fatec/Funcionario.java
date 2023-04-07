/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.fatec;

/**
 *
 * @author aluno
 */
public class Funcionario {
    //atributos
    private int matricula;
    private String nome;
    private float salario;    
    //agregação
    private Filho filho;

    //composição
    private Cargo cargo;

    //construtores
    public Funcionario() {
        //asdasd
    }

    //permite a composição
    public Funcionario(Cargo cargo) {
        setCargo(cargo);
    }

    //composição também
    public Funcionario (String descrição, float gratificacao) {
        //cria uma instancia de cargo
        cargo = new Cargo();
        cargo.setDescricao(descrição);
        cargo.setGratificacao(gratificacao);
    }
    
    public Cargo getCargo() {
        return cargo;
    }

    public void setCargo(Cargo cargo) {
        this.cargo = cargo;
    }



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
 
    //métodos
    /**
     * Aplicar um aumento no salario de acordo com a gratificação do cargo.
     * @return Salario com aumento
     */
    public float aplicarAumento() {
        setSalario(getSalario() * (1 + cargo.getGratificacao() / 100));
        return getSalario();
    }

    //métodos
    /**
     * Calcula o valor do INSS de acordo com a tabela do governo abaixo
     *   até R$ 1.302,00 – 7,50%
     *   até R$ 2.571,29 – 9,00%
     *   até R$ 3.856,94 – 12,00%
     *   até R$ 7.507,49 – 14,00% 
     *
     * @return INSS calculado
     */


    public float calcularINSS() {
        /*
        */
        
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
    
    /**
     * Calcula o Salário Liquido
     * @return Salario Liquido
     */
    public float salarioLiquido() {
        return salario - calcularINSS();
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
