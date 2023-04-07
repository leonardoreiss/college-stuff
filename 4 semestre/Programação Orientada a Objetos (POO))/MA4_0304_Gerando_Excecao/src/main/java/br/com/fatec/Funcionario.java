/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.fatec;

/**
 *
 * @author aluno
 */
public class Funcionario {
    private String nome;
    private float pisoSalarial;
    private final float salarioMinimo = 1320.00f;
    private float salario;

    //contrutor
    /**
     * Funcionario tem que possuir um Piso Salarial obrigatório
     * que DEVE ser maior ou igual ao Salário Minimo
     * @param pisoSalarial
     * @throws Exception 
     */
    public Funcionario(float pisoSalarial) throws Exception {
        if(pisoSalarial < salarioMinimo) {
            throw new Exception("Piso salarial menor que R$ " + 
                    salarioMinimo);
        }
        this.pisoSalarial = pisoSalarial;
    }
    
    //metodos
    /**
     * Atribui o salário do funcionário
     * @param salario do Funcionario
     * @throws Exception Salario não pode ser menor que o
     *                   Piso Salarial da categoria
     */
    public void atribuiSalario(float salario) throws Exception {
        //salario não pode ser menor que piso salarial
        if(salario < pisoSalarial) {
            //gerar um erro
            throw new Exception("Salario menor que Piso Salarial");
        }
        else {
            this.salario = salario;
            //ou
            setSalario(salario);
        }
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public float getPisoSalarial() {
        return pisoSalarial;
    }

    //o piso salarial é informado somente no contrutor
    private void setPisoSalarial(float pisoSalarial) {
        this.pisoSalarial = pisoSalarial;
    }

    public float getSalario() {
        return salario;
    }

    //só é possivel alterar o salario pelo método atribuiSalario()
    private void setSalario(float salario) {
        this.salario = salario;
    }
    
    
}
