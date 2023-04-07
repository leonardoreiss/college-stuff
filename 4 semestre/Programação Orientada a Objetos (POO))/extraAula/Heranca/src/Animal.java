public class Animal {
    private String nome;

    public Animal(String nome) {
        this.nome = nome;
    }

    public void comer() {
        System.out.println(getNome() + ": hummm papa gostoso");
    }
    public void beber(){
        System.out.println(getNome() + ": bebendo :)");
    }

    //Getters e Setters
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
}
