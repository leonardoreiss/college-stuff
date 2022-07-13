programa
{
	
	funcao inicio()
	{
		inteiro vetorA[6]
		inteiro num = 0, x = 0

		escreva("Só será armazenado os 6 primeiros numeros pares !!!!\n")

		enquanto(x < 6)
		{
			escreva("Cite um determinado valor: ")
			leia(num)

			se(num % 2 == 0)
			{
			 vetorA[x] = num
			 x++
			}
		}

		para(x = 0; x < 6 ; x++)
		escreva("\nO ", x+1 ,"° valor par é: ", vetorA[x])
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 306; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */