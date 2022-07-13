/*
 13)	Dado o valor de um salário e convênio pelo usuário, calcule e exiba os seguintes itens:

a.	INSS – 8% sobre o salario
b.	IRRF – 11% sobre o salario
c.	Convênios – valor gasto com farmácia pelo funcionário
d.	Salario liquido = salario – inss – irrf - convênio

 */

programa
{
	real sal
	real inss, irrf
	real conv
	real result
	
	
	funcao inicio()
	{
		escreva("Calculador de debitos mensais \n")
		escreva("Salário á calcular: ")
		leia(sal)
		escreva("Valor gasto em farmácia: ")
		leia(conv)

		escreva("\n----------------------------\n")

		inss = sal * 0.08
		irrf = sal * 0.11

		result = sal - (inss + irrf + conv)

		escreva("Salário liquido final é de: ", result)
	}
}








/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 628; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */