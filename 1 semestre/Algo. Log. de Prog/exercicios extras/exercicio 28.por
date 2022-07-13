/*
 * 28)(SWITCH) Crie um programa em C ou portugol que 
 * solicite do usuário o valor de um produto e o tipo 
 * do cliente, sendo “E-Estudante”, “A-Assalariado” ou 
 * “P-aPosentado”. Apresente o valor a ser pago pelo produto 
 * oferecendo os seguintes descontos: 15% para Estudantes, 
 * 10 % para Assalariados e 25% para Aposentados. Se o tipo do 
 * cliente não for nenhum desses, nenhum desconto deverá ser aplicado. 
 * Como complemento, você pode, em casa, resolver o mesmo 
 * problema usando somente if’s.
 */

programa
{
	real pdt
	caracter clt
	
	funcao inicio()
	{
		escreva("Valor do produto: R$")
		leia(pdt)
		escreva("Tipos de Clientes: [E]studante, [A]ssalariado. a[P]osentado\n")
		escreva("Qual deles é você ?: ")
		leia(clt)

		escolha(clt)
		{
			caso 'E': 
			caso 'e':
				escreva("Desconto de 15%\n")
				pdt = pdt - (pdt * 0.15)
				escreva("Valor com desconto: R$", pdt)
				pare
			caso 'A': 
			caso 'a':
				escreva("Desconto de 10%\n")
				pdt = pdt - (pdt * 0.10)
				escreva("Valor com desconto: R$", pdt)
				pare
			caso 'P': 
			caso 'p':
				escreva("Desconto de 25%\n")
				pdt = pdt - (pdt * 0.25)
				escreva("Valor com desconto: R$", pdt)
				pare
			caso contrario:
				escreva("Sem desconto. Total: R$", pdt)
		}


		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 614; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */