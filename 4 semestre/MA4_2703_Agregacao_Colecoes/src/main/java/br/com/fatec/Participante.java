/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec;

import java.util.Objects;

/**
 *
 * @author Aluno
 */
public class Participante {
    private int registro;
    private String nome;

    //Sobreescrevendo equals() e hashcode() para comparações

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Participante that = (Participante) o;
        return registro == that.registro;
    }

    @Override
    public int hashCode() {
        return Objects.hash(registro);
    }


    //Getters & Setters
    
    public int getRegistro() {
        return registro;
    }

    public void setRegistro(int registro) {
        this.registro = registro;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    
}
