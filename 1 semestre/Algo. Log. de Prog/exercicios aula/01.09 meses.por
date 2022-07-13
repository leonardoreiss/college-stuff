programa
{
	/*
	* Fazer um programa que solicite o numero mês e 
	* depois mostre o nome do mês.
	*/
	funcao inicio()
	{
		inteiro mes

		escreva("Digite o mês: ")
		leia(mes)
		
		//Pior forma, faz 4 comparações
		se(mes == 1)
			escreva("\nJaneiro")
		se(mes == 2)
			escreva("\nFevereiro")
		se(mes == 3)
			escreva("\nMarço")
		se(mes < 1 ou mes > 3)
			escreva("\nMês invalido...")

		//forma mais otimizada
		se(mes == 1)
			escreva("\nJaneiro")
		senao
			se(mes == 2)
				escreva("\nFevereiro")
			senao
				se(mes == 3)
					escreva("\nMarço")
				senao
					se(mes < 1 ou mes > 3)
						escreva("\nMês invalido...")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 630; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */