package br.com.fatec;
public class main {
    public static void main(String[] args) {
        Proprietario proprietario = new Proprietario();
        proprietario.setCpf("12345678901");
        proprietario.setNome("James B.");
        Veiculo v1 = new Veiculo();
        v1.setPlaca("123");
        v1.setValor(1000.00f);

        Veiculo v2 = new Veiculo();
        v2.setPlaca("321");
        v2.setValor(1000.00f);

        Veiculo v3 = new Veiculo();
        v3.setPlaca("456");
        v3.setValor(1000.00f);

        Veiculo v4 = new Veiculo();
        v4.setPlaca("654");
        v4.setValor(1000.00f);

        Veiculo v5 = new Veiculo();
        v5.setPlaca("789");
        v5.setValor(1000.00f);

        Veiculo v6 = new Veiculo();
        v6.setPlaca("987");
        v6.setValor(1000.00f);

        proprietario.addVeiculo(v1);
        proprietario.addVeiculo(v2);
        proprietario.addVeiculo(v3);
        proprietario.addVeiculo(v4);
        proprietario.addVeiculo(v5);
        proprietario.addVeiculo(v6);

        proprietario.valorBens();
    }
}
