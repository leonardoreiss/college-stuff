package br.com.fatec;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.swing.JOptionPane;
public class Proprietario {
    private String nome;
    private String cpf;
    private int qtd;
    private float soma = 0.0f;
    Set<Veiculo> veiculo = new HashSet<>();
    public void addVeiculo(Veiculo veiculo){
        if(qtd < 5){
            veiculo.add(veiculo);
            qtd++;
            System.out.println("Veículo da placa " + veiculo.getPlaca() + " adicionado" );
        }
        else{
           Object[] options = {"Sim", "Não"};
           int n = JOptionPane.showOptionDialog(null,
                   "Você quer adicionar outro veículo? ",
                   "Atenção", JOptionPane.YES_NO_OPTION,
                   JOptionPane.QUESTION_MESSAGE, null, options, options[0]);
           if(n==0){
               veiculo.add(veiculo);
               qtd++;
               System.out.println("Veículo da placa " + veiculo.getPlaca() + " adicionado");
           }
           else{
               System.out.println("OK");
           }
        }
    }
    public float valorBens(){
        System.out.println('a');
        Iterator<Veiculo> it = veiculo.iterator(); //obtem o iterador
        while(it.hasNext()) {
            Veiculo aux = it.next();
            soma = aux.getValor();
            System.out.println("Valor: " + soma);
        }
        return soma;
    }
    public  Veiculo removeVeiculo(String placa){
        Veiculo v = new Veiculo();
        v.setPlaca(placa);

        if(veiculo.contains(v) == false) return null;
        for (Veiculo aux :veiculo){
            if(aux.getPlaca() == placa){
                v = aux;
                break;
            }
        }
        veiculo.remove(v);
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
