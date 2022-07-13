programa
{
	inclua biblioteca Util --> ut
	/*
	*Crie um programa em C que receba em um vetor os nomes de 5 alunos. Armazene 
	*também em uma Matriz 5x5 as 4 notas referentes a cada aluno, calcule a média 
	*aritmética e armazena também na matriz. Ao final liste o nome dos Alunos que 
	*obtiveram media maior que 6.
	*
	 */
	funcao inicio()
	{
		real notas[5][5]
		cadeia alunos[5]

		//entrada de dados
		lerNomes(alunos)
		limpa()
		lerNotas(notas, alunos)

		//descobrir quem tem media > 6
		para(inteiro aux=0; aux < ut.numero_elementos(alunos); aux++) {
			se(notas[aux][4] >= 6) 
				escreva("\n", alunos[aux], " tem média maior que 6")
		}
		
	}

	funcao lerNomes(cadeia nome[]) {
		para(inteiro aux=0; aux < ut.numero_elementos(nome); aux++) 
		{
			escreva("Digite o ", (aux+1), "º nome: ")
			leia(nome[aux])
		}
	}

	funcao lerNotas(real nt[][], cadeia nome[]) 
	{
		real media
		
		para(inteiro linha=0; linha < ut.numero_linhas(nt); linha++) 
		{
			media = 0.0 //zera a media pra iniciar a soma de cada aluno
			
			escreva("Digite as notas para o aluno ", nome[linha], "\n") 
			
			para(inteiro coluna=0; coluna < ut.numero_colunas(nt)-1; coluna++)
			{
				escreva("Digite a ", (coluna + 1), "ª Nota: ")
				//leia(nt[linha][coluna])
				nt[linha][coluna] = ut.sorteia(0, 1000) / 100.0
				escreva(nt[linha][coluna], "\n")

				//acumula as notas
				media += nt[linha][coluna]
			}

			//depois que digitou todas as notas
			//gravar a media
			nt[linha][4] = media / 4
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1343; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {notas, 13, 7, 5}-{alunos, 14, 9, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */