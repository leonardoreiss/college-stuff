/*
 * 20)(IF)Solicitar do usuário o salário atual, e a quantidade de filhos. Após aplicar um 
 * reajuste seguindo a seguinte regra: Apresente o total de filhos e o novo salario
 *		a)	Quantidade de filhos < 3, reajuste de 5%
 *		b)	Para todos os outros casos, reajuste de 15%
 */

programa
{
	real sal, nSal, desc
	inteiro qtdF
	
	funcao inicio()
	{
		escreva("salário atual: R$")
		leia(sal)
		escreva("Quantidade de filhos: ")
		leia(qtdF)

		escreva("\n---------------------------\n\n")
		escreva("Salário antigo: R$",sal, "\n")
		escreva("Sua quantidade de filhos: ", qtdF, "\n")
		
		se(qtdF < 3)
		{
			desc = sal * 0.05
			nSal = desc + sal
			escreva("Você tem o beneficio de 5%\n")
			escreva("Salário reajustado para: R$", nSal)	
		}senao{
			desc = sal * 0.15
			nSal = desc + sal
			escreva("Você tem o beneficio de 15%\n")
			escreva("Salário reajustado para: R$", nSal, "\n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 494; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */