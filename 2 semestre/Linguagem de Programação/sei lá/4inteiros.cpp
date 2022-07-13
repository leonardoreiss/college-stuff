#include <iostream>

using namespace std;

int main (int a, int b, int c, int d)
{
    a = 2;
    b = 4;
    c = 5;
    d = 6;

    int soma = a + b + c + d;
    int media = soma / 4;

    cout << "A soma e: " << soma << " e a media e: " << media;

    return 0;
}