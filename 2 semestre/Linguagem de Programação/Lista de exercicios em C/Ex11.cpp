/*
    11)	(ADS-IO) Faça um algoritmo que leia dois números reais e
     imprima a soma e a média aritmética desses números.
*/

#include <iostream>

using namespace std;

int main (float r1, float r2)
{
    cout << "Numero real 1: ";
    cin >> r1;
    cout << "Numero real 2: ";
    cin >> r2;

    float soma;
    soma = r1 + r2;

    float media;
    media = soma / 2;

    cout << "A soma dos dois numeros: " << soma << " e a media dos dois numeros: " << media;

    return 0;
}