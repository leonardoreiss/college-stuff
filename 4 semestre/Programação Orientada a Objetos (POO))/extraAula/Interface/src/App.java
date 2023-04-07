import classes.geometria.*;


public class App {
    public static void main(String[] args) throws Exception {

        //Geometria
        Circulo circulo = new Circulo(2);
        System.out.println(circulo.calcularaArea());

        Quadrado quadrado = new Quadrado(5);
        System.out.println(quadrado.calcularaArea());

        CalculadorArea calculador = new CalculadorArea();
        System.out.println(calculador.somarAreas(circulo, circulo));
    }
}
