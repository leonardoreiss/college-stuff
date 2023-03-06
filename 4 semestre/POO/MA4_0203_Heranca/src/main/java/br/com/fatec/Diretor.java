/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.fatec;

/**
 *
 * @author aluno
 */
public class Diretor extends Funcionario {
    private Veiculo veiculo;
    private int idade;

    //construtor
    public Diretor (String nome) {
        //setNome(nome); não funciona

        super(nome); //construtor da superclasse
    }

    public Diretor (int idade, String nome) {
        this(nome); //Chama o construtor da propria classe
        // ou
        //super (nome);
        this.idade = idade;
    }
    public Veiculo getVeiculo() {
        return veiculo;
    }

    public void setVeiculo(Veiculo veiculo) {
        this.veiculo = veiculo;
    }
    
    
}
