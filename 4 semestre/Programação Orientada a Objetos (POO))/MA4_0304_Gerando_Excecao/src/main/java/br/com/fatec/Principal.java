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
    //Método Principal do Projeto

    public static void main(String[] args) {
        //criando um objeto funcionario
        Funcionario f = null;
        try {
            f = new Funcionario(3000); //gera um objeto
            //f = new Funcionario(1000); //gera uma exceção
                                         //Piso salario menor que salario minimo

            //informa o salario do funcionario
            f.atribuiSalario(2800); //tem que estar dentro de um try..catch
                                         
        }
        catch (Exception ex) {
            System.out.println("Erro: " + ex.getMessage());
        }
        
        //atribuindo um nome
        f.setNome("Emanoel");
        
    }
}
