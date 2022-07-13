/*
 * 26)(ADS-IF) Solicitar um valor para o usuário e verificar 
 * se este valor está na faixa de 1 até 9, caso esteja, informar 
 * “O número é válido” caso contrário “Número inválido”
 */

programa
{
	inteiro num
	
	funcao inicio()
	{
		escreva("Digite um numero: ")
		leia(num)

		se(num >= 1 e num <=9)
		{
			escreva("O número é válido")
		}
		senao
			escreva("Número inválido")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 389; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */