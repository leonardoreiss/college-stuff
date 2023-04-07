public class Pombo extends Ave{
    //atributos
    private int cartasEnviadas;

    //Construtores
    public Pombo(String nome) {
        super(nome);
        cartasEnviadas = 10;
    }

    //metodos
    public void fazerPruh(){
        System.out.println(getNome() + ": Pruh");
    }
    public void enviarCarta(){
        System.out.println(getNome() + ": Olha a mensagem!");
    }

    //Getters e Setters
    public int getCartasEnviadas() {
        cartasEnviadas++;
        return cartasEnviadas;
    }
}
