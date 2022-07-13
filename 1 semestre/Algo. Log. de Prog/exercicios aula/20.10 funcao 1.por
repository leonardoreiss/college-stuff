programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		inteiro entrada
		
		escreva("Digite um numero: ")
		leia(entrada)
		
		cubo(entrada)
	}

	funcao cubo(inteiro num)
	{
		inteiro res

		res = mat.potencia(num, 3.0)

		escreva("o Numero", num, " elevado ao cubo é: ", res)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 241; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */