import java.util.InputMismatchException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        //Metodo principal do projeto
        Scanner teclado = new Scanner(System.in);
        int numero = 0;

        try {
            System.out.println("Digite um numero");
            numero = teclado.nextInt();

            System.out.println("30 / " + numero + " = " +30/numero);

        }
        catch (InputMismatchException ex) {
            System.out.println("Erro: " + ex.getMessage());
            System.out.println("Erro: conteudo inválido para entrada");
        }
        catch (ArithmeticException ex){
            System.out.println("Erro de calculo: " + ex.getMessage());

        }

        System.out.println("O numero digitado foi " + numero);
    }
}