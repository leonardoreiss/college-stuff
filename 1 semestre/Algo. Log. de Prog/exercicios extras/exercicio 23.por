/*
 * 23)(IF) Solicitar do usuário o salário atual, e após aplicar um 
 * 	reajuste seguindo a seguinte regra: 
 *	a.	Salário < 500, reajuste de 15%
 *	b.	Salario >= 500, mas <= 1000, reajuste de 10%
 *	c.	Salário > 1000, reajuste de 5%
 *
 */

programa
{
	real sal, nsal, reaj
	
	funcao inicio()
	{
		escreva("Salário: ")
		leia(sal)

		se(sal < 500)
		{
			escreva("Reajuste de 15%\n")

			nsal = sal + (sal * 0.15)

			escreva("salário reajustado: ", nsal)
		}
		
		se(sal >= 500 e sal <= 1000)
		{
			escreva("Reajuste de 10%\n")

			nsal = sal + (sal * 0.10)


			escreva("salário reajustado: ", nsal)
		}
		
		se(sal > 1000)
		{
			escreva("Reajuste de 5%\n")

			nsal = sal + (sal* 0.05)

			escreva("salário reajustado: ", nsal)
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 746; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */