/*
 * 29)(SWITCH) Em uma loja o vendedor possui 3 opções de desconto e comissão. 
 * Solicite do vendedor o tipo de desconto desejado e o valor total da venda. 
 * Ao final apresente o valor da venda com desconto e de sua comissão
 * 
 * 1 – Desconto:20%, comissão:6%
 * 2 – Desconto:22%, comissão:4%
 * 3 – Desconto:24%, comissão:2%
 * Outros: 
 * Desconto 18%, comissão 8%
 */

programa
{
	real vTotal
	caracter a
	real desc, comi
	
	funcao inicio()
	{
		escreva("Valor total de vendas: R$")
		leia(vTotal)

		escreva("Tipo de desconto desejado: [1], [2] ou [3]\n")
		escreva("1 – Desconto:20%, comissão:6%\n",
			   "2 – Desconto:22%, comissão:4%\n",
		        "3 – Desconto:24%, comissão:2%\n")
		leia(a)

		escreva("\n--------------------------------\n")

		escolha(a)
		{
			caso '1': 
				escreva("Desconto:20%, comissão:6%\n")
				desc = vTotal - (vTotal * 0.20)
				comi = vTotal * 0.06
				escreva("Total do produto com desconto: R$", desc, "\n")
				escreva("Total da comição: R$", comi, "\n")
				escreva("total a pagar: R$", desc + comi)
				pare
				
			caso '2': 
				escreva("Desconto:23%, comissão:4%\n")
				desc = vTotal - (vTotal * 0.23)
				comi = vTotal * 0.04
				escreva("Total do produto com desconto: R$", desc, "\n")
				escreva("Total da comição: R$", comi, "\n")
				escreva("total a pagar: R$", desc + comi)
				pare
				
			caso '3': 
				escreva("Desconto:24%, comissão:2%\n")
				desc = vTotal - (vTotal * 0.24)
				comi = vTotal * 0.02
				escreva("Total do produto com desconto: R$", desc, "\n")
				escreva("Total da comição: R$", comi, "\n")
				escreva("total a pagar: R$", desc + comi)
				pare			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1475; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */