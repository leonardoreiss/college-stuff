/*
 * 41)(STRING) Crie um programa em C que solicite do usuário 2 palavras, 
 * em seguida troque o conteúdo entre as duas e as apresente.
 */


programa
{
	cadeia txt1, txt2, trc
	 
	funcao inicio()
	{
		escreva("Palavra 1: ")
		leia(txt1)
		escreva("Palavra 2: ")
		leia(txt2)

		trc = txt1
		txt1 = txt2
		txt2 = trc

		escreva("\nTrocamos as palavras kkkkk\n\n")
		escreva("palavra 1: ", txt1, " e a palavra 2 é: ", txt2, "\n")
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 435; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */