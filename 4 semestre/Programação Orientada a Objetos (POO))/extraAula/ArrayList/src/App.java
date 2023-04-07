import java.util.ArrayList;

public class App {
    public static void main(String[] args) throws Exception {
        //Array (vetor) --> com um tamanho fixo de 5 posições
        String[] arrayEstatico = new String[5];
        
        arrayEstatico [0] = "Vegeta";
        arrayEstatico [1] = "Sasuke";
        arrayEstatico [2] = "Luigi";
        arrayEstatico [3] = "Tangiro";
        arrayEstatico [4] = "Elsa";

        System.out.println("Imprimindo array estatico!");
        for (int i = 0; i < arrayEstatico.length; i++) {
            System.out.println(arrayEstatico[i]);
        }
        System.out.println("\n------------------------------\n");

        // ArrayList<Tipo> nome = new ArrayList<Tipo>();
        //Array list é uma classe !
        ArrayList<String> arrayDinamico = new ArrayList<String>();
        arrayDinamico.add("Goku"); //indice 0;
        arrayDinamico.add("Maria"); //indice 1;
        arrayDinamico.add("Pedro"); //indice 2;
        arrayDinamico.add("henrique"); //indice 3;
        arrayDinamico.add("Luigi"); //indice 4;

        arrayDinamico.remove(1); //removendo maria

        System.out.println("Imprimindo ArrayList");
        System.out.println("Tamanho do ArrayList: " + arrayDinamico.size());
        for (int i = 0; i < arrayDinamico.size(); i++) {
            System.out.println(arrayDinamico.get(i));
        }

        for (String nome : arrayDinamico) {
            System.out.println(nome);
        }

        ArrayList<Pessoa> pessoas = new ArrayList<Pessoa>();
        pessoas.add(new Pessoa("Joao", 20));
        pessoas.add(new Pessoa("Goku", 50));
        pessoas.add(new Pessoa("Predo", 24));

        for (Pessoa pessoa : pessoas) {
            System.out.println(pessoa.getNome());
        }
    }
}
