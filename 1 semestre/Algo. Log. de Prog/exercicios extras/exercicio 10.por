/*
 * 10) Crie um programa para realizar o cálculo da área de uma circunferência, 
 * sendo a formula A = PI * R*R. Solicite o valor do raio para o usuário, efetue o cálculo 
 * e exiba o valor. Lembre-se PI=3.1415
 */

programa
{
	real A, R
	real pi = 3.1415
	
	funcao inicio()
	{
		escreva("Qual é o Raio da circunferência que será cálculada?: ")
		leia(R)

		A = pi * R * R

		escreva("A área da circunferência é: ", A)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 428; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */