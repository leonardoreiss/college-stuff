programa
{
	/*
	* 1)	(Vetor/Função) Crie um programa que armazene em um vetor, pode cria-lo com 
	* 100 elementos, todos os números primos existentes entre 0 e 1000. Para calcular 
	* se o número é ou não primo, crie uma função para isso, essa função deve receber 
	* o número e devolver verdadeiro ou false, se é ou não primo
	 */
	funcao inicio()
	{
		inteiro primos[100] //vai conter os numeros primos entre 0 e 1000
		
		inteiro numero_qualquer, contador_primos=0

		para(numero_qualquer=0; numero_qualquer <= 1000; numero_qualquer++) {
			//se for primo armazena no vetor
			se(primo(numero_qualquer)) {
				//armazena no vetor
				primos[contador_primos] = numero_qualquer

				//adiciona um no contador de primos
				contador_primos++
			}
		}

		//exibe os numeros primos
		mostraPrimos(primos, contador_primos)
		
	}

	funcao mostraPrimos(inteiro vetor[], inteiro totalPrimos) {

		escreva("\n****** Os numeros Primos entre 0 e 1000 são ******\n")
		
		para(inteiro pos=0; pos < totalPrimos; pos++) {
			escreva("\n", vetor[pos])
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
 * @POSICAO-CURSOR = 823; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */