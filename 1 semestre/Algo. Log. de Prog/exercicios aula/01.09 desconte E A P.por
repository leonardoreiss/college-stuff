programa
{

	funcao inicio()
	{

		caracter cliente
		real valor
	
		escreva("Qual é o valor do produto? R$")
		leia(valor)
		
		escreva("\nVocê é: estudante(E), Assalariado(A) ou Aposentado(P)?")
		leia(cliente)

		escolha(cliente)
		{
			caso 'E':
			caso 'e':
				valor = valor * 0.15
				escreva("Desconto de 15%, total: R$", valor )
					pare
			
			caso 'A':
			caso 'a':
				valor = valor * 0.10
				escreva("Desconto de 10%, total: R$", valor )
					pare
			
			caso 'P':
			caso 'p':
				valor = valor * 0.25
				escreva("Desconto de 25%, total: R$", valor )
					pare
			
			caso contrario:
				escreva("Valor sem desconto. R$", valor)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 577; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */