/*
 * 18)Solicitar do usuário o tempo de uma viagem e a velocidade do veículo. 
 * Calcular o total de quilômetros rodados. Verificar, caso já tenha rodado mais do que 50km. 
 * exibir a mensagem “Você já está na metade do caminho”, 
 * caso contrário exiba “Ainda tem chão pra rodar!!”.
 */

programa
{
	real tViagem, velo, km
	
	funcao inicio()
	{
		escreva("Tempo da viagem até agr em horas: ")
		leia(tViagem)
		escreva("Velocidade do veiculo em Km/h: ")
		leia(velo)

		km = tViagem * velo

		se(km < 50)
		{
			escreva("Ainda tem chão pra rodar!!")
		}senao{
			escreva("Você já está na metade do caminho")
		}

		

		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 390; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */