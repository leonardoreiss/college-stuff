programa
{
	//comentários de uma unica linha
	/*  
	   comentarios de varias linhas 
	*/ 

	/*
	Este programa serve para receber o nome e idade de usuario e 
	apresentar uma mensagem de boas vindas.
	*/
	funcao inicio()
	{
		//o progrma começa aqui

		//definição das variaveis 
		cadeia nome
		inteiro idade, diferenca

		//entrada de dados
		escreva ("Digite seu nome: ")
		leia(nome) 
		escreva ("Digite sua idade: ")
		leia(idade)

		//apresentação
		escreva("Seja bem vindo ", nome, " hoje você esta com ", 
			   idade, " anos de idade")

		//calcular quantos anos faltam para ser maior de idade
		diferenca = 18 - idade

		//informar a diferenca para o usuario 
		//  o caractere '/n' faz com que uma seja pulada
		escreva("/nFaltam ", diferenca, " anos para ser maior de idade")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 439; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {diferenca, 18, 17, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */