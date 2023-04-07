import java.util.HashSet;

public class Projeto {

    private String descricao;
    private float valor;

    // agregação com coleção
    private HashSet<Participante>
        participantes = new HashSet<>();

    // metodos

    /**
     *  Adiciona um participante na coleção
     * @param p Participante a ser adicionado
     */
    public void adicionarParticiopante(Participante p){
        participantes.add(p);
    }

    /**
     * Remove um participante do projeto
     * @param registro participante a ser removido
     * @return Participante que foi removido ou NULL se não removeu
     */
    public Participante removerParticipante(int registro){
        // Para remover um participante sendo um objeto é preciso
        // sobrescrever os métodos Hashcode() e Equals() na classe participante

        Participante p = new Participante();
        p.setRegistros(registro);
        // procura o participante
        for (Participante aux: participantes){
            if (aux.getRegistros() == registro){
                p =aux;
                break;
            }
        }
        participantes.remove(p);
        return p;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    public HashSet<Participante> getParticipantes() {
        return participantes;
    }

    public void setParticipantes(HashSet<Participante> participantes) {
        this.participantes = participantes;
    }
}
