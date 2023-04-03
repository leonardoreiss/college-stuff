/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.fatec;

import java.util.Scanner;

/**
 *
 * @author aluno
 */
public class Principal {
    //Método Principal do Projeto
    public static void main(String[] args) {
        //Auxiliar para leitura de teclado
        Scanner teclado = new Scanner(System.in);
        
        //criando uma instancia
        Funcionario f1 = new Funcionario();
        Funcionario f2 = new Funcionario();
        Funcionario f3; //cria só a variável
        //faz a instancia dela
        f3 = new Funcionario();
        
        //inserindo informações
        f1.setNome("Cleber Araujo");
        f1.setMatricula(987);
        f1.setSalario(5600);
        
        //entrada manual para F2
        System.out.println("Digite o nome: ");
        f2.setNome(teclado.nextLine());
        System.out.println("Matricula: ");
        f2.setMatricula(teclado.nextInt());
        System.out.println("Salário: ");
        f2.setSalario(teclado.nextFloat());
        
        
        //exibir os dados
        System.out.println("Nome...........: " + f1.getNome());
        System.out.println("Matricula......: " + f1.getMatricula());
        System.out.println("Salario Bruto..: " + f1.getSalario());
        System.out.println("INSS...........: " + f1.calcularINSS());
        System.out.println("Salário Liquido: " + f1.salarioLiquido());
        
        System.out.println("Nome...........: " + f2.getNome());
        System.out.println("Matricula......: " + f2.getMatricula());
        System.out.println("Salario Bruto..: " + f2.getSalario());
        System.out.println("INSS...........: " + f2.calcularINSS());
        System.out.println("Salário Liquido: " + f2.salarioLiquido());
    }
}
