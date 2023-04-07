public class App {
    public static void main(String[] args) throws Exception {
        Proprietario proprietario = new Proprietario();
        proprietario.setCpf("12345678901");
        proprietario.setNome("James B.");
        Veiculo v1 = new Veiculo();
        v1.setPlaca("AJN-3986");
        v1.setValor(21000.00f);

        Veiculo v2 = new Veiculo();
        v2.setPlaca("GOL-2534");
        v2.setValor(44000.00f);

        Veiculo v3 = new Veiculo();
        v3.setPlaca("JBL-4030");
        v3.setValor(72000.00f);

        Veiculo v4 = new Veiculo();
        v4.setPlaca("IOF-9001");
        v4.setValor(120000.00f);

        Veiculo v5 = new Veiculo();
        v5.setPlaca("ISO-5410");
        v5.setValor(1000000.00f);

        Veiculo v6 = new Veiculo();
        v6.setPlaca("HGF-7056");
        v6.setValor(200000.00f);

        proprietario.addVeiculo(v1);
        proprietario.addVeiculo(v2);
        proprietario.addVeiculo(v3);
        proprietario.addVeiculo(v4);
        proprietario.addVeiculo(v5);
        proprietario.addVeiculo(v6);

        proprietario.removeVeiculo("ISO-5410");
        
        System.out.println("Valor da frota pessoal do "  + proprietario.getNome() + " é de: R$" + proprietario.valorBens());
    }
}
