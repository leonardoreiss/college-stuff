programa
{
	
	funcao inicio()
	{
		inteiro num

		escreva("Digite um numero: ")
		leia(num)
	
		se(num >= 0 e num <= 10)
			escreva("Pertece a faixa 1.")
		senao
			se(num >= 15 e num <= 25)
				escreva("Pertece a faixa 2.")
			senao
				se(num >= 26 e num <= 40)
					escreva("Pertece a faixa 3.")
				senao
					escreva("Não pertence a nenhuma faixa...")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 361; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */