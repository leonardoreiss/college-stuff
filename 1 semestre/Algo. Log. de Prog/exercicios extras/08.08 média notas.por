programa
{
	
	funcao inicio()
	{
		real nota1, nota2, nota3, nota4, recup
		real media

		escreva("Informe a primeira nota: ")
		leia(nota1)
		escreva("\nInforme a segunda nota: ")
		leia(nota2)
		escreva("\nInforme a terceira nota: ")
		leia(nota3)
		escreva("\nInforme a quarta nota: ")
		leia(nota4)
		
		media = (nota1 + nota2 + nota3 + nota4) / 4

		se(media >= 7)
		{
			escreva("\nAprovado!! Sua média foi: ", media)
		}
		se(media < 7)
		{
			escreva("\nFazer prova de recuperação...")
			escreva("\nQuanto tirou na prova de recuperação? ")
			leia(recup)

			media = (nota1 + nota2 + nota3 + nota4 + recup) / 4
			
			se(media >= 6)
			{
				escreva("\nPassou pela recuperação, sua media foi: ", media)
			}
		}
		se(media < 6)
		{
			escreva("\nReprovado, sua media foi: ", media)
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 624; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */