programa
{
	
	funcao inicio()
	{
		inteiro num, contador, conta

		escreva("Número que deseja da tabuada: ")
		leia(num)
		
		contador = 10

		enquanto(contador >= 0)
		{
			conta = num * contador
			
			escreva(num, "*", contador, " = ", conta, "\n")

			contador --
		}
	
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 162; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */