package br.com.fatec;

public class MinhaClasse {
    private String texto;
    private int numero;

    //metodos construtores
    public MinhaClasse (){ //construtor Default --- Um método construtor não pode retornar nada
        System.out.println("Construindo MinhaClasse");
        texto = "Sem nada";
        numero = -999;
    }
    public MinhaClasse(String t){ //Construtor parametrico
       texto = t;
    }
    //getters e setters
    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }
}
