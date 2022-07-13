/*
 * 11) Faça um algoritmo que leia dois números reais e 
 * imprima a soma e a média aritmética desses números.
 */

programa
{
	inteiro n1, n2, soma
	inteiro media
	
	funcao inicio()
	{
		escreva("Qual é o primeiro numero?: ")
		leia(n1)
		escreva("Qual é o segundo numero?: ")
		leia(n2)

		soma = n1 + n2
		media = soma / 2

		escreva ("A soma dos dois numeros é: ", soma ," e a média dos números é ", media)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 385; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */