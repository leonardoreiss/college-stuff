programa
{
	
	funcao inicio()
	{
		inteiro vetorA[5]
		inteiro vetorB[5]
		inteiro vetorC[5]
		inteiro x
		
		para(x = 0; x < 5; x++)
		{
			escreva("\ninforme o ", x+1, "° valor de A: ") 
			leia(vetorA[x])

			escreva("informe o ", x+1, "° valor de B: ") 
			leia(vetorB[x])

			vetorC[x] = vetorA[x] + vetorB[x]

			escreva("Soma do ", x+1, "° conjunto: ", vetorC[x], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 379; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */