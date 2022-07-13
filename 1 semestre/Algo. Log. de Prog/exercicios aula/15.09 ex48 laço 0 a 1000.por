programa
{
	
	funcao inicio()
	{
		inteiro num, div2, div4, div7

		num = 0
		div2 = 0
		div4 = 0
		div7 = 0
		
		enquanto (num <= 1000)
		{
			se (num % 2 == 0)
			{
				div2 ++
			}
			se (num % 4 == 0)
			{
				div4 ++
			}
			se (num % 7 == 0)
			{
				div7 ++
			}

			num ++

		}
		escreva("De 0 a 1000, os numeros divisiveis por: ")
		escreva("\n2 são: ", div2)
		escreva("\n4 são: ", div4)
		escreva("\n7 são: ", div7)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 275; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */