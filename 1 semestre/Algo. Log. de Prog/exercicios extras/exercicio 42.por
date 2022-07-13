/*
 * 42)(STRING) Crie um programa em C que solicite 
 * do usuário nome e 4 notas. Calcule a média e atribua 
 * para uma variável do tipo String a palavra “Aprovado” 
 * ou “Reprovado” dependendo da média. Apresente ao final 
 * o nome do aluno e sua situação. Verifique se o usuário 
 * que digitar outro aluno. Faça essa verificação usando uma 
 * variável do tipo String.
 */

programa
{
	
	cadeia aluno
	real nota[4], media
	cadeia stts
	
	funcao inicio()
	{
		escreva("Nome do aluno: ")
		leia(aluno)
		escreva("Nota 1: ")
		leia(nota[0])
		escreva("Nota 2: ")
		leia(nota[1])
		escreva("Nota 3: ")
		leia(nota[2])
		escreva("Nota 4: ")
		leia(nota[3])

		media = (nota[0] + nota[1] + nota[2] + nota[3]) / 48

		se(media >= 7)
		{
			stts = "aprovado"
		}senao
		{
			stts = "reprovado"
		}
		escreva("A situação do aluno ", aluno, " é:" ,stts)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 802; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */