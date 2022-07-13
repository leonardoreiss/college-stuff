
/*
 * 14)(IF) Faça um programa que solicite do usuário seu salário, 
 * e aplique um aumento de 10 % para esse salário somente se for < 2000. 
 * Ao final do programa apresente o valor do salário antigo e do novo salário.
 */
programa
{
	real sal, ct
	
	funcao inicio()
	{
		escreva("Qual é o seu salario?: ")
		leia(sal)
		
		se(sal < 2000)
		{
			ct = sal * 0.10
			
			sal = ct + sal
		}
		escreva("Seu salário é: ", sal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 252; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */