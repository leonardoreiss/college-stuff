programa
{
	inclua biblioteca Texto --> txt
	
	/*
	Verificar se um numero informado tem o tamanho adequado de um CPF
	CPF: digitos 11 digitos / CNPJ: 14 digitos
	*/
	funcao inicio()
	{
		cadeia nome
		caracter tipo
		cadeia documento

		escreva("Digite seu nome: ")
		leia(nome)

		//escreva("Você é pessoa (F)isica ou (J)uridica? ")
		//leia(tipo)

		//forçar a entrada do LOOP
		tipo = 'X' //colocar uma informação errada 
		
		enquanto(tipo != 'F' e tipo != 'f' e tipo != 'J' e tipo != 'j')
		{
			escreva("Você é pessoa (F)isica ou (J)uridica? ")
			leia(tipo)
		}
		//validação do documento
		//forçar entrada
		documento = ""
		enquanto(((tipo == 'F' ou tipo == 'f') e txt.numero_caracteres(documento) != 11) ou
		        ((tipo == 'J' ou tipo == 'j') e txt.numero_caracteres(documento) != 14))
			{
			se(tipo == 'F' ou tipo == 'f')
				escreva("Informe o numero do Documento CPF: ")
		
			senao
				escreva("Informe o numero do Documento CNPJ: ")
			
			leia(documento)

			//dar mensagem de erro
			se((tipo == 'F' ou tipo == 'f') e txt.numero_caracteres(documento) != 11)
			{
				escreva("O CPF deve ter 11 digitos")	
			}

			se((tipo == 'F' ou tipo == 'f') e txt.numero_caracteres(documento) != 14)
			{
				escreva("O CNPJ deve ter 14 digitos")	
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1241; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */