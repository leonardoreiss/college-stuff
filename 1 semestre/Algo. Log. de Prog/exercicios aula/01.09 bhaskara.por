programa
{

inclua biblioteca Matematica --> mat

real a, b, c, delta, x1, x2, b2

	funcao inicio()
	{
		escreva("Digite o valor de A: ")
		leia(a)
		escreva("Digite o valor de B: ")
		leia(b)
		escreva("Digite o valor de C: ")
		leia(c)


		se(a == 0)
		{
			escreva("Esta não é uma equação de segundo grau \n")	
		}
		senao 
		{
			se (b == 0 ou c == 0)
			{
			escreva("\nA equação é incompleta")
			}
			senao
			{
				escreva("\nA equação é completa")
			}
		}
		
		b2 = b * b

		delta = b2 - (4 * a * c)

		se (delta < 0)
			{
			escreva("\nNão existe raizes")
			}
		senao
			{
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
 * @POSICAO-CURSOR = 471; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */