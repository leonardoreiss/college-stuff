import javax.swing.JOptionPane;
import java.util.Iterator;
import java.util.HashSet;

public class Proprietario {
    private String nome;
    private String cpf;
    private float soma = 0;
    private HashSet<Veiculo> veiculos = new HashSet<Veiculo>();
    public void addVeiculo(Veiculo veiculo){
        if(veiculos.size() < 5){
            veiculos.add(veiculo);
            System.out.println("Veículo da placa " + veiculo.getPlaca() + " adicionado" );
        }
        else{
           Object[] options = {"Sim", "Não"};
           int n = JOptionPane.showOptionDialog(null,
                   "Você quer adicionar outro veículo? ",
                   "Atenção", JOptionPane.YES_NO_OPTION,
                   JOptionPane.QUESTION_MESSAGE, null, options, options[0]);
           if(n==0){
               veiculos.add(veiculo);
               System.out.println("Veículo da placa " + veiculo.getPlaca() + " adicionado");
           }
           else{
               System.out.println("OK");
           }
        }
    }
    public float valorBens(){
        Iterator<Veiculo> it = veiculos.iterator(); //obtem o iterador
        while(it.hasNext()) {
            Veiculo aux = it.next();
            soma += aux.getValor();
        }
        return soma;
    }
    public  Veiculo removeVeiculo(String placa){
        Veiculo v = new Veiculo();
        v.setPlaca(placa);

        if(veiculos.contains(v) == false) return null;
        for (Veiculo aux :veiculos){
            if(aux.getPlaca() == placa){
                v = aux;
                System.out.println("veiculo " + placa + " removido com sucesso!");
                break;
            }
        }
        veiculos.remove(v);
        return v;
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getCpf() {
        return cpf;
    }
    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
}
