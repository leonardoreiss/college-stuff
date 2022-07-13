programa
{
	
	funcao inicio()
	{
		real n1, n2
		caracter string

		escreva("Escreva o primeiro numero: ")
		leia(n1)
		escreva("\nEscreva o segundo numero: ")
		leia(n2)

		string = tp.inteiro_para_cadeia(n1, 10) + "-" +
			    tp.inteiro_para_cadeia(n2, 10) 

		escreva("Dados concatenados: ", string)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 308; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */