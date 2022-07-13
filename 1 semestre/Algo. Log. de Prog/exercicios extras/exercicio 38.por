/*
 * 38)(STRING) Receba do usuário 2 números com 3 dígitos cada uma, 
 * não permita que o programa receba algo diferente disso. 
 * Crie uma variável String que recebera os número intercalados. 
 * 	EX:
 *		N1 = 123
 *		N2 = 456
 *		T = 142536
 */

programa
{
	inclua biblioteca Texto --> txt
	
	inteiro numC[2]
	cadeia n[2], result
	
	funcao inicio()
	{
		
		faca
		{
			escreva("Apenas numeros com 3 digitos!!!")
			escreva("\n-------------------------------\n")
			escreva("Primeiro numero de 3 caracteres: ")
			leia(n[0])
			escreva("Segundo numero de 3 caracteres: ")
			leia(n[1])
			escreva("\n-------------------------------\n")


			numC[0] = txt.numero_caracteres(n[0])
			numC[1] = txt.numero_caracteres(n[1])
			
		}enquanto(numC[0] < 3 ou numC[1] < 3)

		result = n[0] + n[1]

		escreva("Os numeros ",n[0], " e ", n[1], "concatenados são: ", result)

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 830; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */