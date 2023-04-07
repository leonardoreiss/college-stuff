public class Pessoa {
    private int idade;
    private String nome;

    public Pessoa(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    //Getters e Setters
    public int getIdade() {
        return idade;
    }
    public void setIdade(int idade) {
        this.idade = idade;
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
}
