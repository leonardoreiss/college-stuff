package br.com.fatec;

public class Principal {
    public static void main(String[] args) {
        //instanciando um objeto

        MinhaClasse m1 = new MinhaClasse(); // Método construtor default
        MinhaClasse m2 = new MinhaClasse("Deu certo");

        //Alterando os dados de m1
        m1.setTexto("Viotti");
        m1.setNumero(333);

        //saida de dados
        System.out.println("M1: Texto ->" + m1.getTexto());
        System.out.println("M1: Numero->" + m1.getNumero());

        System.out.println("M2: Texto ->" + m2.getTexto());
        System.out.println("M2: Numero->" + m2.getNumero());
    }
}