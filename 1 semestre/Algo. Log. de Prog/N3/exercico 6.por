/*
 * Ler um vetor W de 1000 elementos, depois ler um valor V. 
 * Contar e escrever quantas vezes o valor V ocorre no vetor W 
 * e escrever também em que posições (índices) do vetor W o valor V 
 * aparece. Caso o valor V não ocorra nenhuma vez no vetor W, escrever 
 * uma mensagem informando isto.
 */

programa
{
    inclua biblioteca Texto -->txt
    inclua biblioteca Util -->ut

    funcao inicio()
    {
        inteiro W[1000]
        inteiro V = 0
        inteiro qtd=0 
        inteiro indice[1000]

        para(inteiro cont=0; cont <1000; cont++)
        {
            W[cont] = ut.sorteia(0, 10)
        }
        faca
        {
            escreva("O que vc quer procurar?: ")
            leia(V)
        }enquanto(V < 0 ou V > 10)

        para(inteiro ct=0; ct <1000; ct++)
        {
            se(W[ct] == V)
            {
                 qtd ++
                 indice[ct] = ct
            }
        }

        		 se(qtd != 0)
        		 {
                	escreva( V ," aparece ",qtd,"x nos indices: ")
        		 }senao
        		 	{
        		 		escreva( V ," não aparece nenhuma vez!")
            		}
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1109; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */