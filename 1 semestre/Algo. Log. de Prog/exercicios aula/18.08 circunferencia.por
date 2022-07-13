programa
{

	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real raio 
		real area
		real PI = 3.1415

		//escreva("Digite o valor do raio: ")
		//leia(raio)

		//area = 3.1415 * (raio * raio)

		//escreva("A área da circunferencia é de ", area)

		escreva ("Informe o valor do raio: ")
		leia (raio)

		area = PI * mat.potencia (raio, 2.0)

		escreva ("A área do raio é: ", area)
	
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