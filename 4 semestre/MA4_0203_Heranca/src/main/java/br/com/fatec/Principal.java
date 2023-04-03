/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.fatec;

/**
 *
 * @author aluno
 */
public class Principal {
    public static void main(String args []){
        Funcionario funcionario = new Funcionario("Joao");
        Gerente gerente = new Gerente("Jonas");

        gerente.setSalario(3500);
        gerente.setGratificacao(500);

        // mostrando o salario do gerente
        System.out.println("Salario Normal:................" + gerente.getSalario());
        System.out.println("Salario com gratificação:......" + gerente.ganhoMensal());

        //instanciando um diretor usando polimorfismo de instancia
        Funcionario dir = new Diretor("Pedro");


        //exibir dados
        mostrarDadosGerente(funcionario); // do funcionario
        mostrarDadosGerente(gerente); //gerente
        mostrarDadosGerente(dir); // do diretor
    }
    public static void mostrarDadosGerente(Funcionario gerente){
        System.out.println("Nome:........" + gerente.getNome());
        System.out.println("Salario Original:......" + gerente.getSalario());
    }
}
