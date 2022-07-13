#include <iostream>

using namespace std;

/*
    n = Qtd de semáforos
    D = tamanho da estrada
    d = semáforos
    e = condição dos semáforos - verde = 0 ->  (o semáforo está aberto)
                               - Amarelo = 1 ->  (o semáforo está aberto)
                               - Vermelho = 2 ->  (o semáforo está fechado e nenhum carro pode passar por ele)
    !Inputs
    n D
    d0 d1.... 
    e0 e1....

    !Outputs
    Imprima em uma  ́unica linha, o tempo que o carro vai levar para percorrer a estrada.
*/

void p_sinal(int e[], int n)
{
    for(int c = 0; c < n; c++)
    {
        e[c]+=1;
    }
}

int sinal(int n, int D, int e[], int d[])
{
    int temp = 0;

    for(int km = 1; km <= D; km++)
    {
        for(int km_p = 0; km_p <= n; km_p++)
        {
            if(km == d[km_p])
            {
                if(e[km_p] == 0 || e[km_p] == 1)
                {

                    p_sinal(e, n);
                }
                else
                {
                    temp +=1;
                    p_sinal(e, n);
                }
            }
        }
        temp +=1;
    }
    return temp;
}

int main()
{
    int *vetor = NULL; // vetor que será alocado o espaço
    vetor = new int[2];
    for(int i = 0; i <= 1; i++)
    {
        cin >> vetor[i]; 
    }
    int n = vetor[0];
    int D = vetor[1];

    delete [] vetor;  // Libera o espaço alocado para o vetor

    int *d = NULL; // vetor que será alocado o espaço
    d = new int[n];
    for(int i = 0; i <= n-1; i++)
    {
        cin >> d[i]; 
    }

    int *e = NULL; // vetor que será alocado o espaço
    e = new int[n];
    for(int i = 0; i <= n-1; i++)
    {
        cin >> e[i];
    }
    cout << sinal(n, D, e, d);

    delete [] d;  // Libera o espaço alocado para o vetor
    delete [] e;  // Libera o espaço alocado para o vetor
}