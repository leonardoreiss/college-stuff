programa
{
	inclua biblioteca Texto --> txt
	
	funcao inicio()
	{
		/*
		 * será mostrado diversas funções do texto
		 * - caixa_alta()
		 * - caixa_baixa()
		 * - numero_caracteres()
		 * - extrair_subtexto()
		 * - posicao_texto()
		 */
		
		cadeia frase, aux
		caracter letra
		
		escreva("Digite uma frase: ")
		leia(frase)

 		//torna tudo MAIUSCULO
 		aux = txt.caixa_alta(frase)
 		escreva("\nMaiúsculo: ", aux)
 		
  		//torna tudo MINÚSCULO
 		aux = txt.caixa_baixa(frase)
 		escreva("\nMinusculo: ", aux)

   		//quantidade de caracteres
 		aux = txt.caixa_baixa(frase)
 		escreva("\nA frase: ", frase, " possui ", 
 			     txt.numero_caracteres(frase), " letras")

 		//obtem um caractere a partir de um texto
 		//a posição de cada letra sempre começa com ZERO 
 		aux = txt.obter_caracter(frase, 5)
 		escreva("\nTexto existente entre 6° posição e 11° posição: ", aux)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 818; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */