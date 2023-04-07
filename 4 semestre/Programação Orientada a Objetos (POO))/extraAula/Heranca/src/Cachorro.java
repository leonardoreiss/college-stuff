public class Cachorro extends Animal {
    
    //Atributos
    private int ossosComidos;

    public Cachorro(String nome) {
        super(nome); //A primeira linha deve conter a chamada do construtor da classe super
        this.ossosComidos = 5;
        
    }
    //metodos
    public void latir(){
        System.out.println(getNome() + ": auau!");
    }
    public void lamber(){
        System.out.println(getNome() + ": lambendo :)");
    }

    //Getters e Setters
    public int getOssosComidos() {
        return ossosComidos;
    }
    public void setOssosComidos(int ossosComidos) {
        this.ossosComidos = ossosComidos;
    }
}
