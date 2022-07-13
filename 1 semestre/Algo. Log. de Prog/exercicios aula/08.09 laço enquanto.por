programa
{
	/*
	 * Laço de repetição ENQUANTO()
	 * 
	 * Faz os testes nas condições ANTES de entrar no laço
	 * e permanece executando o Laço ENQUANTO o resultado da
	 * condição for VERDADEIRO
	 */
	
	funcao inicio()
	{
		//escrever o nome FATEC 5x

		inteiro contador

		//inicializa o contador 
		contador = 0

		// faz o laço
		enquanto(contador < 5)
		{
			//comandos que serão executados várias vezes
			escreva("\n", (contador + 1), " -FATEC...")

			//adicionar 1 no contador
			contador ++  //equivale a contador = contador +1 ou
			             // contador += 1
		}
		//continua o programa
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 449; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */