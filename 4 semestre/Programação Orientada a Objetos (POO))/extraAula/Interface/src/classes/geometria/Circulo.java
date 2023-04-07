package classes.geometria;

public class Circulo implements FiguraGeometrica{
    private int raio;

    //construtor
    public Circulo(int raio) {
        this.raio = raio;
        
    }
    //Metodos
    public double calcularaArea() {
        //area = PI * raio ^ 2
        return Math.PI * Math.pow(raio, 2);
    }


    //Getters e Setters
    public int getRaio() {
        return raio;
    }
    public void setRaio(int raio) {
        this.raio = raio;
    }
}
