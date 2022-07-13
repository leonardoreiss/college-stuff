/*
    Neste exercício, você vai escrever uma função para fatorar números
inteiros positivos. Suponha que n ≥ 2 é um inteiro. Como é bem sabido, n
possui uma decomposição única (a menos da ordem) em fatores primos. Por
exemplo, 60 = 2 * 2 * 3 * 5. O tamanho de tal decomposição é o número de primos
que nela ocorre contando a multiplicidade. Assim, o tamanho da decomposição
de 60 é 4. Não é difícil estabelecer que o tamanho da fatoração em primos de
n é ≤ [lg n]. Lembre-se que para cada n ≥ 1, [lg n] é o maior inteiro k tal que 2^k ≤ n.
    Escreva uma função que recebe n : int com n ≥ 2, e um vetor de int’s p
de comprimento maior ou igual a [lg n] + 1 e devolve em p a decomposição em
fatores em primos de n, isto é, após a chamada da função o vetor p satisfaz:
    • p[0], p[1], . . . , p[k] são primos,
    • n = p[0] · p[1] · · · · · p[k],
    • p[0] ≤ p[1] ≤ p[2] ≤ · · · ≤ p[k] e p[k + 1] = 0
para algum inteiro k ≥ 0. Note que p[k + 1] = 0 serve para indicar que a
decomposição em primos tem seu último elemento na posição k. Assim, por
exemplo, se n = 60, então a sua função deve devolver um vetor p tal que
p = (2, 2, 3, 5, 0).
*/
#include <iostream>
#include <string>
#include <math.h>

using namespace std;

int* fat(int n, int p[], int k = 0, int d = 2)
{
    if (n == 1)
    {
        p[k] = 0;

        return p;
    }

    int mod = n % d;
    int ans = n / d;

    if(mod == 0)
    {
        p[k] = d;

        fat(ans, p, k + 1, d);
    }else
        {
          fat(n, p, k, d + 1);
        }
}

int main()
{
    int n = 600;
    int k = round(log(n));
    int p[k];
    
    fat(n,p);

    for(int i = 0; i <= k; i++)
    {
        cout << p[i] << '\n';
        if(p[i] == 0)
        {
          break;
        }
    }
}