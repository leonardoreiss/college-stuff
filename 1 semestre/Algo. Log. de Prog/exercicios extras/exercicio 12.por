/*
 * 12)Faça um algoritmo que receba como entrada as medidas 
 * dos dois catetos de um triângulo retângulo e calcule e exiba a medida 
 * da hipotenusa e a área do triângulo.
 */

programa
{
	inclua biblioteca Matematica --> mat
	
	real a, b, c, result
	
	funcao inicio()
	{
		escreva("Forneça o primeiro cateto: ")
		leia(a)
		escreva("Forneça o segundo cateto: ")
		leia(b)

		a = a * a
		b = b * b

		c = a + b

		result = mat.raiz(c, 2.0)

		escreva("a hipotenusa é: ", result)

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 487; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */