package br.com.fatec;

import java.util.*;

public class Principal {
    public static void main(String[] args) {
        //criando uma lista do tipo HashSet
        Set<String> nomes = new HashSet<>();
        
        //adicionando nomes
        nomes.add("João");
        nomes.add("Carlos");
        nomes.add("Erick");
        nomes.add("Willian");
        nomes.add("Carlos"); // duplicado, não vai aceitar

         //não pode, pois a coleção só aceita String

        //lista tudo na mesma ordem de inclusão
        exibeNomes(nomes);

        nomes.remove("Erick");
        //nomes.remove(2);

        //lista tudo na mesma ordem de inclusão
        System.out.println("------------------------------");
        exibeNomes(nomes);

        //removendo TODOS os CARLOS
        while(nomes.remove("Carlos") == true);

        //lista tudo na mesma ordem de inclusão
        System.out.println("------------------------------");
        exibeNomes(nomes);

        System.out.println("------------------------------");
        nomes.add("Emerson");
        exibeNomes(nomes);
        //adicionando um elemento na posição especifica não é possivel

    }

    private static void exibeNomes(Set<String> colecao){
        System.out.println("Usando Enhanced For");
        for (String aux : colecao){
            System.out.println("Nome: " + aux);
        }

        System.out.println("Usando interators");
        Iterator<String> it = colecao.iterator(); // obtem o iterador
        while(it.hasNext()){ //hasNext --> se tiver proximo
            String aux = it.next(); //--> o Aux sera o proximo
            System.out.println("Nome:" + aux);
        }

        //lambda
        // (como se fosse uma função que ela vaiu existir e ser executada em apenas um instante)
        System.out.println("Usando expressões lambda");
        colecao.forEach(aux -> //forEach método (passando parte de um codigo como parametro)
        {
            System.out.println("Nome:" + aux);
        });
    }
}