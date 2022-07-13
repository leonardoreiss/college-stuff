programa
{
	inclua biblioteca Texto --> txt
	
	funcao inicio()
	{

	cadeia num1, num2, resultado

	escreva("regra: numeros apenas de 3 digitos!!!!")

	escreva("\nEscreva o numero 1: ")
	leia(num1)

	escreva("\nEscreva o numero 2: ")
	leia(num2)

	se(txt.numero_caracteres(num1) != 3 ou txt.numero_caracteres(num2) != 3)
	{
		escreva("\nRegra não seguida")

	}
	senao 
	{
		resultado = txt.extrair_subtexto(num1, 0, 1) +
				  txt.extrair_subtexto(num2, 0, 1)

		resultado += txt.extrair_subtexto(num1, 1, 2) +
				   txt.extrair_subtexto(num2, 1, 2)	

		resultado += txt.extrair_subtexto(num1, 2, 3) +
				   txt.extrair_subtexto(num2, 2, 3)

		escreva("\nA intercalação é: ", resultado)
	}

	

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 691; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */