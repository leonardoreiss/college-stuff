/*
 * 24)(IF) Solicitar do usuário 4 notas. Calcular a média aritmética. 
 * 	Informar se o aluno está aprovado ou não, seguindo os critérios
 *		Media >=7 – Aprovado
 *		Media < 7 – Fazer prova de Exame
 *		Calcular nova média
 *		Media >=6 – Aprovado Exame
 *		Media <6 – Reprovado
 *
 */
programa
{
	real n1, n2, n3, n4, media, nE
	
	funcao inicio()
	{
		escreva("nota 1: ")
		leia(n1)
		escreva("nota 2: ")
		leia(n2)
		escreva("nota 3: ")
		leia(n3)
		escreva("nota 4: ")
		leia(n4)

		media = (n1 + n2 + n3 + n4) / 4
		escreva("Sua media é: ", media, "\n")

		se(media >= 7)
		{
			escreva("Aprovado!")
		}
		senao
		{
			escreva("fazer prova de exame!\n")
			escreva("Nota da prova de exame: ")
			leia(nE)

			media = (n1 + n2 + n3 + n4 + nE) / 5
			
			se(media >= 6)
			{
				escreva("Aprovado Exame")
			}
			senao
			{
				escreva("Reprovado!")
			}
			
		}
		
	}
}




/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 566; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */