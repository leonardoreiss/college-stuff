/*
 * 17) Ler dois valores numéricos inteiros e apresentar o resultado da diferença 
 * do maior valor pelo menor valor.
 */

programa
{
	inteiro n1, n2, result
	
	funcao inicio()
	{
		escreva("Digite o primeiro numero: ")
		leia(n1)
		escreva("Digite o segundo numero: ")
		leia(n2)

		se(n1>n2)
		{
			result = n1 - n2
			escreva("A diferença do maior ao menor é: ", result)
		}
		se(n2>n1)
		{
			result = n2 - n1
			escreva("A diferença do maior ao menor é: ", result)
		}
		se(n1 == n2)
		{
			escreva("Os numeros são iguais")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 541; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */