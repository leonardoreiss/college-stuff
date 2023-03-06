public class MinhaClasse {
    private String texto;
    private int numero;

    public MinhaClasse() {
        System.out.println("Construindo MinhaClasse");
        this.texto = "Sem nada";
        this.numero = -999;
    }

    public MinhaClasse(String t) {
        this.texto = t;
    }

    public String getTexto() {
        return this.texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public int getNumero() {
        return this.numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }
}
