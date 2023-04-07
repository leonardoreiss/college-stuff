public class Medicamento extends Produto {
    private String princAtivo;
    private boolean tarjaPreta;

    public void aumento(float valor) {
        super.aumento(valor);
        setPreco(getPreco()*0.10f);
    }

    //getters e Setters
    public String getPrincAtivo() {
        return princAtivo;
    }

    public void setPrincAtivo(String princAtivo) {
        this.princAtivo = princAtivo;
    }

    public boolean isTarjaPreta() {
        return tarjaPreta;
    }

    public void setTarjaPreta(boolean tarjaPreta) {
        this.tarjaPreta = tarjaPreta;
    }
}
