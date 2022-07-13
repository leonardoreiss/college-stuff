/*
 * 16) Solicitar do usuário um número inteiro qualquer 
 * e informar se esse número é par ou ímpar.
 */

programa
{
	inteiro num
	
	funcao inicio()
	{
		escreva("Digite um valor: ")
		leia(num)

		se( num % 2 == 0)
			escreva("Este numero é par!")
		senao
			escreva("Este numero é impar!")

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 300; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */