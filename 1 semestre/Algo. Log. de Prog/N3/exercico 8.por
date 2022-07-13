/*
 * 8. Faça um programa que solicite do usuário a entrada de 
 * 1000 números. Esses números devem ser armazenados obrigatoriamente 
 * em um vetor chamado “entrada”. Crie um arquivo texto chamado “saída.txt” 
 * que deverá ser gravado neste arquivo na primeira linha a quantidade de valores 
 * pares existentes no vetor, e na segunda linha a quantidade de valores ímpares 
 * existentes no vetor.
 */


programa
{
	inclua biblioteca Tipos --> tp
	inclua biblioteca Arquivos --> arq
	
	inteiro entrada[1000]
	inteiro refArq
	inteiro pares = 0
	inteiro impares = 0
	cadeia par
	cadeia impar
	
	funcao inicio()
	{

		
		para(inteiro cont = 0; cont < 1000; cont++)
		{
			escreva("Digite o numero ", cont+1, ": ")
			leia(entrada[cont])

			se(entrada[cont] % 2 == 0)
			{
			 	pares++
			}senao
				{
					impares++
				}
		}

		refArq = arq.abrir_arquivo("./saída.txt", arq.MODO_ACRESCENTAR)

		par = tp.inteiro_para_cadeia(pares, 10)
		impar = tp.inteiro_para_cadeia(impares, 10)

		escreva("Quantidades de numeros impares: ", impar, "\n")
		escreva("Quantidades de numeros impares: ", par)
		
		arq.escrever_linha(par, refArq)
		arq.escrever_linha(impar, refArq)
		
		arq.fechar_arquivo(refArq)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 710; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */