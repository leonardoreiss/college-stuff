programa
{
	
	funcao inicio()
	{
		inteiro mes
		caracter estado

		escreva("Digite o mes: ")
		leia(mes)

		/*
		 * regras para usar o comando escolha..caso
		 * 1) a variavel em evidencia deve ser inteira ou caracteres
		 * 2) todas as operações devem ser de igualdade
		 * 3) Não é permitido o uso de operadores logicos
		 */

		escolha(mes)
		{
		caso 1:
			escreva("\nJaneiro\n")
			pare
		caso 2:
			escreva("\nFevereiro\n")
			pare
		caso 3:
			escreva("\nMarço\n")
			pare
		caso contrario: //nenhuma das operações anteriores (opcional)
			escreva("\nMês invalido...\n")
		}
		
		escreva ("Digite A para aberto ou F para fechado: ")
		leia(estado)

/*		escolha (estado)
		{
			caso 'A':
			caso 'a':
				escreva("Você escolheu aberto...")
				pare
			caso 'F':
			caso 'f':
				escreva("você escolheu fechado...")
				pare
			caso contrario:
			escreva("Você não escolheu certo...")
		}
*/
		//com se
		se(estado == 'A' ou estado == 'a')
		{
			escreva("Você escolheu aberto...")
		}
		senao 
		{
			se(estado == 'F' ou estado == 'f')
			{
				escreva("Você escolheu fechado")	
			}
			senao
			{
				escreva("Você não escolheu certo...")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 902; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */