package br.com.fatec;

import java.util.Objects;

public class Veiculo {
    private String placa;
    private float valor;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Veiculo veiculo = (Veiculo) o;
        return placa.equals(veiculo.placa);
    }

    @Override
    public int hashCode() {
        return Objects.hash(placa);
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    public void add(Veiculo veiculo) {
    }
}
