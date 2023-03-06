public class Principal {
    public static void main(String[] args) {
        MinhaClasse m1 = new MinhaClasse();
        MinhaClasse m2 = new MinhaClasse("Deu certo");
        m1.setTexto("Viotti");
        m1.setNumero(333);
        System.out.println("M1: Texto ->" + m1.getTexto());
        System.out.println("M1: Numero->" + m1.getNumero());
        System.out.println("M2: Texto ->" + m2.getTexto());
        System.out.println("M2: Numero->" + m2.getNumero());
    }
}