/*
 * 19)Crie um programa para resolver a equação do 2º grau utilizando a formula de Baskara. 
 * O usuário deverá informar A, B e C e o programa deve informar se é uma equação incompleta 
 * ou se não existem raízes ou existindo raízes informe-as.
 */

programa
{
	inclua biblioteca Matematica --> mat
	
	real a, b, c, x1, x2, delta
	
	funcao inicio()
	{
		escreva("Valor de A: ")
		leia(a)
		escreva("Valor de B: ")
		leia(b)
		escreva("Valor de C: ")
		leia(c)

		se (a == 0 ou b == 0 ou c ==0)
		{
			escreva("Equação incompleta!")	
		}
		
		delta = (b * b) - (4 * a * c)
		
		se(delta < 0)
		{
			escreva("Não existe raizes!")
		}senao{
		
			x1 = (-b + (mat.raiz(delta, 2.0))) / (2 * a)
			x2 = (-b - (mat.raiz(delta, 2.0))) / (2 * a)

			escreva("Valor de X1 é:", x1, "\n")
			escreva("Valor de X2 é:", x2, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 649; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */