/*
 * 30)(SWITCH) Faça um programa em C que solicite o sexo do usuário (M/F), 
 * e informe que o sexo digitado foi Masculino, Feminino ou Sexo Inválido. 
 * Resolva em duas etapas, uma usando o Switch e outra usando o IF. 
 * Lembre-se o usuário pode digitar letras maiúsculas ou minúsculas.
 */

programa
{
	caracter sexo
	
	funcao inicio()
	{
		escreva("Qual é o seu sexo:[M][F][I] ")
		leia(sexo)

		se(sexo == 'M' ou sexo == 'm')
			escreva("Sexo masculino!")
		se(sexo == 'F' ou sexo == 'f')
			escreva("Sexo feminino!")
		se(sexo == 'I' ou sexo == 'i')
			escreva("Sexo invalido!")

		escolha(sexo)
		{
			caso 'M':
			caso 'm':
				escreva("Sexo masculino!")
			pare
			
			caso 'F':
			caso 'f':
				escreva("Sexo feminino!")
			pare

			caso 'I':
			caso 'i':
				escreva("Sexo invalido!")

			caso contrario:
				escreva("Nenhuma opção acima foi utilizada")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 874; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */