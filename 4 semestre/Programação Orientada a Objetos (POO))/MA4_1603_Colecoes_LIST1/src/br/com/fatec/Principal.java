package br.com.fatec;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Vector;

public class Principal {
    public static void main(String[] args) {
        //criando uma lista do tipo ArrayList
        //para contar somente dados do tipo STRING

        //ArrayList<String> nomes = new ArrayList<>();
        //LinkedList<String> nomes = new LinkedList<>();
        List<String> nomes = new Vector<>();
        
        //adicionando nomes
        nomes.add("João");
        nomes.add("Carlos");
        nomes.add("Erick");
        nomes.add("Willian");
        nomes.add("Carlos"); // duplicado
        
        /* 
        //adicionando nomes usando addFirst exclusivo do linkedList
        nomes.addFirst("João");
        nomes.addFirst("Carlos");
        nomes.addFirst("Erick");
        nomes.addFirst("Willian");
        nomes.addFirst("Carlos"); // duplicado
        */
        //lista tudo na mesma ordem de inclusão
        for (int i = 0; i < nomes.size(); i++) {
            System.out.println("Nome:..." + nomes.get(i));
        }
        nomes.remove("Erick");
        nomes.remove(2);

        //lista tudo na mesma ordem de inclusão
        System.out.println("------------------------------");
        for (int i = 0; i < nomes.size(); i++) {
            System.out.println("Nome:..." + nomes.get(i));
        }

        //removendo TODOS os CARLOS
        while(nomes.remove("Carlos") == true);

        //lista tudo na mesma ordem de inclusão
        System.out.println("------------------------------");
        for (int i = 0; i < nomes.size(); i++) {
            System.out.println("Nome:..." + nomes.get(i));

        }


    }

}