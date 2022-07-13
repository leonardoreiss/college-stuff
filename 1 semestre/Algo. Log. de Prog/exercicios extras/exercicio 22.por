/*
 * 22) (IF/OPERADOR LÓGICO) Solicitar do usuário uma determinada idade de um nadador. 
 * Baseado nesta idade indique qual a categoria ao qual ele pertente:
	•	Infantil A 5 – 7 anos;
	•	Infantil B 8 – 10 anos;
	•	Juvenil A 11 – 13 anos;
	•	Juvenil B 14 – 17 anos;
	•	Adulto 18 – 60 anos;
	•	Senior Acima de 60 anos
	Resolva esse problema de duas maneiras, uma utilizando exclusivamente SE´s 
	encadeados e outra usando SE simples
 */
programa
{
	inteiro idade
	
	funcao inicio()
	{
		escreva("Idade: ")
		leia(idade)
		
		se(idade >= 5 e idade <= 7)
		{
		escreva("Infantil A")	
		}
		senao se (idade >= 8 e idade <= 10)
		{
			escreva("Infantil B")
		}	
		senao se (idade >= 11 e idade <= 13)
		{
			escreva("Juvenil A")
		}
		senao se (idade >= 14 e idade <= 17)
		{
			escreva("Juvenil B")
		}
		senao se (idade >= 18 e idade <= 60)
		{
			escreva("Adulto")
		}
		senao se (idade > 60)
		{
			escreva("Senior")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 925; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */