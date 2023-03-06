/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.fatec;

/**
 *
 * @author aluno
 */
public class Gerente extends Funcionario {
    private float gratificacao;

    //construtor
    public Gerente (String nome) {
        //setNome(nome); não funciona
        super(nome); //construtor da superclasse
    }

    public float getGratificacao() {
        return gratificacao;
    }

    public void setGratificacao(float gratificacao) {
        this.gratificacao = gratificacao;
    }

    /**
     * Retorna o ganho mensal do Gerente, que deve ser
     * acrescido da gratificação
     * @return Salario do mes do gerente
     */
    @Override
    public float ganhoMensal() {
        return super.ganhoMensal() + getGratificacao();
    }
}
