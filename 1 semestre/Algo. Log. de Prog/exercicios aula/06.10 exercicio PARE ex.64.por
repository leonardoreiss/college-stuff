programa
{
	
	funcao inicio()
	{
		inteiro qtd = 0, cont, num = 0, pares = 0, impares = 0

		escreva("Quantos numeros quer digitar ?: ")
		leia(qtd)

		para(cont = 0; cont < qtd; cont++)
		{

			faca {
				escreva("digite um numero entre -15 e 45: ")
				leia(num)
			}enquanto(num < -15 ou num > 45)

				se(num % 2 == 0)
				{
					pares += num	
				}senao
				{
					impares += num
				}
		}
		
			escreva("\nSoma dos numeros pares: ", pares)
			escreva("\nSoma dos numeros impares: ", impares)
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 255; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */