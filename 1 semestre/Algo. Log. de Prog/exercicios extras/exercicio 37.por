/*
 * 37)(STRING) Solicitar do usuário dois números em variáveis inteiras. 
 * Armazenas esses dois números no formato N1-N2 em uma variável do 
 * tipo String. Apresentar a variável String. EX
 *		N1 = 123
 *		N2 = 4
 *		String= 123-4
 */

programa
{
	inclua biblioteca Tipos --> tp
	
	inteiro num[2]
	cadeia result[2]
	cadeia f
	
	funcao inicio()
	{
		escreva("escreva o primeiro numero: ")
		leia(num[0])
		escreva("escreva o segundo numero: ")
		leia(num[1])
		
		result[0] = tp.inteiro_para_cadeia(num[0], 10)
		result[1] = tp.inteiro_para_cadeia(num[1], 10)

		f = result[0] + "-" + result[1]
		escreva(f)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 283; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */