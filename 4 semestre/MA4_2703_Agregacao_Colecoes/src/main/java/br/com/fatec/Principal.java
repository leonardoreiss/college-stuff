/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec;

/**
 *
 * @author Aluno
 */
public class Principal {

  public static void main(String[] args) {
    // criando um objeto
    Projeto proj = new Projeto();

    proj.setDescricao("Implementação de biblioteca online");
    proj.setValor(4500);

    // participantes
    Participante p1 = new Participante();
    p1.setNome("Ricardo Sales");
    p1.setRegistro(1);

    // adiciona esse participante
    proj.adicionaParticipante(p1);

    // outro participante
    p1 = new Participante(); // tem que instanciar novamente para criar outra referencia na memoria

    p1.setNome("Patricia Pilar");
    p1.setRegistro(2);
    proj.adicionaParticipante(p1);

    //mais um
    p1.setNome("Klever Araujo");
    p1.setRegistro(1);
    proj.adicionaParticipante(p1);

    // listar os participantes
    System.out.println("Antes da remoção do registro 2 \n");
    listaParticipantes(proj);

    //removendo o registro 2
    if(proj.removeParticipante(2) == null) {
      System.out.println("\nparticipante não encontrado !!!!\n");
    }

    System.out.println("depois da remoção do registro 2\n");
    listaParticipantes(proj);

  }

  public static void listaParticipantes(Projeto proj) {
    System.out.println("Projeto" + proj.getDescricao());
    for (Participante aux : proj.getParticipante()) {
      System.out.println("Registro: " + aux.getRegistro());
      System.out.println("Nome: " + aux.getNome());
    }
  }
}