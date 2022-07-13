programa
{
	/*
	* 118)	(FUNÇÕES) Crie uma função que calcule se um determinado número é primo, 
	* devolva para isso verdadeiro ou falso. No programa principal, solicite do usuário 
	* um número e verifique se o mesmo é primo ou não usando a função criada.
	*
	 */
	funcao inicio()
	{
		inteiro numero_qualquer

		escreva("Digite um numero: ")
		leia(numero_qualquer)

		se(primo(numero_qualquer)) {
			escreva("Esse numero É primo...")
		}
		senao {
			escreva("Esse número NÃO é primo...")
		}
	}

	funcao logico primo(inteiro numero) {
		//não existe numeros primos negativos
		se(numero < 0)
			retorne falso
			
		para(inteiro cont = 2; cont < numero; cont++) {
			se(numero % cont == 0)
				retorne falso
		}

		retorne verdadeiro
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 622; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */