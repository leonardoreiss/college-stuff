/*
 * 33)(IF) Solicitar do usuário o tamanho dos lados de um triangulo, 
 * informar se ele é isósceles, equilátero, escaleno ou não é um triangulo. 
 * Crie o programa.
 * Equilátero = todos os lados são iguais
 * Isósceles = 2 lados iguais e 1 diferente
 * Escaleno = 3 lados diferentes
 *DICA: Para ser um triangulo = cada lado é menor do que a soma dos outros 2 lados
 */


programa
{
	inteiro a, b, c
	funcao inicio()
	{
		escreva("lado A do triângulo: ")
		leia(a)
		escreva("lado B do triângulo: ")
		leia(b)
		escreva("lado C do triângulo: ")
		leia(c)

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
 * @POSICAO-CURSOR = 894; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */