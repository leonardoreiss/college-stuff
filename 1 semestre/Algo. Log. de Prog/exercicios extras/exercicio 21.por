/*
 * 21)(IF/OPERADOR LÓGICO) Faça um programa que informe em qual faixa de valores a informação 
 * 	 se encaixa:
 *		De 0 a 10 (faixa 1)
 *		De 15 a 25 (faixa 2)
 *		De 25 a 40 (faixa 3)
 *	Qualquer coisa que não se enquadre nestas faixas informe que o 
 *	valor não possui faixa definida
 */

programa
{
	inteiro num
	
	funcao inicio()
	{
		escreva("Numero que se destiunará a faixa: ")
		leia(num)
		
		se(num >= 0 e num <= 10)
		{
		escreva("Pertence a faixa 1!")
		}
		
		se(num >= 15 e num <= 25)
		{
		escreva("Pertence a faixa 2!")
		}

		se(num >= 26 e num <= 40)
		{
		escreva("Pertence a faixa 3!")
		
		}senao
		{
			escreva("Não pertence a nenhuma faixa!")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 676; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */