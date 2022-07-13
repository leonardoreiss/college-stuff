
programa
{
	inteiro alunos[45][2]
	inteiro cont
	inteiro contA = 0
	inteiro contB = 0
	inteiro mediaA = 0
	inteiro mediaB = 0
		
	funcao inicio()
	{
		para(cont ; cont < 45; cont++)
		{
			escreva("Idade do aluno n°", cont)
			leia(alunos[cont][0])
			escreva("Altura em cm do aluno n°", cont)
			leia(alunos[cont][1])
			
			se(alunos[cont][1] <= 170)
			{
				mediaA = mediaA + alunos[cont][0]
				contA++
			}
			se(alunos[cont][0] > 19)
			{
				mediaB = mediaB + alunos[cont][1]
				contB++
			}

			mediaA = mediaA / contA
			mediaB = mediaB / contB
			
		}

		escreva("A idade média dos alunos com altura menor que 1.70m é: ", mediaA, "\n")
		escreva("A altura média dos alunos com mais de vinte anos é: ", mediaB, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */