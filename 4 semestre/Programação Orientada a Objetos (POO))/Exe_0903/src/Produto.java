public class Produto {
    private int codigo;
    private String descricao;
    private float preco;


    public Produto() {

    }

    public Produto(String descricao, float preco) {
        this.descricao = "Batata";
        this.preco = 123;
    }

    public void aumento(float valor) {
        this.preco = this.preco + valor;
    }

    //Getters e Setters
    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }
}
