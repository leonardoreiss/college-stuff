/*
 * 8)Faça um programa em VisualG, que solicite do usuário o nome e sua idade. 
 * Exiba a frase “Olá sr(a) XXXXXXXXXXXXXXXXX, você tem XX anos de idade”.
 */

programa
{
	inteiro idade
	cadeia nome
	
	funcao inicio()
	{
		escreva("Qual é o seu nome?: ")
		leia(nome)
		escreva("Qual é a sua idade ?:")
		leia(idade)

		escreva("\nOlá sr(a) ", nome, " você tem ", idade, " anos de idade.")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 394; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */