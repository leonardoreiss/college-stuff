package br.com.fatec;

//extends quer dizer herança (filho de funcionarios)
public class Gerente extends Funcionario {
    private float gratificacao;

    public float getGratificacao() {
        return gratificacao;
    }

    public void setGratificacao(float gratificacao) {
        this.gratificacao = gratificacao;
    }

    public float ganhoMensal() {

    }
}