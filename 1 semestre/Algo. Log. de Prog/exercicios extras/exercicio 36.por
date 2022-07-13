/*
 * 36)(STRING) Solicitar do usuário dois números de 3 posições cada. 
 * Apresentar o valor da multiplicação de cada posição de um numero pelo outro. 
 * EX:
 *		123
 *		456
 *		1*4 + 2*5 + 3*6
 */
programa
{
	inclua biblioteca Tipos --> tp
	inclua biblioteca Texto --> txt
	
	
	cadeia n1, n2
	cadeia num1[3], num2[3]
	inteiro result[3], conv1[3], conv2[3]
	
	funcao inicio()
	{
		escreva("1° numero de 3 algoritmos: ")
		leia(n1)
		escreva("2° numero de 3 algoritmos: ")
		leia(n2)

		num1[0] = txt.extrair_subtexto(n1, 0, 1)
		num1[1] = txt.extrair_subtexto(n1, 1, 2)
		num1[2] = txt.extrair_subtexto(n1, 2, 3)

		num2[0] = txt.extrair_subtexto(n2, 0, 1)
		num2[1] = txt.extrair_subtexto(n2, 1, 2)
		num2[2] = txt.extrair_subtexto(n2, 2, 3)

		conv1[0] = tp.cadeia_para_inteiro(num1[0], 10)
		conv1[1] = tp.cadeia_para_inteiro(num1[1], 10)
		conv1[2] = tp.cadeia_para_inteiro(num1[2], 10)

		conv2[0] = tp.cadeia_para_inteiro(num2[0], 10)
		conv2[1] = tp.cadeia_para_inteiro(num2[1], 10)
		conv2[2] = tp.cadeia_para_inteiro(num2[2], 10)
		
		result[0] = conv1[0] * conv2[0]
		result[1] = conv1[1] * conv2[1]
		result[2] = conv1[2] * conv2[2]
		
		
		escreva(n1, "e", n2, "compartilhados da os seguintes resultados:\n" )
		escreva(num1[0], "*", num2[0], "=", result[0], "\n") 
		escreva(num1[1], "*", num2[1], "=", result[1], "\n") 
		escreva(num1[2], "*", num2[2], "=", result[2], "\n") 
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 497; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */