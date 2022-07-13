/*
    Dado um numero inteiro n >= 0, encontre numeros inteiros a >= 0 e b >= 0 tais que 3a + 5b = n

    Input
        Um inteiro n (0 <= n <= 10^9)
    Output
        Imprima em uma  ́unica linha a e b. Caso não existam inteiros com essa propriedade, imprima −1 −1.
*/

#include <iostream>

using namespace std;

void c_(int n, int a, int b)
{
    if(a > n && b > n)
    {
        cout << -1 << " " << -1;
        return;
    }
        if ((3*a + 5*b) == n) //!Quando a Formula esta correta
        {
            cout <<  a << " " << b;
            return;
            
        }else
        {
            if (b <= n)
            {
                c_(n, a, ++b);

            }else
                {
                    c_(n, ++a, 0);
                }
        }
}
int main()
{
    int n;
    cin >> n;
    c_(n, 0, 0);
}