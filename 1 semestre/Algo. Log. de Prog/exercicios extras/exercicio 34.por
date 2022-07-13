/*
 * 34)(IF) Solicite do usuário a quantidade de maças, 
 * peras e bananas que ele comprou. 
 * Você terá que perguntar também o preço de cada uma das frutas. 
 * Informe quanto o usuário gastou na quitanda.  
 * Neste momento solicite do usuário quanto ele está 
 * dando para pagamento e forneça o valor do troco. Caso o valor dado 
 * seja insuficiente, apresente uma mensagem ao usuário.
 */

programa
{
	inteiro peira, maca, banana, vlrP, vlrM, vlrB
	inteiro totalP, totalM, totalB
	inteiro total, rcb, troco
	funcao inicio()
	{
		escreva("Quantidade de maças: ")
		leia(maca)
		escreva("Valor das maçãs: R$")
		leia(vlrM)
		escreva("Quantidade de peras: ")
		leia(peira)
		escreva("Valor das peiras: R$")
		leia(vlrP)
		escreva("Quantidade de bananas: ")
		leia(banana)
		escreva("Valor das bananas: R$")
		leia(vlrB)

		totalP = peira * vlrP
		totalM = maca * vlrM
		totalB = banana * vlrB
		
		
		total = totalM + totalP + totalB 
		
		escreva("\n------------------------------\n")
		
		escreva("Total das compras é de: R$", total, "\n")
		escreva("Valor que está sendo entregue: R$")
		leia(rcb)

		troco = rcb - total 

		se(troco < 0)
		{
			escreva("\nDinheiro não suficiente!")
		}
		senao se (troco > 0)
		{
			escreva("\nSeu troco: R$", troco)
		}
		senao
		{
			escreva("\nvalor exato, tenha um bom dia!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1327; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */