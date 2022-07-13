/*
 * 40)(STRING) Crie um programa em C que solicite do usuário 
 * um texto com no máximo 60 caracteres. Solicite também quantas 
 * letras ele quer mostrar do texto e a partir de qual posição. 
 * Faça a apresentação desse trecho solicitado na ordem direta e na 
 * ordem indireta.
 */

programa
{
	inclua biblioteca Texto --> txt
	
	cadeia texto, cutTxt
	inteiro num, posi, cTexto

	
	funcao inicio()
	{
		faca
		{
			escreva("\n TEXTO MÁXIMO DE 60 CARACTERES!! \n")
			escreva("Digite o texto abaixo:\n")
			leia(texto)
			//CONTAGEM DE CARACTERES
			cTexto = txt.numero_caracteres(texto)
			escreva("A partir de qual posição mostrar o texto ?: ")
			leia(num)
			escreva("Quantas letras você quer mostrar do texto ?: ")
			leia(posi)
		}enquanto(cTexto >= 60)

		cutTxt = txt.extrair_subtexto(texto, num, posi)
		
		escreva("\n---------------------------------\n")
		escreva("\t", cutTxt)
		escreva("\n---------------------------------\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 891; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */