programa
{
	
	funcao inicio()
	{
		inteiro vetorA[5]
		inteiro vetorB[5]
		inteiro vetorC[10]
		inteiro x
		
		para(x = 0; x < 5; x++)
		{

			escreva("informe o ", x+1, "° valor de A: ") 
			leia(vetorA[x])

			vetorC[x] = vetorA[x]

		}
		escreva("\n----------------\n")		
		
		para(x = 0; x < 5; x++)
		{
			escreva("informe o ", x+1, "° valor de B: ") 
			leia(vetorB[x])

			vetorC[x + 5] = vetorB[x]
		}
		
		escreva("\n----------------\n")
		
		para(x = 0; x < 10; x++)
		{
			escreva("\nO ", x+1, "° conjunto: ", vetorC[x])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 405; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */