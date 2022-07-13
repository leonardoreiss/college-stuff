programa
{
	inclua biblioteca Tipos --> tp
		
	funcao inicio()
	{
		cadeia nome
		caracter sexo
		inteiro cont, contM, contF, contI
		caracter  perg
		real porF, porM, porI

	     perg = 'S'

	     cont = 0
	     contM = 0
	     contF = 0
	     contI = 0
		
		enquanto(perg == 'S' ou perg == 's')
		{ 
			escreva("Nome: ")
			leia(nome)

			sexo = 'K'
				
			enquanto(sexo != 'M' e sexo != 'm' e sexo != 'F' e 
				    sexo != 'f' e sexo != 'I' e sexo != 'i')
			{
				escreva("\nSexo: [M]asculino, [F]eminino ou [I]nvalido: ")
				leia(sexo)
				
				se(sexo == 'm' ou sexo == 'M')
					contM ++
						
				se(sexo == 'F' ou sexo == 'f')
					contF ++

				se(sexo == 'I' ou sexo == 'i')
					contI ++
					
					
				cont ++
				escreva("\ndeseja escrever mais uma pessoa? [S] ou [N]: ")
				 leia(perg)

			}
			
			se(perg == 'N' ou perg == 'n')
			{
				escreva("\nTotal de pessoas cadastradas são: ", cont)
				escreva("\nTotal Masculino são: ", contM)
				escreva("\nTotal Feminino: ", contF)
				escreva("\nTotal Invalido: ", contI)

				porF = contF * ( 100 / tp.inteiro_para_real(cont))
				porM = contM * (100 / tp.inteiro_para_real(cont))
				porI = contI * (100 / tp.inteiro_para_real(cont))

				escreva("\nPorcentagem de Homens: ", porM, "%")
				escreva("\nPorcentagem de Mulheres: ", porF, "%")
				escreva("\nPorcentagem de Invalidos: ", porI, "%")
				
			}
		}
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */