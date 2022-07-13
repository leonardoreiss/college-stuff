programa
{
	/*
	* Esse tipo de laço é mais utilizado quando o laço necessita 
	* fazer algum tipo de contagem para permanecer no laço
	*/
	funcao inicio()
	{
		inteiro cont 

		//com enquanto
		cont = 1
		enquanto(cont <= 10)
		{
			escreva ("\nValor ==> ", cont)
			cont++
		}

		//com faca...enquanto
		cont=1
		faca
		{
			escreva ("\nValor ==> ", cont)
			cont++
		} enquanto(cont <= 10)

		//com para
		/*
		 * para(A,B,C)
		 * 1 executa o A
		 * 2 executa o B - se condição verdadeira fica no laço
		 * 3 faz o loop (comandos dentro do Loop)
		 * 4 executa o C
		 * 5 executa o B - se condição verdadeira fica no laço
		 * 6 faz o loop (comandos dentro do Loop)
		 * faz o 4, 5, 6 até acabar
		 */
		para(cont=1; cont<=10; cont++)
		{
			escreva ("\nValor ==> ", cont)
		}

		//escrever de 2 em 2
		para(cont=50; cont<=70; cont+=2)
		{
			escreva("\ne em 2: ", cont)
		}

		//escrever de -2 em -2
		para(cont=70; cont>=50; cont-=2)
		{
			escreva("\ne em 2: ", cont)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 977; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */