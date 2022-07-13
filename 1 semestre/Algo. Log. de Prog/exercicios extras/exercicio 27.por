/*
 * 27)(SWITCH/Escolha) Crie um programa que solicite do usuário um mês qualquer, 
 * 		informe quantos dias esse mês possui (28 dias fevereiro)
 *		a.	Usando apenas instruções if..else/se..senao
 *		b.	Usando switch/escolha sem qualquer break/pare (fica como desafio!!!, fazer em casa)
 *		c.	Usando switch/escolha com break/pare
 *
 */


programa
{
	inteiro mes
	
	funcao inicio()
	{
		escreva("Numero do mês que quer saber o dia: ")
		leia(mes)
		
		escolha(mes)
		{
			caso 1:
				escreva("Mês de Janeiro: 31 dias")
				pare
			caso 2:
				escreva("Mês de Fevereiro: 28 dias")
				pare
			caso 3:
				escreva("Mês de Março: 31 dias")
				pare
			caso 4:
				escreva("Mês de Abril: 30 dias")
				pare
			caso 5:
				escreva("Mês de Maio: 31 dias")
				pare
			caso 6:
				escreva("Mês de Junho: 30 dias")
				pare
			caso 7:
				escreva("Mês de Julho: 31 dias")
				pare
			caso 8:
				escreva("Mês de Agosto: 31 dias")
				pare
			caso 9:
				escreva("Mês de Setembro: 30 dias")
				pare
			caso 10:
				escreva("Mês de Outubro: 31 dias")
				pare
			caso 11:
				escreva("Mês de Novembro: 30 dias")
				pare
			caso 12:
				escreva("Mês de Dezembro: 31 dias")
				pare
		}			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1180; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */