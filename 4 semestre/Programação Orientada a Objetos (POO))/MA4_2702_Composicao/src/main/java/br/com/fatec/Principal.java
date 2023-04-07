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
        
        //criar um cargo
        Cargo cargo = new Cargo();
        //pode ou não atribuir os dados para cargo
        cargo.setDescricao("Professor");
        cargo.setGratificacao(15); //permite aumentos de 15%

        //criando uma instancia com composição
        Funcionario f1 = new Funcionario(cargo);
        
        //ou
        //Funcionario f1 = new Funcionario("professor", 15);

        //entrada manual para F2
        System.out.println("Digite o nome: ");
        f1.setNome(teclado.next());
        System.out.println("Matricula: ");
        f1.setMatricula(teclado.nextInt());
        System.out.println("Salário: ");
        f1.setSalario(teclado.nextFloat());
        
        //criando um FILHO para agregação
        Filho filho = new Filho();
        System.out.println("Nome do Filho: ");
        teclado.nextLine(); //limpa buffers
        filho.setNome(teclado.next());
        System.out.println("Idade do Filho: ");
        filho.setIdade(teclado.nextInt());
        //colocando o filho dentro do funcionario
        f1.setFilho(filho);
                
        //exibir os dados
        System.out.println("Nome...........: " + f1.getNome());
        System.out.println("Matricula......: " + f1.getMatricula());
        System.out.println("Salario Bruto..: " + f1.getSalario());
        System.out.println("INSS...........: " + f1.calcularINSS());
        System.out.println("Salário Liquido: " + f1.salarioLiquido());

        //dados do filho
        System.out.println("---------- FILHO -----------");
        System.out.println("Nome: " + f1.getFilho().getNome());
        System.out.println("Nome: " + f1.nomeFilho());
        System.out.println("Idade: " + f1.getFilho().getIdade());

        //cargo
        System.out.println("Cargo.......: " + f1.getCargo().getDescricao());
    }
}
