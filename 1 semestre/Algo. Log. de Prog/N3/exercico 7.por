programa
{	
	inteiro num
	
	funcao inicio()
	{
		escreva("Verificar se o numero é par: ")
		leia(num)
		
		verificaPar(num)
		
	}
	funcao logico verificaPar(inteiro valor)
	{	
		se ( valor % 2 == 0)
		{	
			retorne verdadeiro
		}senao
			{
				retorne falso
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 191; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */