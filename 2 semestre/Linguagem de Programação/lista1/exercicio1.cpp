/* Exercício 1. Escreva uma função que lê um int n > 0, uma sequência de
*   n ints, e um int k e devolve a soma dos números desta sequência que são
*   maiores que k.
*/

#include <iostream>

using namespace std;

int main()
{
    int n = 2;
    int v[] = {10, 14, 6, 7, 52};
    int k = 12;


    cout << "Digite o segundo numero: ";
    int y;
    cin >> y;
    int z = n >= y ? n : y;
    cout << "Um maior é " << z << "\n";
}