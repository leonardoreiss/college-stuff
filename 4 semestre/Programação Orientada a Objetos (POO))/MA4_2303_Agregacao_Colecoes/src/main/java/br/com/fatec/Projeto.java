/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec;

import java.util.HashSet;

/**
 *
 * @author Aluno
 */
public class Projeto {
    private String descricao;
    private float valor;
    
    //Agregação com Coleção
    private HashSet<Participante>
            participante = new HashSet<>();
    
    //Métodos
    /**
     * Adiciona um participante na coleção
     * @param p Participante a ser adicionado
     */
    public void adicionaParticipante(Participante p){
        participante.add(p);
    }
    
    /**
     * Remove um Participante do projeto
     * @param registro Participante a ser removido
     * @return Participante que foi removido ou NULL se não removeu
     */
    public Participante removeParticipante(int registro){
        //Para remover um participante sendo um objeto
        //é preciso sobrescrever os métodos HashCode() e Equals()
        //na classe Participante
        Participante p = new Participante();
        p.setRegistro(registro);
        //antes de remover, vamos ver se existe
        if(participante.contains(p) == false)
            return null;
        //procura o participante
        for (Participante aux : participante){
            if(aux.getRegistro() == registro){
                p = aux;
                break;
                
            } 
        }
        participante.remove(p);
        return p;
    }
            
    //Getters & Setters
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

    public HashSet<Participante> getParticipante() {
        return participante;
    }

    public void setParticipante(HashSet<Participante> participante) {
        this.participante = participante;
    }          
}
