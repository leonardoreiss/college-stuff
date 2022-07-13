/*
 * 15)(IF) O algoritmo abaixo deve ler o salário bruto e calcular o salário líquido. 
 * Neste exemplo, o salário líquido será o salário bruto menos os descontos de INSS e IR, 
 * calculados segundo as seguintes regras: caso o salário seja menor que R$ 1.500,00 não devemos 
 * descontar IR e descontaremos 8% de INSS; para salários a partir de R$ 1.500,00 descontaremos 5% 
 * de IR e 11% de INSS. Ao final deve ser exibido o novo salário e cada um de seus descontos.
 */

programa
{
	real salB, salL
	real inss, ir
	
	funcao inicio()
	{
		escreva("Qual é o seu salário Bruto ?: R$")
		leia(salB)

		se (salB < 1500)
		{
			 inss = salB * 0.08
			 salL = salB - inss
			 
			 escreva("Salário Bruto total: R$", salB, "\n")
			 escreva("Descontos: \n")
			 escreva("\t INSS: R$", inss)
			 escreva("\n-----------------------------------\n")
			 escreva("Salário liquido total: R$", salL)
			 
		}senao{
		 	inss = salB * 0.11
		 	ir = salB * 0.05
		 	salL = salB - (ir + inss)

		 	 escreva("Salário Bruto total: R$", salB, "\n")
			 escreva("Descontos: \n")
			 escreva("\t INSS: R$", inss, "\n")
			 escreva("\t IR: R$", ir)
			 escreva("\n-----------------------------------\n")
			 escreva("Salário liquido total: R$", salL)
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1104; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */