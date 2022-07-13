programa
{
	inclua biblioteca Texto --> txt
	
	funcao inicio()
	{
		cadeia nome, sexo, email

		escreva("Seu nome por favor: ")
		leia(nome)

		escreva("\nSeu e-mail por favor: ")
		leia(email)

		escreva("\nSexo, M ou F: ")
		leia(sexo)

		//validações
		se(txt.numero_caracteres(nome) < 3)
		{
			escreva("\nNome deve ter pelo menos 3 caracteres")
		}
		senao
		{
			//convertendo para maiusculo
			sexo = txt.caixa_alta(sexo)
			
			se(sexo != "M" e sexo != "F")
			{
				escreva("\nO sexo deve ser M ou F")
			}
			senao
			{
				se(txt.numero_caracteres(email) < 10 ou 
				   txt.posicao_texto("@", email, 0) == -1)
				   {
				   	escreva("\nE-mail não contem @ ou tem menos de 10 letras")
				   }
				   senao
				   {
				   	escreva("\nTodos os dados estão corretos")
				   }
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 802; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */