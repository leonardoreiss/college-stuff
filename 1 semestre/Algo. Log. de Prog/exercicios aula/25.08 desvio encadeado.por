programa
{
	
	funcao inicio()
	{
		//variaveis
		real media
		inteiro faltas
		//entradas de dados 
		escreva("Informe a média do aluno: ")
		leia(media)
		
		escreva("Informe as faltas do aluno: ")
		leia(faltas)


		//saida de dados
		se(media >= 6 e faltas <=20)
		{	//parte verdadeira
			escreva("\n Você foi apovado")
		}
		senao
		{//parte falsa 
			escreva("\n Que pena, você foi reprovado \n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 404; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */