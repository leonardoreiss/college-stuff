public class Gato extends Animal{
    //Construtor
    public Gato(String nome) {
        super(nome);
    }

    //metodos
    public void miar(){
        System.out.println(getNome() + ": miauuuu!");
    }
}
