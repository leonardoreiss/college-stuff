programa
{
	real salarioB
	real salarioL
	
	funcao inicio()
	{
		escreva("Qual é o seu salario? R$")
		leia(salarioB)

		se(salarioB <= 1500)
		{
			salarioL = salarioB * 1.08
			escreva ("Seu salário com desconto do INSS fica: R$", salarioL, "\n")
		}
		senao
		{
			salarioL = salarioB * 1.05
			salarioL = salarioL * 1.11

			escreva ("Seu salário com desconto do INSS e IR fica: R$", salarioL, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 103; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */