public class App {
    public static void main(String[] args) throws Exception {
        Cachorro dog = new Cachorro("Nike");
        dog.beber(); //Esta na super Classe
        dog.comer(); //Esta na super Classe
        dog.latir(); //Esta na classe local 
        System.out.println("\n-------------------------");

        Gato cat = new Gato("Dagoberto");
        cat.beber();
        cat.miar();
        cat.comer();
        System.out.println("\n-------------------------");

        Dragao dg = new Dragao("Banguela");
        dg.voar();
        dg.beber();
        dg.soltarFogo();
        System.out.println("\n-------------------------");

        Pombo pb = new Pombo("Adilson");
        pb.beber();
        pb.voar();
        pb.fazerPruh();
        pb.enviarCarta();
    }
}
