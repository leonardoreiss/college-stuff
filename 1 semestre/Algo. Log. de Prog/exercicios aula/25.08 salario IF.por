programa
{
	real salario
	real nsalario
	
	funcao inicio()
	{
		escreva("informe seu salario: R$")
		leia(salario)

  		nsalario = salario
		
		se(salario < 2000)
		{
			salario = (salario * 1.10)
			escreva ("Salário antes: R$", nsalario, "\n")
			escreva ("Salário depois: R$", salario, "\n")
		}
		senao
		{
			escreva("Salário não mudou: R$", salario)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 364; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */