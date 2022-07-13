/*
 * 39)(STRING) Crie um programa em C que solicite 
 * do usuário o nome, idade e sexo, após cada conjunto 
 * de dados solicitado, pergunte para o usuário se ele 
 * quer digitar mais (use while), se sim repita a operação, 
 * se não, apresente quantas pessoas são do sexo masculino e 
 * quantas pessoas são do sexo feminino.
 * 
 * OBS: validar o sexo para aceitar “MASC” ou “FEM” (use do..while)
 */

programa
{
	cadeia nome
	caracter sexo
	inteiro idade
	caracter esc
	inteiro mas = 0, fem = 0
	
	funcao inicio()
	{
		faca{
			escreva("\nSeu nome: ")
			leia(nome)
			escreva("Sua idade: ")
			leia(idade)
			escreva("Sexo [M] ou [F]: ")
			leia(sexo)

			se(sexo == 'M' ou sexo == 'm')
			{
				mas++
			}
			senao se(sexo == 'F' ou sexo == 'f')
			{
				fem++
			}
			senao
			{
				escreva("\nSexo não encontrado!\n")
			}
	
			escreva("Deseja adicionar outra pessoa?[S][N]: ")
			leia(esc)

			
		}enquanto(esc == 's' ou esc == 'S')

		escreva("\n------------------------------\n")
		escreva("A quantidade de mulheres são: ", fem, "\n")
		escreva("A quantidade de homens são: ", mas, "\n")	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 550; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */