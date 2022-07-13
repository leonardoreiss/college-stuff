/*
 * 31)(IF)Solicitar do usuário dois números e uma 
 * operação (+,-,*,/), apresentar o resultado da operação 
 * escolhida utilizando os dois números digitados.
 */

programa
{
	real n1, n2, result
	caracter oper
	
	funcao inicio()
	{
		escreva("1° numero: ")
		leia(n1)
		escreva("2° numero: ")
		leia(n2)

		escreva("Operação desejada: [+][-][*][/]:  ")
		leia(oper)

		se(oper == '+')
		escreva("O resultado de ", n1, "+", n2, " é ", n1+n2)
		
		se(oper == '-')
		escreva("O resultado de ", n1, "-", n2, " é ", n1-n2)
	
		se(oper == '*')
		escreva("O resultado de ", n1, "*", n2, " é ", n1*n2)

		se(oper == '/')
		escreva("O resultado de ", n1, "/", n2, " é ", n1/n2)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 362; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */