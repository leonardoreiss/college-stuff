package classes.geometria;

public class Quadrado implements FiguraGeometrica{
    //Atributo
    private int lado;

    //Construtor
    public Quadrado(int lado) {
        this.lado = lado;
    }

    //Metodos
    public double calcularaArea() {
        return Math.pow(lado, 2);
    }

    //Getters e Setters
    public int getLado() {
        return lado;
    }

    public void setLado(int lado) {
        this.lado = lado;
    }
}
