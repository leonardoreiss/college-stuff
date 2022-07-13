/*
 * Ler uma temperatura em graus Celsius e apresentá-la convertida 
 * em graus Fahrenheit. A formula de conversão é: F := (9 * C + 160)/5, sendo C a 
 * temperatura em Celsius e F em Fahrenheit
 */

programa
{
	real C, F
	
	
	funcao inicio()
	{
		escreva("Qual é a temperatura em celsius que você quer converter ?: ")
		leia(C)

		F = (9 * C + 160)/5

		escreva("Esta temperatura em Fahrenheit é: ", F)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 409; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */