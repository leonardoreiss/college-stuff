package classes.geometria;

public class CalculadorArea {
    public double somarAreas(FiguraGeometrica a, FiguraGeometrica b) {
        return a.calcularaArea() + b.calcularaArea();
    }
}
