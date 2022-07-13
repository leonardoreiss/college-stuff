/*
 * 35) (IF/LAÇO) Altere o programa anterior para que 
 * o mesmo aceite somente valores para cada lado do triangulo entre 0 e 10
 */
programa
{
	
inteiro a, b, c 

	funcao inicio()
	{
	
		faca
		{ 
			escreva("! Apenas valores de 0 a 10!\n")
			escreva("lado A do triângulo: ")
			leia(a)
			escreva("lado B do triângulo: ")
			leia(b)
			escreva("lado C do triângulo: ")
			leia(c)
		}enquanto(a < 0 ou a > 10 e b < 0 ou b > 10 e c < 0 ou c > 10)

		se(a > b + c ou b > a + c ou c > a + b)
		{
			escreva("Não é um triangulo")
		}
		senao se(a == 0 ou a == 0 ou b == 0)
		{
			escreva("Não é um triangulo")
		}
		senao se (a == b e a == c)
		{
			escreva("é um Triângulo equilátero") 
		}
		senao se(a == b ou a == c ou b == c)
		{
			escreva("é um Triângulo isósceles")
		}
		senao se(a != b ou a != c ou b != c)
		{
			escreva("é um Triângulo Escaleno")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 444; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */