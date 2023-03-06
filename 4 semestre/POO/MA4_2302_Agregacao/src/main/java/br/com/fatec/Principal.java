package br.com.fatec;

import java.util.Scanner;
public class Principal {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        Funcionario f2 = new Funcionario();

        System.out.println("Digite o nome: ");
        f2.setNome(teclado.next());
        System.out.println("Matricula: ");
        f2.setMatricula(teclado.nextInt());

        //criando um FILHO para agregação
        Filho filho = new Filho();

        System.out.println("Nome do Filho: ");
        teclado.nextLine(); //limpa buffers
        filho.setNome(teclado.next());
        System.out.println("Idade do Filho: ");
        filho.setIdade(teclado.nextInt());

        //colocando o filho dentro do funcionario
        f2.setFilho(filho);
                
        //exibir os dados
        System.out.println("Nome...........: " + f2.getNome());
        System.out.println("Matricula......: " + f2.getMatricula());
        //dados do filho
        System.out.println("---------- FILHO -----------");
        System.out.println("Nome: " + f2.getFilho().getNome());
        System.out.println("Nome: " + f2.nomeFilho());
        System.out.println("Idade: " + f2.getFilho().getIdade());
    }
}
